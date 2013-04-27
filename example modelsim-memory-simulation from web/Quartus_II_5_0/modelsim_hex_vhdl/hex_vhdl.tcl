# This script has been verified with the following versions
#
# Quartus II Version 5.0
# ModelSim-Altera Version 6.0c
# ModelSim SE Version 6.0
#
# Date: 06/14/2005
#
# Requirements
#
# Installation of the Quartus II software
# Installation of the ModelSim or ModelSim-Altera software
# Environment variable QUARTUS_ROOTDIR defined
#

set done_flag 0
set is_altera 0

if { [catch {open "|vsim -version" } input] } {

	# If there was an error running the command,
	# print it
	puts $input

} else {
	global env
	puts "Using the following environment variable:\n";
	if ([info exists env(QUARTUS_ROOTDIR)]) {
		puts "QUARTUS_ROOTDIR=$env(QUARTUS_ROOTDIR)";
	} else {
		puts "Please define QUARTUS_ROOTDIR as <Quartus II installtion path>";

	}
	puts "\n\n";

	gets $input line
	if { [regexp {ALTERA} $line] } {
		# If your are using Modelsim-Altera
		set is_altera 1
	}

	# Prepare work library and compile design and testbench file
	vlib work
	vmap work work
	
	if { $is_altera } {
		puts "This is ModelSim-Altera"
		# convert_hex2ver.dll is shipped with Modelsim-Altera and is used to convert the hex memory
		# input to a verilog data file
		# Perform simulation using the precompiled altera_mf libraries
	} else {
		puts "This is ModelSim (Full Version)"
		# Prepare altera_mf library
		vlib altera_mf
		vmap altera_mf altera_mf
		vcom -reportprogress 300 -work altera_mf $env(QUARTUS_ROOTDIR)/eda/sim_lib/altera_mf_components.vhd
		vcom -reportprogress 300 -work altera_mf $env(QUARTUS_ROOTDIR)/eda/sim_lib/altera_mf.vhd
	}
	vcom -reportprogress 300 -work work hex_vhdl.vhd
	vcom -reportprogress 300 -work work rom.vht
	vsim -L altera_mf work.hex_vhdl_vhd_vec_tst
	add wave /*
	run 500ns
}
close $input

