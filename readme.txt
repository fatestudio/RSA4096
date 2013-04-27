RSA4096 project:
	Using 4096-bit registers to do Montgomery Exponentiation to implement RSA encryption.

	The algorithm is derivative CIOS method: http://cs.ucsb.edu/~koc/cs290g/docs/w01/mon1.pdf
	The implementation is based on this: ModExp4096.pdf


	Explanation to folders and files is below.

FOLDER: Python and Mathematica code:
	This folder includes codes which generate parameters  m, e, n, n0', r, t, etc. Looks chaotic but you can get the idea.

 
FOLDER: example multiplier
	Verilog 32bit multiplier.

FOLDER: example modelsim-memory-simulation from web
	ModelSim memory IO.

FOLDER: example rsainput test
	Using mif file and lpm library to do memory IO.

FOLDER: example file_readmemh
	Using $readmemh to initialize memory. 

FOLDER: example monpro
	Complete monpro module. With $readmemh IO.
	
FOLDER: MonExp
	RSA4096 Quartus project folder.























Written by Qin ZHOU