set top_level	work.MonExp_tb

set wave_radices {
	hexadecimal {data -r *}
}

vlog ModExp_tb.v
vsim -L altera_mf_ver -L lpm_ver -L cycloneiii_ver -L cycloneii_ver work.ModExp_tb
add wave -hex -internal /ModExp_tb/modexp0/v
add wave -hex -internal /ModExp_tb/modexp0/m_bar
add wave -hex -internal /ModExp_tb/modexp0/c_bar
add wave -hex -internal /ModExp_tb/modexp0/n_in
add wave -hex -internal /ModExp_tb/modexp0/m_in
add wave -hex -internal /ModExp_tb/m_buf
add wave -hex -internal /ModExp_tb/e_buf
add wave -hex -internal /ModExp_tb/modexp0/e_in
add wave -hex -internal /ModExp_tb/modexp0/n_buf
add wave -hex -internal /ModExp_tb/modexp0/r_in
add wave -hex -internal /ModExp_tb/modexp0/t_in
add wave -hex -internal /ModExp_tb/modexp0/nprime0
# add wave -hex -internal /ModExp_tb/modexp0/nprime0_buf
# add wave -hex -internal /ModExp_tb/modexp0/addr_buf2
# add wave -hex -internal /ModExp_tb/modexp0/addr_buf
# add wave -hex -internal /ModExp_tb/modexp0/i
add wave -hex -internal /ModExp_tb/exp_state
add wave -hex -internal /ModExp_tb/state
add wave -hex -internal /ModExp_tb/modexp0/v
add wave -hex -internal /ModExp_tb/modexp0/z
add wave -hex -internal /ModExp_tb/reset
add wave -hex -internal /ModExp_tb/startInput
add wave -hex -internal /ModExp_tb/startCompute
add wave -hex -internal /ModExp_tb/getResult
add wave -hex -internal /ModExp_tb/res_out
add wave -hex -internal /ModExp_tb/modexp0/x0
add wave -hex -internal /ModExp_tb/modexp0/y0
add wave -hex -internal /ModExp_tb/modexp0/z0
add wave -hex -internal /ModExp_tb/modexp0/k_e1
add wave -hex -internal /ModExp_tb/modexp0/k_e2
run 30000000
