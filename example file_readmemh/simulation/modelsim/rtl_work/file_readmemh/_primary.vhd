library verilog;
use verilog.vl_types.all;
entity file_readmemh is
    generic(
        MEM_SIZE        : integer := 1024
    );
    port(
        clk             : in     vl_logic;
        addr            : in     vl_logic;
        data2           : out    vl_logic_vector(19 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of MEM_SIZE : constant is 1;
end file_readmemh;
