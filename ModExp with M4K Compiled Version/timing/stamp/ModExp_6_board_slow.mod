/*
 Copyright (C) 1991-2012 Altera Corporation
 Your use of Altera Corporation's design tools, logic functions 
 and other software and tools, and its AMPP partner logic 
 functions, and any output files from any of the foregoing 
 (including device programming or simulation files), and any 
 associated documentation or information are expressly subject 
 to the terms and conditions of the Altera Program License 
 Subscription Agreement, Altera MegaCore Function License 
 Agreement, or other applicable license agreement, including, 
 without limitation, that your use is for the sole purpose of 
 programming logic devices manufactured by Altera and sold by 
 Altera or its authorized distributors.  Please refer to the 
 applicable agreement for further details.
*/
MODEL
/*MODEL HEADER*/
/*
 This file contains Slow Corner delays for the design using part EP2C50F484C6
 with speed grade 6, core voltage Auto, and temperature 2147483647 Celsius

*/
MODEL_VERSION "1.0";
DESIGN "ModExp";
DATE "05/05/2013 22:29:54";
PROGRAM "Quartus II 32-bit";



INPUT reset;
INPUT clk;
INPUT altera_reserved_tms;
INPUT altera_reserved_tck;
INPUT altera_reserved_tdi;
OUTPUT res_out[0];
OUTPUT res_out[1];
OUTPUT res_out[2];
OUTPUT res_out[3];
OUTPUT res_out[4];
OUTPUT res_out[5];
OUTPUT res_out[6];
OUTPUT res_out[7];
OUTPUT res_out[8];
OUTPUT res_out[9];
OUTPUT res_out[10];
OUTPUT res_out[11];
OUTPUT res_out[12];
OUTPUT res_out[13];
OUTPUT res_out[14];
OUTPUT res_out[15];
OUTPUT res_out[16];
OUTPUT res_out[17];
OUTPUT res_out[18];
OUTPUT res_out[19];
OUTPUT res_out[20];
OUTPUT res_out[21];
OUTPUT res_out[22];
OUTPUT res_out[23];
OUTPUT res_out[24];
OUTPUT res_out[25];
OUTPUT res_out[26];
OUTPUT res_out[27];
OUTPUT res_out[28];
OUTPUT res_out[29];
OUTPUT res_out[30];
OUTPUT res_out[31];
OUTPUT altera_reserved_tdo;
OUTPUT ~LVDS142p/nCEO~;

/*Arc definitions start here*/
pos_reset__clock__setup:		SETUP (POSEDGE) reset clock ;
pos_reset__clock__hold:		HOLD (POSEDGE) reset clock ;
pos_clock__res_out[0]__delay:		DELAY (POSEDGE) clock res_out[0] ;
pos_clock__res_out[1]__delay:		DELAY (POSEDGE) clock res_out[1] ;
pos_clock__res_out[2]__delay:		DELAY (POSEDGE) clock res_out[2] ;
pos_clock__res_out[3]__delay:		DELAY (POSEDGE) clock res_out[3] ;
pos_clock__res_out[4]__delay:		DELAY (POSEDGE) clock res_out[4] ;
pos_clock__res_out[5]__delay:		DELAY (POSEDGE) clock res_out[5] ;
pos_clock__res_out[6]__delay:		DELAY (POSEDGE) clock res_out[6] ;
pos_clock__res_out[7]__delay:		DELAY (POSEDGE) clock res_out[7] ;
pos_clock__res_out[8]__delay:		DELAY (POSEDGE) clock res_out[8] ;
pos_clock__res_out[9]__delay:		DELAY (POSEDGE) clock res_out[9] ;
pos_clock__res_out[10]__delay:		DELAY (POSEDGE) clock res_out[10] ;
pos_clock__res_out[11]__delay:		DELAY (POSEDGE) clock res_out[11] ;
pos_clock__res_out[12]__delay:		DELAY (POSEDGE) clock res_out[12] ;
pos_clock__res_out[13]__delay:		DELAY (POSEDGE) clock res_out[13] ;
pos_clock__res_out[14]__delay:		DELAY (POSEDGE) clock res_out[14] ;
pos_clock__res_out[15]__delay:		DELAY (POSEDGE) clock res_out[15] ;
pos_clock__res_out[16]__delay:		DELAY (POSEDGE) clock res_out[16] ;
pos_clock__res_out[17]__delay:		DELAY (POSEDGE) clock res_out[17] ;
pos_clock__res_out[18]__delay:		DELAY (POSEDGE) clock res_out[18] ;
pos_clock__res_out[19]__delay:		DELAY (POSEDGE) clock res_out[19] ;
pos_clock__res_out[20]__delay:		DELAY (POSEDGE) clock res_out[20] ;
pos_clock__res_out[21]__delay:		DELAY (POSEDGE) clock res_out[21] ;
pos_clock__res_out[22]__delay:		DELAY (POSEDGE) clock res_out[22] ;
pos_clock__res_out[23]__delay:		DELAY (POSEDGE) clock res_out[23] ;
pos_clock__res_out[24]__delay:		DELAY (POSEDGE) clock res_out[24] ;
pos_clock__res_out[25]__delay:		DELAY (POSEDGE) clock res_out[25] ;
pos_clock__res_out[26]__delay:		DELAY (POSEDGE) clock res_out[26] ;
pos_clock__res_out[27]__delay:		DELAY (POSEDGE) clock res_out[27] ;
pos_clock__res_out[28]__delay:		DELAY (POSEDGE) clock res_out[28] ;
pos_clock__res_out[29]__delay:		DELAY (POSEDGE) clock res_out[29] ;
pos_clock__res_out[30]__delay:		DELAY (POSEDGE) clock res_out[30] ;
pos_clock__res_out[31]__delay:		DELAY (POSEDGE) clock res_out[31] ;

ENDMODEL
