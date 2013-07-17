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
DATE "07/13/2013 13:06:45";
PROGRAM "Quartus II 64-Bit";



INPUT getResult;
INPUT reset;
INPUT clk;
INPUT e_buf[17];
INPUT e_buf[25];
INPUT e_buf[21];
INPUT e_buf[29];
INPUT e_buf[16];
INPUT e_buf[20];
INPUT e_buf[24];
INPUT e_buf[28];
INPUT e_buf[26];
INPUT e_buf[18];
INPUT e_buf[22];
INPUT e_buf[30];
INPUT e_buf[27];
INPUT e_buf[19];
INPUT e_buf[23];
INPUT e_buf[31];
INPUT e_buf[14];
INPUT e_buf[12];
INPUT e_buf[15];
INPUT e_buf[13];
INPUT e_buf[8];
INPUT e_buf[10];
INPUT e_buf[9];
INPUT e_buf[11];
INPUT e_buf[2];
INPUT e_buf[0];
INPUT e_buf[1];
INPUT e_buf[3];
INPUT e_buf[5];
INPUT e_buf[6];
INPUT e_buf[4];
INPUT e_buf[7];
INPUT e_buf[55];
INPUT e_buf[54];
INPUT e_buf[52];
INPUT e_buf[53];
INPUT e_buf[59];
INPUT e_buf[57];
INPUT e_buf[56];
INPUT e_buf[58];
INPUT e_buf[51];
INPUT e_buf[48];
INPUT e_buf[50];
INPUT e_buf[49];
INPUT e_buf[62];
INPUT e_buf[61];
INPUT e_buf[60];
INPUT e_buf[63];
INPUT e_buf[34];
INPUT e_buf[35];
INPUT e_buf[32];
INPUT e_buf[33];
INPUT e_buf[41];
INPUT e_buf[40];
INPUT e_buf[43];
INPUT e_buf[42];
INPUT e_buf[45];
INPUT e_buf[46];
INPUT e_buf[44];
INPUT e_buf[47];
INPUT e_buf[37];
INPUT e_buf[39];
INPUT e_buf[36];
INPUT e_buf[38];
INPUT startCompute;
INPUT startInput;
INPUT m_buf[1];
INPUT m_buf[0];
INPUT m_buf[2];
INPUT m_buf[17];
INPUT m_buf[63];
INPUT m_buf[62];
INPUT m_buf[61];
INPUT m_buf[53];
INPUT m_buf[52];
INPUT m_buf[14];
INPUT m_buf[33];
INPUT m_buf[32];
INPUT m_buf[59];
INPUT m_buf[58];
INPUT m_buf[57];
INPUT m_buf[56];
INPUT m_buf[55];
INPUT m_buf[54];
INPUT m_buf[9];
INPUT m_buf[35];
INPUT m_buf[34];
INPUT m_buf[3];
INPUT m_buf[50];
INPUT m_buf[49];
INPUT m_buf[48];
INPUT m_buf[47];
INPUT m_buf[46];
INPUT m_buf[45];
INPUT m_buf[44];
INPUT m_buf[43];
INPUT m_buf[42];
INPUT m_buf[41];
INPUT m_buf[40];
INPUT m_buf[39];
INPUT m_buf[38];
INPUT m_buf[37];
INPUT m_buf[4];
INPUT m_buf[5];
INPUT m_buf[6];
INPUT m_buf[7];
INPUT m_buf[8];
INPUT m_buf[10];
INPUT m_buf[31];
INPUT m_buf[30];
INPUT m_buf[29];
INPUT m_buf[28];
INPUT m_buf[27];
INPUT m_buf[13];
INPUT m_buf[26];
INPUT m_buf[25];
INPUT m_buf[24];
INPUT m_buf[23];
INPUT m_buf[22];
INPUT m_buf[21];
INPUT m_buf[20];
INPUT m_buf[19];
INPUT m_buf[51];
INPUT m_buf[15];
INPUT m_buf[60];
INPUT m_buf[11];
INPUT m_buf[12];
INPUT m_buf[36];
INPUT m_buf[18];
INPUT m_buf[16];
INPUT altera_reserved_tms;
INPUT altera_reserved_tck;
INPUT altera_reserved_tdi;
OUTPUT state[0];
OUTPUT state[1];
OUTPUT state[2];
OUTPUT state[3];
OUTPUT exp_state[0];
OUTPUT exp_state[1];
OUTPUT exp_state[2];
OUTPUT exp_state[3];
OUTPUT exp_state[4];
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
OUTPUT res_out[32];
OUTPUT res_out[33];
OUTPUT res_out[34];
OUTPUT res_out[35];
OUTPUT res_out[36];
OUTPUT res_out[37];
OUTPUT res_out[38];
OUTPUT res_out[39];
OUTPUT res_out[40];
OUTPUT res_out[41];
OUTPUT res_out[42];
OUTPUT res_out[43];
OUTPUT res_out[44];
OUTPUT res_out[45];
OUTPUT res_out[46];
OUTPUT res_out[47];
OUTPUT res_out[48];
OUTPUT res_out[49];
OUTPUT res_out[50];
OUTPUT res_out[51];
OUTPUT res_out[52];
OUTPUT res_out[53];
OUTPUT res_out[54];
OUTPUT res_out[55];
OUTPUT res_out[56];
OUTPUT res_out[57];
OUTPUT res_out[58];
OUTPUT res_out[59];
OUTPUT res_out[60];
OUTPUT res_out[61];
OUTPUT res_out[62];
OUTPUT res_out[63];
OUTPUT altera_reserved_tdo;
OUTPUT ~LVDS142p/nCEO~;

/*Arc definitions start here*/

ENDMODEL
