transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/altera/12.1sp1/MonPro {D:/altera/12.1sp1/MonPro/_parameter.v}
vlog -vlog01compat -work work +incdir+D:/altera/12.1sp1/MonPro {D:/altera/12.1sp1/MonPro/mul_add.v}
vlog -vlog01compat -work work +incdir+D:/altera/12.1sp1/MonPro {D:/altera/12.1sp1/MonPro/monpro.v}

