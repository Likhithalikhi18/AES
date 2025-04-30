vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib -64 \
"../../../../../../Users/Likhitha/Desktop/MUX/sbox_mux/sbox_mux.srcs/sources_1/new/shiftrows.v" \
"../../../../sbox_mux.srcs/sources_1/ip/shiftrows_standard_0/sim/shiftrows_standard_0.v" \


vlog -work xil_defaultlib \
"glbl.v"

