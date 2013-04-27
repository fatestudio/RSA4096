-- Copyright (C) 1991-2005 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic       
-- functions, and any output files any of the foregoing           
-- (including device programming or simulation files), and any    
-- associated documentation or information are expressly subject  
-- to the terms and conditions of the Altera Program License      
-- Subscription Agreement, Altera MegaCore Function License       
-- Agreement, or other applicable license agreement, including,   
-- without limitation, that your use is for the sole purpose of   
-- programming logic devices manufactured by Altera and sold by   
-- Altera or its authorized distributors.  Please refer to the    
-- applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "05/18/2005 21:52:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          hex_vhdl
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY hex_vhdl_vhd_vec_tst IS
END hex_vhdl_vhd_vec_tst;
ARCHITECTURE hex_vhdl_arch OF hex_vhdl_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL t_sig_address : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL t_sig_clock : STD_LOGIC;
SIGNAL t_sig_q : STD_LOGIC_VECTOR(0 DOWNTO 0);
COMPONENT hex_vhdl
	PORT (
	address : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	clock : IN STD_LOGIC;
	q : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	tb : hex_vhdl
	PORT MAP (
-- list connections between master ports and signals
	address => t_sig_address,
	clock => t_sig_clock,
	q => t_sig_q
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	t_sig_clock <= '0';
	WAIT FOR 5000 ps;
	t_sig_clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;
-- address[4]
t_prcs_address_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		t_sig_address(4) <= '0';
		WAIT FOR 160000 ps;
		t_sig_address(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	t_sig_address(4) <= '0';
WAIT;
END PROCESS t_prcs_address_4;
-- address[3]
t_prcs_address_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		t_sig_address(3) <= '0';
		WAIT FOR 80000 ps;
		t_sig_address(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	t_sig_address(3) <= '0';
WAIT;
END PROCESS t_prcs_address_3;
-- address[2]
t_prcs_address_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		t_sig_address(2) <= '0';
		WAIT FOR 40000 ps;
		t_sig_address(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	t_sig_address(2) <= '0';
WAIT;
END PROCESS t_prcs_address_2;
-- address[1]
t_prcs_address_1: PROCESS
BEGIN
LOOP
	t_sig_address(1) <= '0';
	WAIT FOR 20000 ps;
	t_sig_address(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_address_1;
-- address[0]
t_prcs_address_0: PROCESS
BEGIN
LOOP
	t_sig_address(0) <= '0';
	WAIT FOR 10000 ps;
	t_sig_address(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_address_0;
END hex_vhdl_arch;
