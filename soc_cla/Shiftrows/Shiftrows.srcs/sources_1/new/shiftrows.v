module shiftrows_standard(
    input  [127:0] state_in,
    output [127:0] state_out
);
    reg [7:0] state_matrix [0:3][0:3];
    reg [7:0] shifted_matrix [0:3][0:3];
    integer i, j;

    always @(*) begin
        // Unpack flat input to 4x4 matrix
        for (i = 0; i < 4; i = i + 1)
            for (j = 0; j < 4; j = j + 1)
                state_matrix[i][j] = state_in[(i*32)+(j*8)+7 -: 8];

        // Shift Rows operation
        shifted_matrix[0][0] = state_matrix[0][0];
        shifted_matrix[0][1] = state_matrix[0][1];
        shifted_matrix[0][2] = state_matrix[0][2];
        shifted_matrix[0][3] = state_matrix[0][3];

        shifted_matrix[1][0] = state_matrix[1][1];
        shifted_matrix[1][1] = state_matrix[1][2];
        shifted_matrix[1][2] = state_matrix[1][3];
        shifted_matrix[1][3] = state_matrix[1][0];

        shifted_matrix[2][0] = state_matrix[2][2];
        shifted_matrix[2][1] = state_matrix[2][3];
        shifted_matrix[2][2] = state_matrix[2][0];
        shifted_matrix[2][3] = state_matrix[2][1];

        shifted_matrix[3][0] = state_matrix[3][3];
        shifted_matrix[3][1] = state_matrix[3][0];
        shifted_matrix[3][2] = state_matrix[3][1];
        shifted_matrix[3][3] = state_matrix[3][2];
    end

    assign state_out = { shifted_matrix[3][0], shifted_matrix[3][1], shifted_matrix[3][2], shifted_matrix[3][3],
                         shifted_matrix[2][0], shifted_matrix[2][1], shifted_matrix[2][2], shifted_matrix[2][3],
                         shifted_matrix[1][0], shifted_matrix[1][1], shifted_matrix[1][2], shifted_matrix[1][3],
                         shifted_matrix[0][0], shifted_matrix[0][1], shifted_matrix[0][2], shifted_matrix[0][3] };
endmodule
