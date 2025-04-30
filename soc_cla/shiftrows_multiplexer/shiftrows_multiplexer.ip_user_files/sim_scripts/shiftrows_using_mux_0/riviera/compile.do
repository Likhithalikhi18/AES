vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../../Users/Likhitha/Desktop/MUX/shiftrows_multiplexer/shiftrows_multiplexer.srcs/sources_1/new/sbox.v" \
"../../../../../Users/Likhitha/Desktop/MUX/shiftrows_multiplexer/shiftrows_multiplexer.srcs/sources_1/new/multiplexer.v" \
"../../../../shiftrows_multiplexer.srcs/sources_1/ip/shiftrows_using_mux_0/sim/shiftrows_using_mux_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

