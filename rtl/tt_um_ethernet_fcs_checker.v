`default_nettype none

module tt_um_ethernet_fcs_checker (
    input  wire [7:0] ui_in,    // Dedicated inputs: data_in[7:0]
    output wire [7:0] uo_out,   // Dedicated outputs: [0]=fcs_valid, [1]=fcs_error
    input  wire [7:0] uio_in,   // Bidirectional inputs: [0]=in_valid, [1]=in_sop, [2]=in_eop
    output wire [7:0] uio_out,  // Bidirectional outputs: [3]=ready
    output wire [7:0] uio_oe,   // Bidirectional output enables: [3]=1 (output), others=0
    input  wire       ena,      // Always 1 when powered
    input  wire       clk,      // System clock
    input  wire       rst_n     // Active-low reset
);

    wire        fcs_valid_w;
    wire        fcs_error_w;
    wire [15:0] frame_len_w;
    wire        ready_w;

    // Bidirectional pin configuration:
    assign uio_oe  = 8'b0000_1000;
    assign uio_out = {4'b0000, ready_w, 3'b000};

    // Output assignment
    assign uo_out[0]   = fcs_valid_w;
    assign uo_out[1]   = fcs_error_w;
    assign uo_out[7:2] = frame_len_w[5:0]; // Lower 6 bits of frame length

    // Instantiate your verified core
    ethernet_fcs_checker core_inst (
        .clk        (clk),
        .rst        (~rst_n),
        .data_in    (ui_in),
        .in_valid   (uio_in[0]),
        .in_sop     (uio_in[1]),
        .in_eop     (uio_in[2]),
        .ready      (ready_w),
        .fcs_valid  (fcs_valid_w),
        .fcs_error  (fcs_error_w),
        .frame_len  (frame_len_w)
    );

    
    wire _unused = &{ena, uio_in[7:3], frame_len_w[15:6], 1'b0};

endmodule