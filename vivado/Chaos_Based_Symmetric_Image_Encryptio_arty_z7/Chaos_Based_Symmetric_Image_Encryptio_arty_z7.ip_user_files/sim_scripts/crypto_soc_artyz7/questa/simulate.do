onbreak {quit -f}
onerror {quit -f}

vsim  -lib xil_defaultlib crypto_soc_artyz7_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {crypto_soc_artyz7.udo}

run 1000ns

quit -force
