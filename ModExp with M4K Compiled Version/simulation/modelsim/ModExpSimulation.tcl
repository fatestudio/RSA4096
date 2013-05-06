set top_level	work.MonExp_tb

set wave_radices {
	hexadecimal {data -r *}
}

# don't recompile, here is the recomiling commands
# set library_file_list {
    # design_library {monpro.v 
		# mul_add.v}
    # test_library   {MonExp_tb.v}
# }

# foreach {library file_list} $library_file_list {
	# vlib $library
	# vmap work $library
	# foreach file $file_list {
		# puts $file
		# vlog $file
	# }
# }

vlog ModExp_tb.v
vsim -L altera_mf_ver -L lpm_ver -L cycloneiii_ver -L cycloneii_ver work.ModExp_tb
add wave -hex -r *
add wave -hex -internal /ModExp_tb/modexp0/v
add wave -hex -internal /ModExp_tb/modexp0/m_bar
add wave -hex -internal /ModExp_tb/modexp0/c_bar
add wave -hex -internal /ModExp_tb/modexp0/n_in
add wave -hex -internal /ModExp_tb/modexp0/m_in
add wave -hex -internal /ModExp_tb/modexp0/nprime0
run 10000000
