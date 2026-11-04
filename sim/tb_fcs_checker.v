`timescale 1ns/1ps

module tb_fcs_checker;
    reg        clk;
    reg        rst;
    reg  [7:0] data_in;
    reg        in_valid;
    reg        in_sop;
    reg        in_eop;
    wire       ready;
    wire       fcs_valid;
    wire       fcs_error;
    wire [15:0] frame_len;

    ethernet_fcs_checker dut (
        .clk       (clk),
        .rst       (rst),
        .data_in   (data_in),
        .in_valid  (in_valid),
        .in_sop    (in_sop),
        .in_eop    (in_eop),
        .ready     (ready),
        .fcs_valid (fcs_valid),
        .fcs_error (fcs_error),
        .frame_len (frame_len)
    );

    always #5 clk = ~clk;

    reg [7:0] test_data [0:7];
    integer i;

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, tb_fcs_checker);


        test_data[0] = 8'h01;
        test_data[1] = 8'h02;
        test_data[2] = 8'h03;
        test_data[3] = 8'h04;
        test_data[4] = 8'hCD;
        test_data[5] = 8'hFB;
        test_data[6] = 8'h3C;
        test_data[7] = 8'hB6;

        clk      = 0;
        rst      = 1;
        data_in  = 0;
        in_valid = 0;
        in_sop   = 0;
        in_eop   = 0;

        #20;
        rst      = 0;
        #10;

        $display("\n==========================================");
        $display("Testcase 1: Valid Frame Check");
        $display("==========================================");
        for (i = 0; i < 8; i = i + 1) begin
            @(posedge clk);
            data_in  <= test_data[i];
            in_valid <= 1'b1;
            in_sop   <= (i == 0);
            in_eop   <= (i == 7);
        end

        @(posedge clk);
        in_valid <= 1'b0;
        in_sop   <= 1'b0;
        in_eop   <= 1'b0;


        while (!fcs_valid && !fcs_error) begin
            @(posedge clk);
        end

        #1;
        $display("--> Final dut.crc_reg = 0x%08X (Target Residue: 0x%08X)", dut.crc_reg, dut.magic_residue);

        if (fcs_valid && !fcs_error && frame_len == 8) begin
            $display("[PASS] Testcase 1 PASSED: Valid frame matched magic residue. Length: %0d", frame_len);
        end else begin
            $display("[FAIL] Testcase 1 FAILED: fcs_valid=%b, fcs_error=%b, frame_len=%0d", fcs_valid, fcs_error, frame_len);
        end

        $display("\n==========================================");
        $display("Testcase 2: Corrupted Frame Check");
        $display("==========================================");
        repeat (3) @(posedge clk);

        for (i = 0; i < 8; i = i + 1) begin
            @(posedge clk);
            data_in  <= (i == 0) ? (test_data[i] ^ 8'hAA) : test_data[i];
            in_valid <= 1'b1;
            in_sop   <= (i == 0);
            in_eop   <= (i == 7);
        end

        @(posedge clk);
        in_valid <= 1'b0;
        in_sop   <= 1'b0;
        in_eop   <= 1'b0;

        // Wait for FIFO to drain and checker to complete
        while (!fcs_valid && !fcs_error) begin
            @(posedge clk);
        end

        #1;
        $display("--> Final dut.crc_reg = 0x%08X (Corrupted Residue)", dut.crc_reg);

        if (!fcs_valid && fcs_error) begin
            $display("[PASS] Testcase 2 PASSED: Corrupted frame correctly rejected (fcs_error=1, fcs_valid=0).");
        end else begin
            $display("[FAIL] Testcase 2 FAILED: Expected fcs_error=1, got fcs_valid=%b, fcs_error=%b", fcs_valid, fcs_error);
        end

        #30;
        $display("\nAll testcases completed.");
        $finish;
    end
endmodule
