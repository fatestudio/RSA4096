library verilog;
use verilog.vl_types.all;
entity r_mem is
    port(
        address         : in     vl_logic_vector(6 downto 0);
        clock           : in     vl_logic;
        q               : out    vl_logic_vector(31 downto 0)
    );
end r_mem;
