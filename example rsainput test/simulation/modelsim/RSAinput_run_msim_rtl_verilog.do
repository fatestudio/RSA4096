transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/altera/12.1sp1/RSAinput {D:/altera/12.1sp1/RSAinput/mem_m.v}
vlog -vlog01compat -work work +incdir+D:/altera/12.1sp1/RSAinput {D:/altera/12.1sp1/RSAinput/mem_e.v}
vlog -vlog01compat -work work +incdir+D:/altera/12.1sp1/RSAinput {D:/altera/12.1sp1/RSAinput/RSAinput.v}
vlog -vlog01compat -work work +incdir+D:/altera/12.1sp1/RSAinput {D:/altera/12.1sp1/RSAinput/multiplier.v}

