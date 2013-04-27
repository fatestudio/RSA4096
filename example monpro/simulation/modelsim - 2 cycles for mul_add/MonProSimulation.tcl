set top_level	work.MonPro_tb

set wave_radices {
	hexadecimal {data -r *}
}

# don't recompile, here is the recomiling commands
set library_file_list {
    design_library {monpro.v 
		mul_add.v}
    test_library   {MonPro_tb.v}
}

foreach {library file_list} $library_file_list {
	vlib $library
	vmap work $library
	foreach file $file_list {
		puts $file
		vlog $file
	}
}

vsim work.MonPro_tb
add wave -r *


run 10000
