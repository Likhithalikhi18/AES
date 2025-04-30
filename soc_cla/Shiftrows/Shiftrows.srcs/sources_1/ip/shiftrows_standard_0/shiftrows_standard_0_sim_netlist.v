// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Tue Apr 22 19:33:14 2025
// Host        : DESKTOP-CDIPQ9K running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Likhitha/Desktop/MUX/sbox_mux/sbox_mux.srcs/sources_1/ip/shiftrows_standard_0/shiftrows_standard_0_sim_netlist.v
// Design      : shiftrows_standard_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "shiftrows_standard_0,shiftrows_standard,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "package_project" *) 
(* X_CORE_INFO = "shiftrows_standard,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module shiftrows_standard_0
   (state_in,
    state_out);
  input [127:0]state_in;
  output [127:0]state_out;

  wire [127:0]state_in;

  assign state_out[127:120] = state_in[127:120];
  assign state_out[119:112] = state_in[103:96];
  assign state_out[111:104] = state_in[111:104];
  assign state_out[103:96] = state_in[119:112];
  assign state_out[95:88] = state_in[87:80];
  assign state_out[87:80] = state_in[95:88];
  assign state_out[79:72] = state_in[71:64];
  assign state_out[71:64] = state_in[79:72];
  assign state_out[63:56] = state_in[47:40];
  assign state_out[55:48] = state_in[55:48];
  assign state_out[47:40] = state_in[63:56];
  assign state_out[39:32] = state_in[39:32];
  assign state_out[31:24] = state_in[7:0];
  assign state_out[23:16] = state_in[15:8];
  assign state_out[15:8] = state_in[23:16];
  assign state_out[7:0] = state_in[31:24];
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
