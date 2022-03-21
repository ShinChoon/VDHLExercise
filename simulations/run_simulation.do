vlib work
vcom -work work ../vhdl/adder.vhd 
vcom -work work ../vhdl/fulladder1.vhd 
vcom -work work ../vhdl/fulladder2.vhd 
vcom -work work ../vhdl/adder_tb.vhd 
vsim work.adder_tb
add wave A
add wave B
add wave S
add wave S2
add wave CO1
add wave CO2
run -all
run 1000ns
wave zoom full
