4096-bit RSA module on Altera Cyclone ii EP2C50

The implementation follows ModExp4096.pdf


1. How to compile?
	1.1. Need nMem.mif, rMem.mif, tMem.mif, nprime0Mem.mif as the memory initialization files; You can follow the example format to create your own test files;
	1.2. Create a project in Quartus ii 12.1sp1 web version, choose Cyclone ii EP2C50F484C6 device;
	1.3. Add _parameter.v, ModExp.v, mul_add.v, n_mem.v, t_mem.v, r_mem.v, res_mem.v to this project;
	1.4. Follow compile configuratoin.txt to set up compilation settings;
	1.5. Import pin assignments file ModExp.csv (Assignements -> Import Assignments from other sources);
	1.6. Compile the project. It will take a long time.
	

2. How to simulate?
	2.1 After compilation, click Tools -> Run Simulation Tool -> RTL Simulation. The ModelSim-Altera will pop out;
	2.2 Copy _parameter.v, nMem.mif, rMem.mif, tMem.mif, nprime0Mem.mif, ModExp_tb.v, ModExpSimulation.tcl to ~\simulation\modelsim folder;
	2.3 In ModelSim script window, write: do ModExpSimulation.tcl; the simulation starts and wave graph will pop out!


3. Where is the FPGA image and the summary report?
	In output_files folder.


Enjoy!

	by Qin ZHOU: qinzhou@cs.ucsb.edu
		Please email me if you have any questions.