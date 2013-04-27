# This is the tcl for RSAinput Simulation

vsim -L 220model_ver work.RSAinput_tb

add wave t_reg_clk
add wave t_reg_addr1
add wave t_reg_addr2

add wave t_wire_dataoutl
add wave t_wire_dataouth

run 500ns
