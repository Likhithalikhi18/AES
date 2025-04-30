vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 -incr \
"../../../../../Users/Likhitha/Desktop/MUX/shiftrows_multiplexer/shiftrows_multiplexer.srcs/sources_1/new/sbox.v" \
"../../../../../Users/Likhitha/Desktop/MUX/shiftrows_multiplexer/shiftrows_multiplexer.srcs/sources_1/new/multiplexer.v" \
"../../../../shiftrows_multiplexer.srcs/sources_1/ip/shiftrows_using_mux_0/sim/shiftrows_using_mux_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

