ModelSim Tcl Scripting Examples
README.TXT
=======================================

Although we have made every effort to ensure that this Tcl scripting design functions correctly, there may be
problems that we haven't encountered. If you have a question or
problem that is not answered by the information provided in
this readme.txt file or Quartus II Help, please contact your
Altera(R) Field Applications Engineer or the Altera Customer
Applications Department at 1-800-800-EPLD or at
mysupport.altera.com.


Description of Files
=======================================

In each of the sub-directories, a memory HDL file, test bench file and a Tcl script file is present.

The filename of the memory file is rom.v/vhd
The filename of the test bench file is rom.vt/vht
The filename of the Tcl script file is <>.tcl

Simulation Instructions
=======================================

Start the ModelSim or ModelSim-Altera simulator.  Change the working directory to one of the sub-directories.  Source the Tcl script from the ModelSim command prompt.

ModelSim> do <Tcl Script file name>.tcl
