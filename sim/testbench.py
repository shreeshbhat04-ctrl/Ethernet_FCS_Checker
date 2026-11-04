import zlib
import cocotb
from cocotb.clock import Clock
from cocotb.triggers import RisingEdge, ClockCycles


def make_frame(payload: bytes) -> list:
    return list(payload + zlib.crc32(payload).to_bytes(4, "little"))


async def rst_dut(dut):
    dut.ena.value = 1
    dut.rst_n.value = 0
    dut.ui_in.value = 0
    dut.uio_in.value = 0
    await ClockCycles(dut.clk, 5)
    dut.rst_n.value = 1
    await RisingEdge(dut.clk)


async def send_frame_and_capture(dut, frame_bytes):
    """
    ui_in[7:0] = data_in, uio_in[0]=in_valid, [1]=in_sop, [2]=in_eop
    uo_out[0]  = fcs_valid (good frame), uo_out[1] = fcs_error (bad frame)
    Returns (fcs_valid, fcs_error) as seen in the result pulse.
    """
    fcs_valid_captured = 0
    fcs_error_captured = 0

    def sample():
        nonlocal fcs_valid_captured, fcs_error_captured
        uo = dut.uo_out.value.to_unsigned()
        if uo & 0b11:                       # either pulse counts as a result
            fcs_valid_captured = uo & 1
            fcs_error_captured = (uo >> 1) & 1

    for i, byte_val in enumerate(frame_bytes):
        is_sop = 1 if i == 0 else 0
        is_eop = 1 if i == len(frame_bytes) - 1 else 0
        dut.ui_in.value = byte_val
        dut.uio_in.value = 0x01 | (is_sop << 1) | (is_eop << 2)
        await RisingEdge(dut.clk)
        sample()

    dut.ui_in.value = 0
    dut.uio_in.value = 0

    for _ in range(5):                      # allow FIFO pipeline cycles to drain
        await RisingEdge(dut.clk)
        sample()

    return fcs_valid_captured, fcs_error_captured


@cocotb.test()
async def test_fcs_checker(dut):
    """Test 1: Valid packet passes CRC check."""
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())
    await rst_dut(dut)

    packet = make_frame(bytes(range(1, 13)))
    valid, error = await send_frame_and_capture(dut, packet)

    assert valid == 1 and error == 0, f"good frame: valid={valid}, error={error}"
    dut._log.info("[PASS] Valid frame passed CRC residue check.")


@cocotb.test()
async def test_corrupted_packet(dut):
    """Test 2: Corrupted payload byte triggers fcs_error."""
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())
    await rst_dut(dut)

    packet = make_frame(bytes(range(1, 13)))
    packet[0] ^= 0xFE                    

    valid, error = await send_frame_and_capture(dut, packet)

    assert error == 1, f"corrupted frame did not raise fcs_error (valid={valid}, error={error})"
    assert valid == 0, "corrupted frame wrongly raised fcs_valid"
    dut._log.info("[PASS] Corrupted packet correctly flagged with fcs_error = 1.")


@cocotb.test()
async def test_back_to_back_frames(dut):
    """Test 3: Back-to-back frames verify FIFO streaming and CRC re-seeding."""
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())
    await rst_dut(dut)

    # Frame 1
    packet1 = make_frame(bytes(range(1, 13)))
    valid1, error1 = await send_frame_and_capture(dut, packet1)
    assert valid1 == 1 and error1 == 0, f"Frame 1 failed: valid={valid1}, error={error1}"
    dut._log.info("[PASS] Frame 1 passed CRC check.")

    # Frame 2 immediately following
    packet2 = make_frame(bytes([0xDE, 0xAD, 0xBE, 0xEF, 0xCA, 0xFE]))
    valid2, error2 = await send_frame_and_capture(dut, packet2)
    assert valid2 == 1 and error2 == 0, f"Frame 2 failed: valid={valid2}, error={error2}"
    dut._log.info("[PASS] Frame 2 (back-to-back) passed CRC check.")



@cocotb.test()
async def test_back_to_back_frames(dut):
    cocotb.start_soon(Clock(dut.clk, 10, unit="ns").start())
    await rst_dut(dut)

    # Frame 1
    packet1 = make_frame(bytes(range(1, 13)))
    valid1, error1 = await send_frame_and_capture(dut, packet1)
    assert valid1 == 1 and error1 == 0, f"Frame 1 failed: valid={valid1}, error={error1}"
    dut._log.info("[PASS] Frame 1 passed CRC check.")

    # Frame 2 immediately following
    packet2 = make_frame(bytes([0xDE, 0xAD, 0xBE, 0xEF, 0xCA, 0xFE]))
    valid2, error2 = await send_frame_and_capture(dut, packet2)
    assert valid2 == 1 and error2 == 0, f"Frame 2 failed: valid={valid2}, error={error2}"
    dut._log.info("[PASS] Frame 2 (back-to-back) passed CRC check.")