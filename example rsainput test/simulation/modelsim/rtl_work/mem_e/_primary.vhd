library verilog;
use verilog.vl_types.all;
entity mem_e is
    generic(
        WIDTH           : integer := 32;
        ADDR_WIDTH      : integer := 7
    );
    port(
        addr            : in     vl_logic_vector;
        clk             : in     vl_logic;
        dataout         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
end mem_e;
