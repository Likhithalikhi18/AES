module shiftrows_using_mux(
    input  [127:0] state_in,
    output [127:0] state_out
);
    wire [7:0] state_matrix [0:3][0:3];
    wire [7:0] shifted_matrix [0:3][0:3];
    genvar i, j;

    // Unpack the 128-bit input
    generate
        for (i = 0; i < 4; i = i + 1) begin : unpack
            for (j = 0; j < 4; j = j + 1) begin : unpack_inner
                assign state_matrix[i][j] = state_in[(i * 32) + (j * 8) + 7 -: 8];
            end
        end
    endgenerate

    // Row 0 - No shift
    assign shifted_matrix[0][0] = state_matrix[0][0];
    assign shifted_matrix[0][1] = state_matrix[0][1];
    assign shifted_matrix[0][2] = state_matrix[0][2];
    assign shifted_matrix[0][3] = state_matrix[0][3];

    // Row 1 using MUX
    mux4to1_8bit mux_r1_0(.d0(state_matrix[1][0]), .d1(state_matrix[1][1]), .d2(state_matrix[1][2]), .d3(state_matrix[1][3]), .sel(2'b01), .out(shifted_matrix[1][0]));
    mux4to1_8bit mux_r1_1(.d0(state_matrix[1][0]), .d1(state_matrix[1][1]), .d2(state_matrix[1][2]), .d3(state_matrix[1][3]), .sel(2'b10), .out(shifted_matrix[1][1]));
    mux4to1_8bit mux_r1_2(.d0(state_matrix[1][0]), .d1(state_matrix[1][1]), .d2(state_matrix[1][2]), .d3(state_matrix[1][3]), .sel(2'b11), .out(shifted_matrix[1][2]));
    mux4to1_8bit mux_r1_3(.d0(state_matrix[1][0]), .d1(state_matrix[1][1]), .d2(state_matrix[1][2]), .d3(state_matrix[1][3]), .sel(2'b00), .out(shifted_matrix[1][3]));

    // Row 2 using MUX
    mux4to1_8bit mux_r2_0(.d0(state_matrix[2][0]), .d1(state_matrix[2][1]), .d2(state_matrix[2][2]), .d3(state_matrix[2][3]), .sel(2'b10), .out(shifted_matrix[2][0]));
    mux4to1_8bit mux_r2_1(.d0(state_matrix[2][0]), .d1(state_matrix[2][1]), .d2(state_matrix[2][2]), .d3(state_matrix[2][3]), .sel(2'b11), .out(shifted_matrix[2][1]));
    mux4to1_8bit mux_r2_2(.d0(state_matrix[2][0]), .d1(state_matrix[2][1]), .d2(state_matrix[2][2]), .d3(state_matrix[2][3]), .sel(2'b00), .out(shifted_matrix[2][2]));
    mux4to1_8bit mux_r2_3(.d0(state_matrix[2][0]), .d1(state_matrix[2][1]), .d2(state_matrix[2][2]), .d3(state_matrix[2][3]), .sel(2'b01), .out(shifted_matrix[2][3]));

    // Row 3 using MUX
    mux4to1_8bit mux_r3_0(.d0(state_matrix[3][0]), .d1(state_matrix[3][1]), .d2(state_matrix[3][2]), .d3(state_matrix[3][3]), .sel(2'b11), .out(shifted_matrix[3][0]));
    mux4to1_8bit mux_r3_1(.d0(state_matrix[3][0]), .d1(state_matrix[3][1]), .d2(state_matrix[3][2]), .d3(state_matrix[3][3]), .sel(2'b00), .out(shifted_matrix[3][1]));
    mux4to1_8bit mux_r3_2(.d0(state_matrix[3][0]), .d1(state_matrix[3][1]), .d2(state_matrix[3][2]), .d3(state_matrix[3][3]), .sel(2'b01), .out(shifted_matrix[3][2]));
    mux4to1_8bit mux_r3_3(.d0(state_matrix[3][0]), .d1(state_matrix[3][1]), .d2(state_matrix[3][2]), .d3(state_matrix[3][3]), .sel(2'b10), .out(shifted_matrix[3][3]));

    assign state_out = { shifted_matrix[3][0], shifted_matrix[3][1], shifted_matrix[3][2], shifted_matrix[3][3],
                         shifted_matrix[2][0], shifted_matrix[2][1], shifted_matrix[2][2], shifted_matrix[2][3],
                         shifted_matrix[1][0], shifted_matrix[1][1], shifted_matrix[1][2], shifted_matrix[1][3],
                         shifted_matrix[0][0], shifted_matrix[0][1], shifted_matrix[0][2], shifted_matrix[0][3] };
endmodule
