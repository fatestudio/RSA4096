transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+K:/altera/12.1sp1/ModExp\ 2.0\ -\ copied {K:/altera/12.1sp1/ModExp 2.0 - copied/_parameter.v}
vlog -vlog01compat -work work +incdir+K:/altera/12.1sp1/ModExp\ 2.0\ -\ copied {K:/altera/12.1sp1/ModExp 2.0 - copied/t_mem.v}
vlog -vlog01compat -work work +incdir+K:/altera/12.1sp1/ModExp\ 2.0\ -\ copied {K:/altera/12.1sp1/ModExp 2.0 - copied/r_mem.v}
vlog -vlog01compat -work work +incdir+K:/altera/12.1sp1/ModExp\ 2.0\ -\ copied {K:/altera/12.1sp1/ModExp 2.0 - copied/nprime0_mem.v}
vlog -vlog01compat -work work +incdir+K:/altera/12.1sp1/ModExp\ 2.0\ -\ copied {K:/altera/12.1sp1/ModExp 2.0 - copied/n_mem.v}
vlog -vlog01compat -work work +incdir+K:/altera/12.1sp1/ModExp\ 2.0\ -\ copied {K:/altera/12.1sp1/ModExp 2.0 - copied/mul_add.v}
vlog -vlog01compat -work work +incdir+K:/altera/12.1sp1/ModExp\ 2.0\ -\ copied {K:/altera/12.1sp1/ModExp 2.0 - copied/ModExp.v}

