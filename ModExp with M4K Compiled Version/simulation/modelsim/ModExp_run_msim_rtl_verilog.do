transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+C:/altera/12.1sp1/ModExp\ with\ M4K\ 2 {C:/altera/12.1sp1/ModExp with M4K 2/_parameter.v}
vlog -vlog01compat -work work +incdir+C:/altera/12.1sp1/ModExp\ with\ M4K\ 2 {C:/altera/12.1sp1/ModExp with M4K 2/t_mem.v}
vlog -vlog01compat -work work +incdir+C:/altera/12.1sp1/ModExp\ with\ M4K\ 2 {C:/altera/12.1sp1/ModExp with M4K 2/res_mem.v}
vlog -vlog01compat -work work +incdir+C:/altera/12.1sp1/ModExp\ with\ M4K\ 2 {C:/altera/12.1sp1/ModExp with M4K 2/r_mem.v}
vlog -vlog01compat -work work +incdir+C:/altera/12.1sp1/ModExp\ with\ M4K\ 2 {C:/altera/12.1sp1/ModExp with M4K 2/nprime0_mem.v}
vlog -vlog01compat -work work +incdir+C:/altera/12.1sp1/ModExp\ with\ M4K\ 2 {C:/altera/12.1sp1/ModExp with M4K 2/n_mem.v}
vlog -vlog01compat -work work +incdir+C:/altera/12.1sp1/ModExp\ with\ M4K\ 2 {C:/altera/12.1sp1/ModExp with M4K 2/mul_add.v}
vlog -vlog01compat -work work +incdir+C:/altera/12.1sp1/ModExp\ with\ M4K\ 2 {C:/altera/12.1sp1/ModExp with M4K 2/ModExp.v}
vlog -vlog01compat -work work +incdir+C:/altera/12.1sp1/ModExp\ with\ M4K\ 2 {C:/altera/12.1sp1/ModExp with M4K 2/m_mem.v}
vlog -vlog01compat -work work +incdir+C:/altera/12.1sp1/ModExp\ with\ M4K\ 2 {C:/altera/12.1sp1/ModExp with M4K 2/e_mem.v}

