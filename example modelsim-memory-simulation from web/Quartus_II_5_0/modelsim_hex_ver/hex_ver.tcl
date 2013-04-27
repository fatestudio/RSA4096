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
# Environment variables MODEL_TECH and QUARTUS_ROOTDIR defined
#

set done_flag 0
set is_altera 0

if { [catch {open "|vsim -version" } input] } {

	# If there was an error running the command,
	# print it
	puts $input

} else {
	global env
	puts "Using the following environment variables:\n";
	if {[info exists env(MODEL_TECH)]} {
		puts "MODEL_TECH=$env(MODEL_TECH)";
	} else {
		puts "Please define MODEL_TECH as <ModelSim installation path>/win32 or <ModelSim installation path>/win32aloem";

	}
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
	vlog -reportprogress 300 -work work rom.v
	vlog -reportprogress 300 -work work rom.vt

	if { $is_altera } {
		puts "This is ModelSim-Altera"
		# convert_hex2ver.dll is shipped with Modelsim-Altera and is used to convert the hex memory
		# input to a verilog data file
		# Perform simulation using the precompiled altera_mf libraries
		vsim -pli "$env(MODEL_TECH)/convert_hex2ver.dll" -L altera_mf_ver work.rom_vlg_vec_tst
	} else {
		puts "This is ModelSim (Full Version)"
		# Prepare altera_mf library
		vlib altera_mf_ver
		vmap altera_mf_ver altera_mf_ver
		vlog -reportprogress 300 -work altera_mf_ver $env(QUARTUS_ROOTDIR)/eda/sim_lib/altera_mf.v
		vsim -pli "$env(QUARTUS_ROOTDIR)/eda/mentor/modelsim/convert_hex2ver.dll" -L altera_mf_ver work.rom_vlg_vec_tst
	}
	add wave /*
	run 500ns
}
close $input



