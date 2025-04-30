vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../../../Users/Likhitha/Desktop/MUX/sbox_mux/sbox_mux.srcs/sources_1/new/shiftrows.v" \
"../../../../sbox_mux.srcs/sources_1/ip/shiftrows_standard_0/sim/shiftrows_standard_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

