module ethernet_fcs_checker (
    input  wire        clk,
    input  wire        rst,

    input  wire [7:0]  data_in,
    input  wire        in_valid,
    input  wire        in_sop,
    input  wire        in_eop,
    // fifo interface
    output wire        ready,
    // output signals
    output reg         fcs_valid,
    output reg         fcs_error,
    output reg  [15:0] frame_len
);
    wire fifo_full;
    wire fifo_empty;
    wire [9:0] fifo_rd_data;
    wire fifo_rd_en;
    assign ready = !fifo_full;
    wire fifo_wr_en = in_valid && !fifo_full;
    wire [9:0] fifo_wr_data = {in_sop, in_eop, data_in};
    async_fifo #(
        .DATA_WIDTH(10),
        .DEPTH(16),
        .ADDR_WIDTH(4)
    ) fifo_inst (
        .clk(clk),
        .rst(rst),
        .wr_en(fifo_wr_en),
        .wr_data(fifo_wr_data),
        .full(fifo_full),
        .rd_en(fifo_rd_en),
        .rd_data(fifo_rd_data),
        .empty(fifo_empty)
    );
    wire checker_in_sop = fifo_rd_data[9];
    wire checker_in_eop = fifo_rd_data[8];
    wire [7:0] checker_in_data = fifo_rd_data[7:0];
    wire checker_in_valid = !fifo_empty;
    assign fifo_rd_en = !fifo_empty;


    localparam [31:0] magic_residue = 32'hC704DD7B;

    reg [31:0] crc_reg;
    reg [15:0] len_cnt;

    function [31:0] next_crc32;
        input [7:0]  d;
        input [31:0] c;
        reg   [31:0] n;
        begin
            n[0] = c[24] ^ c[30] ^ d[1] ^ d[7];
            n[1] = c[24] ^ c[25] ^ c[30] ^ c[31] ^ d[0] ^ d[1] ^ d[6] ^ d[7];
            n[2] = c[24] ^ c[25] ^ c[26] ^ c[30] ^ c[31] ^ d[0] ^ d[1] ^d[5] ^ d[6] ^ d[7];
            n[3] = c[25] ^ c[26] ^ c[27] ^ c[31] ^ d[0] ^ d[4] ^ d[5] ^ d[6];
            n[4] = c[24] ^ c[26] ^ c[27] ^ c[28] ^ c[30] ^ d[1] ^ d[3] ^d[4] ^ d[5] ^ d[7];
            n[5] = c[24] ^ c[25] ^ c[27] ^ c[28] ^ c[29] ^ c[30] ^ c[31]^ d[0] ^ d[1] ^ d[2] ^ d[3] ^ d[4] ^ d[6] ^ d[7];
            n[6] = c[25] ^ c[26] ^ c[28] ^ c[29] ^ c[30] ^ c[31] ^ d[0] ^ d[1] ^ d[2] ^ d[3] ^ d[5] ^ d[6];
            n[7] = c[24] ^ c[26] ^ c[27] ^ c[29] ^ c[31] ^ d[0] ^ d[2] ^d[4] ^ d[5] ^ d[7];
            n[8] = c[0] ^ c[24] ^ c[25] ^ c[27] ^ c[28] ^ d[3] ^ d[4] ^ d[6] ^ d[7];
            n[9] = c[1] ^ c[25] ^ c[26] ^ c[28] ^ c[29] ^ d[2] ^ d[3] ^ d[5] ^ d[6];
            n[10] = c[2] ^ c[24] ^ c[26] ^ c[27] ^ c[29] ^ d[2] ^ d[4] ^d[5] ^ d[7];
            n[11] = c[3] ^ c[24] ^ c[25] ^ c[27] ^ c[28] ^ d[3] ^ d[4] ^d[6] ^ d[7];
            n[12] = c[4] ^ c[24] ^ c[25] ^ c[26] ^ c[28] ^ c[29] ^ c[30]^ d[1] ^ d[2] ^ d[3] ^ d[5] ^ d[6] ^ d[7];
            n[13] = c[5] ^ c[25] ^ c[26] ^ c[27] ^ c[29] ^ c[30] ^ c[31]^ d[0] ^ d[1] ^ d[2] ^ d[4] ^ d[5] ^ d[6];
            n[14] = c[6] ^ c[26] ^ c[27] ^ c[28] ^ c[30] ^ c[31] ^ d[0] ^ d[1] ^ d[3] ^ d[4] ^ d[5];
            n[15] = c[7] ^ c[27] ^ c[28] ^ c[29] ^ c[31] ^ d[0] ^ d[2] ^d[3] ^ d[4];
            n[16] = c[8] ^ c[24] ^ c[28] ^ c[29] ^ d[2] ^ d[3] ^ d[7];
            n[17] = c[9] ^ c[25] ^ c[29] ^ c[30] ^ d[1] ^ d[2] ^ d[6];
            n[18] = c[10] ^ c[26] ^ c[30] ^ c[31] ^ d[0] ^ d[1] ^ d[5];
            n[19] = c[11] ^ c[27] ^ c[31] ^ d[0] ^ d[4];
            n[20] = c[12] ^ c[28] ^ d[3];
            n[21] = c[13] ^ c[29] ^ d[2];
            n[22] = c[14] ^ c[24] ^ d[7];
            n[23] = c[15] ^ c[24] ^ c[25] ^ c[30] ^ d[1] ^ d[6] ^ d[7];
            n[24] = c[16] ^ c[25] ^ c[26] ^ c[31] ^ d[0] ^ d[5] ^ d[6];
            n[25] = c[17] ^ c[26] ^ c[27] ^ d[4] ^ d[5];
            n[26] = c[18] ^ c[24] ^ c[27] ^ c[28] ^ c[30] ^ d[1] ^ d[3] ^ d[4] ^ d[7];
            n[27] = c[19] ^ c[25] ^ c[28] ^ c[29] ^ c[31] ^ d[0] ^ d[2] ^ d[3] ^ d[6];
            n[28] = c[20] ^ c[26] ^ c[29] ^ c[30] ^ d[1] ^ d[2] ^ d[5];
            n[29] = c[21] ^ c[27] ^ c[30] ^ c[31] ^ d[0] ^ d[1] ^ d[4];
            n[30] = c[22] ^ c[28] ^ c[31] ^ d[0] ^ d[3];
            n[31] = c[23] ^ c[29] ^ d[2];
            next_crc32 = n;
        end
    endfunction

    wire [31:0] seed    = checker_in_sop ? 32'hFFFFFFFF : crc_reg;
    wire [31:0] crc_nxt = next_crc32(checker_in_data, seed);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            crc_reg   <= 32'hFFFFFFFF;
            len_cnt   <= 16'd0;
            fcs_valid <= 1'b0;
            fcs_error <= 1'b0;
            frame_len <= 16'd0;
        end else begin
            fcs_valid <= 1'b0;
            fcs_error <= 1'b0;

            if (checker_in_valid) begin
                crc_reg <= crc_nxt;
                len_cnt <= checker_in_sop ? 16'd1 : (len_cnt + 16'd1);

                if (checker_in_eop) begin
                    frame_len <= checker_in_sop ? 16'd1 : (len_cnt + 16'd1);
                    if (crc_nxt == magic_residue) begin
                        fcs_valid <= 1'b1;
                    end else begin
                        fcs_error <= 1'b1;
                    end
                end
            end
        end
    end

endmodule
