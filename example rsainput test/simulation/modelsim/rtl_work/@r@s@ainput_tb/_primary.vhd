library verilog;
use verilog.vl_types.all;
entity RSAinput_tb is
    generic(
        WIDTH           : integer := 32;
        ADDR_WIDTH      : integer := 7
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
end RSAinput_tb;
