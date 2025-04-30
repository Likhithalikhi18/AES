vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../../Users/Likhitha/Desktop/MUX/shiftrows_multiplexer/shiftrows_multiplexer.srcs/sources_1/new/sbox.v" \
"../../../../../Users/Likhitha/Desktop/MUX/shiftrows_multiplexer/shiftrows_multiplexer.srcs/sources_1/new/multiplexer.v" \
"../../../../shiftrows_multiplexer.srcs/sources_1/ip/shiftrows_using_mux_0/sim/shiftrows_using_mux_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

