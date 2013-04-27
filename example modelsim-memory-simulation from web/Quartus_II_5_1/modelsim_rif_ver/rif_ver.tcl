# This script has been verified with the following versions
#
# Quartus II Version 5.1
# ModelSim-Altera Version 6.0e
# ModelSim SE Version 6.0
#
# Date: 11/7/2005
#
# Requirements
#
# Installation of the Quartus II software
# Installation of the ModelSim or ModelSim-Altera software
# Environment variable QUARTUS_ROOTDIR defined
#

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
		puts "Simulating Altera memories with ModelSim-Altera and Ram Initialization Files are not supported.\n"
		puts "Please use Hexadecimal format instead or simulate using the full version of ModelSim.\n"
	} else {
		puts "This is ModelSim (Full Version)"
		# Prepare altera_mf library
		vlib altera_mf_ver
		vmap altera_mf altera_mf_ver
		vlog -work altera_mf_ver +define+USE_RIF=1 $env(QUARTUS_ROOTDIR)/eda/sim_lib/altera_mf.v
		vlog -reportprogress 300 -work work rom.v
		vlog -reportprogress 300 -work work rom.vt
		vsim -L altera_mf work.rom_vlg_vec_tst
		add wave /*
		run 500ns
	}
}
close $input



