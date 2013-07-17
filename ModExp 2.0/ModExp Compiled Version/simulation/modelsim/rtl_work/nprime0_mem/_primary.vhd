library verilog;
use verilog.vl_types.all;
entity nprime0_mem is
    port(
        address         : in     vl_logic_vector(1 downto 0);
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(31 downto 0);
        q               : out    vl_logic_vector(31 downto 0)
    );
end nprime0_mem;
