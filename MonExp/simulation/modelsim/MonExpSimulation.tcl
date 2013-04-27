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

vlog MonExp_tb.v
vsim work.MonExp_tb
add wave -hex -r *
add wave -hex -internal /MonExp_tb/monexp0/v
add wave -hex -internal /MonExp_tb/monexp0/m_bar
add wave -hex -internal /MonExp_tb/monexp0/c_bar

run 10000000
