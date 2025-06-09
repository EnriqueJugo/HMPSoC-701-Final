transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/University/COMPSYS 701/HMPSoC Final/HMPSoC-701-Final/RoniJagini-PD/src/TdmaMinTypes.vhd}
vcom -93 -work work {D:/University/COMPSYS 701/HMPSoC Final/HMPSoC-701-Final/RoniJagini-PD/src/PD_ASP.vhd}

