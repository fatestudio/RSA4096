library verilog;
use verilog.vl_types.all;
entity res_mem is
    port(
        address         : in     vl_logic_vector(6 downto 0);
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(31 downto 0)
    );
end res_mem;
