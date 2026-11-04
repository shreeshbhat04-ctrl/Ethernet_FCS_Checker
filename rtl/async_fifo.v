module async_fifo #(
    parameter DATA_WIDTH = 10,
    parameter DEPTH      = 16,
    parameter ADDR_WIDTH = 4
)(
    input  wire                  clk,
    input  wire                  rst,

    // Write Port
    input  wire                  wr_en,
    input  wire [DATA_WIDTH-1:0] wr_data,
    output wire                  full,

    // Read Port
    input  wire                  rd_en,
    output wire [DATA_WIDTH-1:0] rd_data,
    output wire                  empty
);

    // 16-entry memory 
    reg [DATA_WIDTH-1:0] fifo_mem [0:DEPTH-1];

    reg [ADDR_WIDTH:0] wr_ptr;
    reg [ADDR_WIDTH:0] rd_ptr;

    // Status flgs
    assign empty = (wr_ptr == rd_ptr);
    assign full  = (wr_ptr[ADDR_WIDTH] != rd_ptr[ADDR_WIDTH]) &&
                   (wr_ptr[ADDR_WIDTH-1:0] == rd_ptr[ADDR_WIDTH-1:0]);

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            wr_ptr <= {(ADDR_WIDTH+1){1'b0}};
        end else if (wr_en && !full) begin
            fifo_mem[wr_ptr[ADDR_WIDTH-1:0]] <= wr_data;
            wr_ptr <= wr_ptr + 1'b1;
        end
    end

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            rd_ptr <= {(ADDR_WIDTH+1){1'b0}};
        end else if (rd_en && !empty) begin
            rd_ptr <= rd_ptr + 1'b1;
        end
    end
    assign rd_data = fifo_mem[rd_ptr[ADDR_WIDTH-1:0]];

endmodule



















// ref:
// module crc32_8bitmat(
//   input wire [7:0] data_in,
//   input wire [31:0] crc_in,
//   output wire [31:0] crc_out
// );
//     wire [7:0] d = data_in;
//     wire [31:0] c = crc_in;
//     wire [31:0] n;
//     assign crc_out = n;
//     n[0]  = c[24] ^ c[30] ^ d[1] ^ d[7];
//     n[1]  = c[25] ^ c[31] ^ d[0] ^ d[6] ^ c[24] ^ c[30] ^ d[1] ^ d[7];
//     n[2]  = c[26] ^ d[5] ^ c[25] ^ c[31] ^ d[0] ^ d[6] ^ c[24] ^ c[30] ^ d[1] ^ d[7];
//     n[3]  = c[27] ^ d[4] ^ c[26] ^ d[5] ^ c[25] ^ c[31] ^ d[0] ^ d[6];
//     n[4]  = c[28] ^ d[3] ^ c[27] ^ d[4] ^ c[26] ^ d[5] ^ c[24] ^ c[30] ^ d[1] ^ d[7];
//     n[5]  = c[29] ^ d[2] ^ c[28] ^ d[3] ^ c[27] ^ d[4] ^ c[25] ^ c[31] ^ d[0] ^ d[6] ^ c[24] ^ c[30] ^ d[1] ^ d[7];
//     n[6]  = c[30] ^ d[1] ^ c[29] ^ d[2] ^ c[28] ^ d[3] ^ c[26] ^ d[5] ^ c[25] ^ c[31] ^ d[0] ^ d[6];
//     n[7]  = c[31] ^ d[0] ^ c[29] ^ d[2] ^ c[27] ^ d[4] ^ c[24] ^ c[30] ^ d[1] ^ d[7];
//     n[8]  = c[0] ^ c[28] ^ d[3] ^ c[25] ^ c[31] ^ d[0] ^ d[6] ^ c[24] ^ d[7];
//     n[9]  = c[1] ^ c[29] ^ d[2] ^ c[26] ^ d[5] ^ c[25] ^ d[6];
//             n[10] = c[2] ^ c[29] ^ d[2] ^ c[27] ^ d[4] ^ c[24] ^ d[7];
//             n[11] = c[3] ^ c[28] ^ d[3] ^ c[25] ^ d[6] ^ c[24] ^ d[7];
//             n[12] = c[4] ^ c[29] ^ d[2] ^ c[26] ^ d[5] ^ c[25] ^ d[6] ^ c[24] ^ c[30] ^ d[1] ^ d[7];
//             n[13] = c[5] ^ c[30] ^ d[1] ^ c[27] ^ d[4] ^ c[26] ^ d[5] ^ c[25] ^ c[31] ^ d[0] ^ d[6];
//             n[14] = c[6] ^ c[31] ^ d[0] ^ c[28] ^ d[3] ^ c[27] ^ d[4] ^ c[26] ^ d[5];
//             n[15] = c[7] ^ c[29] ^ d[2] ^ c[28] ^ d[3] ^ c[27] ^ d[4];
//             n[16] = c[8] ^ c[29] ^ d[2] ^ c[24] ^ d[7];
//             n[17] = c[9] ^ c[30] ^ d[1] ^ c[25] ^ d[6];
//             n[18] = c[10] ^ c[31] ^ d[0] ^ c[26] ^ d[5];
//             n[19] = c[11] ^ c[27] ^ d[4];
//             n[20] = c[12] ^ c[28] ^ d[3];
//             n[21] = c[13] ^ c[29] ^ d[2];
//             n[22] = c[14] ^ c[24] ^ d[7];
//             n[23] = c[15] ^ c[25] ^ d[6] ^ c[24] ^ c[30] ^ d[1] ^ d[7];
//             n[24] = c[16] ^ c[26] ^ d[5] ^ c[25] ^ c[31] ^ d[0] ^ d[6];
//             n[25] = c[17] ^ c[27] ^ d[4] ^ c[26] ^ d[5];
//             n[26] = c[18] ^ c[28] ^ d[3] ^ c[27] ^ d[4] ^ c[24] ^ c[30] ^ d[1] ^ d[7];
//             n[27] = c[19] ^ c[29] ^ d[2] ^ c[28] ^ d[3] ^ c[25] ^ c[31] ^ d[0] ^ d[6];
//             n[28] = c[20] ^ c[30] ^ d[1] ^ c[29] ^ d[2] ^ c[26] ^ d[5];
//             n[29] = c[21] ^ c[31] ^ d[0] ^ c[30] ^ d[1] ^ c[27] ^ d[4];
//             n[30] = c[22] ^ c[31] ^ d[0] ^ c[28] ^ d[3];
//             n[31] = c[23] ^ c[29] ^ d[2];
// endmodule