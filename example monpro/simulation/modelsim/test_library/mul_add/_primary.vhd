library verilog;
use verilog.vl_types.all;
entity mul_add is
    port(
        clk             : in     vl_logic;
        x               : in     vl_logic_vector(31 downto 0);
        y               : in     vl_logic_vector(31 downto 0);
        z               : in     vl_logic_vector(31 downto 0);
        last_c          : in     vl_logic_vector(31 downto 0);
        s               : out    vl_logic_vector(31 downto 0);
        c               : out    vl_logic_vector(31 downto 0)
    );
end mul_add;
