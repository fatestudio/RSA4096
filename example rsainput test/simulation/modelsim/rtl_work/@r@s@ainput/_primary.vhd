library verilog;
use verilog.vl_types.all;
entity RSAinput is
    generic(
        WIDTH           : integer := 32;
        ADDR_WIDTH      : integer := 7
    );
    port(
        addr1           : in     vl_logic_vector;
        addr2           : in     vl_logic_vector;
        clk             : in     vl_logic;
        dataoutl        : out    vl_logic_vector;
        dataouth        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
end RSAinput;
