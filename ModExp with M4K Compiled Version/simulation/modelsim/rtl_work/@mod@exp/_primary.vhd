library verilog;
use verilog.vl_types.all;
entity ModExp is
    generic(
        S0              : integer := 0;
        S1              : integer := 1;
        S2              : integer := 2;
        S3              : integer := 3;
        S4              : integer := 4;
        S5              : integer := 5;
        S6              : integer := 6;
        S7              : integer := 7;
        ES00            : integer := 7;
        ES0             : integer := 0;
        ES1             : integer := 1;
        ES2             : integer := 2;
        ES3             : integer := 3;
        ES4             : integer := 4;
        ES5             : integer := 5;
        ES6             : integer := 6
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        res_out         : out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of S0 : constant is 1;
    attribute mti_svvh_generic_type of S1 : constant is 1;
    attribute mti_svvh_generic_type of S2 : constant is 1;
    attribute mti_svvh_generic_type of S3 : constant is 1;
    attribute mti_svvh_generic_type of S4 : constant is 1;
    attribute mti_svvh_generic_type of S5 : constant is 1;
    attribute mti_svvh_generic_type of S6 : constant is 1;
    attribute mti_svvh_generic_type of S7 : constant is 1;
    attribute mti_svvh_generic_type of ES00 : constant is 1;
    attribute mti_svvh_generic_type of ES0 : constant is 1;
    attribute mti_svvh_generic_type of ES1 : constant is 1;
    attribute mti_svvh_generic_type of ES2 : constant is 1;
    attribute mti_svvh_generic_type of ES3 : constant is 1;
    attribute mti_svvh_generic_type of ES4 : constant is 1;
    attribute mti_svvh_generic_type of ES5 : constant is 1;
    attribute mti_svvh_generic_type of ES6 : constant is 1;
end ModExp;
