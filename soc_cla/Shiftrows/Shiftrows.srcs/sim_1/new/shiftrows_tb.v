module tb_shiftrows_standard;
    reg [127:0] state_in;
    wire [127:0] state_out;

    shiftrows_standard uut (
        .state_in(state_in),
        .state_out(state_out)
    );

    initial begin
        // Input state matrix:
        // 00 01 02 03
        // 10 11 12 13
        // 20 21 22 23
        // 30 31 32 33
        state_in = {
            8'h30, 8'h31, 8'h32, 8'h33,
            8'h20, 8'h21, 8'h22, 8'h23,
            8'h10, 8'h11, 8'h12, 8'h13,
            8'h00, 8'h01, 8'h02, 8'h03
        };

        #10;
        $display("Standard ShiftRows Output: %h", state_out);
        $stop;
    end
endmodule
