library verilog;
use verilog.vl_types.all;
entity multiplier is
    generic(
        WIDTH           : integer := 32
    );
    port(
        clk             : in     vl_logic;
        dataa           : in     vl_logic_vector;
        datab           : in     vl_logic_vector;
        dataoutl        : out    vl_logic_vector;
        dataouth        : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
end multiplier;
