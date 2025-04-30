onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+shiftrows_standard_0 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.shiftrows_standard_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {shiftrows_standard_0.udo}

run -all

endsim

quit -force
