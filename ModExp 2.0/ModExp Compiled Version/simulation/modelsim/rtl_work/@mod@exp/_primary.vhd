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
        INIT_STATE      : integer := 0;
        LOAD_M_E        : integer := 1;
        LOAD_N          : integer := 2;
        WAIT_COMPUTE    : integer := 3;
        CALC_M_BAR      : integer := 4;
        GET_K_E         : integer := 5;
        BIGLOOP         : integer := 6;
        CALC_C_BAR_M_BAR: integer := 7;
        CALC_C_BAR_1    : integer := 8;
        COMPLETE        : integer := 9;
        OUTPUT_RESULT   : integer := 10;
        TERMINAL        : integer := 11
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        startInput      : in     vl_logic;
        startCompute    : in     vl_logic;
        getResult       : in     vl_logic;
        m_buf           : in     vl_logic_vector(63 downto 0);
        e_buf           : in     vl_logic_vector(63 downto 0);
        state           : out    vl_logic_vector(3 downto 0);
        exp_state       : out    vl_logic_vector(4 downto 0);
        res_out         : out    vl_logic_vector(63 downto 0)
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
    attribute mti_svvh_generic_type of INIT_STATE : constant is 1;
    attribute mti_svvh_generic_type of LOAD_M_E : constant is 1;
    attribute mti_svvh_generic_type of LOAD_N : constant is 1;
    attribute mti_svvh_generic_type of WAIT_COMPUTE : constant is 1;
    attribute mti_svvh_generic_type of CALC_M_BAR : constant is 1;
    attribute mti_svvh_generic_type of GET_K_E : constant is 1;
    attribute mti_svvh_generic_type of BIGLOOP : constant is 1;
    attribute mti_svvh_generic_type of CALC_C_BAR_M_BAR : constant is 1;
    attribute mti_svvh_generic_type of CALC_C_BAR_1 : constant is 1;
    attribute mti_svvh_generic_type of COMPLETE : constant is 1;
    attribute mti_svvh_generic_type of OUTPUT_RESULT : constant is 1;
    attribute mti_svvh_generic_type of TERMINAL : constant is 1;
end ModExp;
