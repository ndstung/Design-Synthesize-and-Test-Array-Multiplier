-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
-- Version: 2021.1
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity systolic_array_systolic_array_Pipeline_VITIS_LOOP_27_5 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    tmp : IN STD_LOGIC_VECTOR (15 downto 0);
    i_1_t33_mid2 : IN STD_LOGIC_VECTOR (1 downto 0);
    local_A_V_0_0_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_A_V_0_1_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_A_V_0_2_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_A_V_0_3_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_A_V_1_0_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_A_V_1_1_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_A_V_1_2_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_A_V_1_3_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_A_V_2_0_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_A_V_2_1_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_A_V_2_2_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_A_V_2_3_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_A_V_3_0_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_A_V_3_1_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_A_V_3_2_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_A_V_3_3_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    j_1_t : IN STD_LOGIC_VECTOR (1 downto 0);
    local_B_V_0_0_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_B_V_0_1_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_B_V_0_2_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_B_V_0_3_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_B_V_1_0_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_B_V_1_1_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_B_V_1_2_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_B_V_1_3_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_B_V_2_0_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_B_V_2_1_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_B_V_2_2_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_B_V_2_3_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_B_V_3_0_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_B_V_3_1_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_B_V_3_2_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    local_B_V_3_3_1_reload : IN STD_LOGIC_VECTOR (15 downto 0);
    buffer_V_3_0_out : OUT STD_LOGIC_VECTOR (15 downto 0);
    buffer_V_3_0_out_ap_vld : OUT STD_LOGIC );
end;


architecture behav of systolic_array_systolic_array_Pipeline_VITIS_LOOP_27_5 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv3_4 : STD_LOGIC_VECTOR (2 downto 0) := "100";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv8_0 : STD_LOGIC_VECTOR (7 downto 0) := "00000000";
    constant ap_const_lv32_8 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001000";
    constant ap_const_lv32_17 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000010111";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter3 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter3 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal icmp_ln27_fu_352_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter0_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln27_reg_534 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln27_reg_534_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal lhs_fu_114 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_sig_allocacmp_lhs_load_1 : STD_LOGIC_VECTOR (15 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_loop_init : STD_LOGIC;
    signal k_fu_118 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_sig_allocacmp_k_1 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln27_fu_358_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal trunc_ln1169_fu_364_p1 : STD_LOGIC_VECTOR (1 downto 0);
    signal tmp_4_fu_368_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal r_V_fu_380_p17 : STD_LOGIC_VECTOR (4 downto 0);
    signal r_V_fu_380_p18 : STD_LOGIC_VECTOR (15 downto 0);
    signal tmp_5_fu_422_p3 : STD_LOGIC_VECTOR (3 downto 0);
    signal tmp_2_fu_434_p17 : STD_LOGIC_VECTOR (4 downto 0);
    signal tmp_2_fu_434_p18 : STD_LOGIC_VECTOR (15 downto 0);
    signal trunc_ln1_fu_492_p1 : STD_LOGIC_VECTOR (23 downto 0);
    signal grp_fu_510_p3 : STD_LOGIC_VECTOR (23 downto 0);
    signal grp_fu_510_p2 : STD_LOGIC_VECTOR (23 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter1_reg : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component systolic_array_mux_165_16_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        din9_WIDTH : INTEGER;
        din10_WIDTH : INTEGER;
        din11_WIDTH : INTEGER;
        din12_WIDTH : INTEGER;
        din13_WIDTH : INTEGER;
        din14_WIDTH : INTEGER;
        din15_WIDTH : INTEGER;
        din16_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        din2 : IN STD_LOGIC_VECTOR (15 downto 0);
        din3 : IN STD_LOGIC_VECTOR (15 downto 0);
        din4 : IN STD_LOGIC_VECTOR (15 downto 0);
        din5 : IN STD_LOGIC_VECTOR (15 downto 0);
        din6 : IN STD_LOGIC_VECTOR (15 downto 0);
        din7 : IN STD_LOGIC_VECTOR (15 downto 0);
        din8 : IN STD_LOGIC_VECTOR (15 downto 0);
        din9 : IN STD_LOGIC_VECTOR (15 downto 0);
        din10 : IN STD_LOGIC_VECTOR (15 downto 0);
        din11 : IN STD_LOGIC_VECTOR (15 downto 0);
        din12 : IN STD_LOGIC_VECTOR (15 downto 0);
        din13 : IN STD_LOGIC_VECTOR (15 downto 0);
        din14 : IN STD_LOGIC_VECTOR (15 downto 0);
        din15 : IN STD_LOGIC_VECTOR (15 downto 0);
        din16 : IN STD_LOGIC_VECTOR (4 downto 0);
        dout : OUT STD_LOGIC_VECTOR (15 downto 0) );
    end component;


    component systolic_array_mac_muladd_16s_16s_24ns_24_4_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        din0 : IN STD_LOGIC_VECTOR (15 downto 0);
        din1 : IN STD_LOGIC_VECTOR (15 downto 0);
        din2 : IN STD_LOGIC_VECTOR (23 downto 0);
        ce : IN STD_LOGIC;
        dout : OUT STD_LOGIC_VECTOR (23 downto 0) );
    end component;


    component systolic_array_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mux_165_16_1_1_U81 : component systolic_array_mux_165_16_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 16,
        din3_WIDTH => 16,
        din4_WIDTH => 16,
        din5_WIDTH => 16,
        din6_WIDTH => 16,
        din7_WIDTH => 16,
        din8_WIDTH => 16,
        din9_WIDTH => 16,
        din10_WIDTH => 16,
        din11_WIDTH => 16,
        din12_WIDTH => 16,
        din13_WIDTH => 16,
        din14_WIDTH => 16,
        din15_WIDTH => 16,
        din16_WIDTH => 5,
        dout_WIDTH => 16)
    port map (
        din0 => local_A_V_0_0_1_reload,
        din1 => local_A_V_0_1_1_reload,
        din2 => local_A_V_0_2_1_reload,
        din3 => local_A_V_0_3_1_reload,
        din4 => local_A_V_1_0_1_reload,
        din5 => local_A_V_1_1_1_reload,
        din6 => local_A_V_1_2_1_reload,
        din7 => local_A_V_1_3_1_reload,
        din8 => local_A_V_2_0_1_reload,
        din9 => local_A_V_2_1_1_reload,
        din10 => local_A_V_2_2_1_reload,
        din11 => local_A_V_2_3_1_reload,
        din12 => local_A_V_3_0_1_reload,
        din13 => local_A_V_3_1_1_reload,
        din14 => local_A_V_3_2_1_reload,
        din15 => local_A_V_3_3_1_reload,
        din16 => r_V_fu_380_p17,
        dout => r_V_fu_380_p18);

    mux_165_16_1_1_U82 : component systolic_array_mux_165_16_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 16,
        din3_WIDTH => 16,
        din4_WIDTH => 16,
        din5_WIDTH => 16,
        din6_WIDTH => 16,
        din7_WIDTH => 16,
        din8_WIDTH => 16,
        din9_WIDTH => 16,
        din10_WIDTH => 16,
        din11_WIDTH => 16,
        din12_WIDTH => 16,
        din13_WIDTH => 16,
        din14_WIDTH => 16,
        din15_WIDTH => 16,
        din16_WIDTH => 5,
        dout_WIDTH => 16)
    port map (
        din0 => local_B_V_0_0_1_reload,
        din1 => local_B_V_0_1_1_reload,
        din2 => local_B_V_0_2_1_reload,
        din3 => local_B_V_0_3_1_reload,
        din4 => local_B_V_1_0_1_reload,
        din5 => local_B_V_1_1_1_reload,
        din6 => local_B_V_1_2_1_reload,
        din7 => local_B_V_1_3_1_reload,
        din8 => local_B_V_2_0_1_reload,
        din9 => local_B_V_2_1_1_reload,
        din10 => local_B_V_2_2_1_reload,
        din11 => local_B_V_2_3_1_reload,
        din12 => local_B_V_3_0_1_reload,
        din13 => local_B_V_3_1_1_reload,
        din14 => local_B_V_3_2_1_reload,
        din15 => local_B_V_3_3_1_reload,
        din16 => tmp_2_fu_434_p17,
        dout => tmp_2_fu_434_p18);

    mac_muladd_16s_16s_24ns_24_4_1_U83 : component systolic_array_mac_muladd_16s_16s_24ns_24_4_1
    generic map (
        ID => 1,
        NUM_STAGE => 4,
        din0_WIDTH => 16,
        din1_WIDTH => 16,
        din2_WIDTH => 24,
        dout_WIDTH => 24)
    port map (
        clk => ap_clk,
        reset => ap_rst,
        din0 => tmp_2_fu_434_p18,
        din1 => r_V_fu_380_p18,
        din2 => grp_fu_510_p2,
        ce => ap_const_logic_1,
        dout => grp_fu_510_p3);

    flow_control_loop_pipe_sequential_init_U : component systolic_array_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter0_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter0_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter3_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter3 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter3 <= ap_enable_reg_pp0_iter2;
                end if; 
            end if;
        end if;
    end process;


    k_fu_118_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                if (((icmp_ln27_fu_352_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                    k_fu_118 <= add_ln27_fu_358_p2;
                elsif ((ap_loop_init = ap_const_logic_1)) then 
                    k_fu_118 <= ap_const_lv3_0;
                end if;
            end if; 
        end if;
    end process;

    lhs_fu_114_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    lhs_fu_114 <= tmp;
                elsif ((ap_enable_reg_pp0_iter3 = ap_const_logic_1)) then 
                    lhs_fu_114 <= trunc_ln1_fu_492_p1(23 downto 8);
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                ap_loop_exit_ready_pp0_iter1_reg <= ap_loop_exit_ready;
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready_pp0_iter1_reg;
                icmp_ln27_reg_534 <= icmp_ln27_fu_352_p2;
                icmp_ln27_reg_534_pp0_iter1_reg <= icmp_ln27_reg_534;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    add_ln27_fu_358_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_k_1) + unsigned(ap_const_lv3_1));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_01001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter3 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_exit_pp0_iter0_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone, icmp_ln27_fu_352_p2)
    begin
        if (((icmp_ln27_fu_352_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter0_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter2_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter3)
    begin
        if (((ap_enable_reg_pp0_iter3 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter0_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_k_1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_block_pp0_stage0, ap_loop_init, k_fu_118)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
            ap_sig_allocacmp_k_1 <= ap_const_lv3_0;
        else 
            ap_sig_allocacmp_k_1 <= k_fu_118;
        end if; 
    end process;


    ap_sig_allocacmp_lhs_load_1_assign_proc : process(ap_enable_reg_pp0_iter3, lhs_fu_114, ap_block_pp0_stage0, trunc_ln1_fu_492_p1)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter3 = ap_const_logic_1))) then 
            ap_sig_allocacmp_lhs_load_1 <= trunc_ln1_fu_492_p1(23 downto 8);
        else 
            ap_sig_allocacmp_lhs_load_1 <= lhs_fu_114;
        end if; 
    end process;

    buffer_V_3_0_out <= lhs_fu_114;

    buffer_V_3_0_out_ap_vld_assign_proc : process(ap_block_pp0_stage0_11001, icmp_ln27_reg_534_pp0_iter1_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (icmp_ln27_reg_534_pp0_iter1_reg = ap_const_lv1_1))) then 
            buffer_V_3_0_out_ap_vld <= ap_const_logic_1;
        else 
            buffer_V_3_0_out_ap_vld <= ap_const_logic_0;
        end if; 
    end process;

    grp_fu_510_p2 <= (ap_sig_allocacmp_lhs_load_1 & ap_const_lv8_0);
    icmp_ln27_fu_352_p2 <= "1" when (ap_sig_allocacmp_k_1 = ap_const_lv3_4) else "0";
    r_V_fu_380_p17 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_4_fu_368_p3),5));
    tmp_2_fu_434_p17 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_5_fu_422_p3),5));
    tmp_4_fu_368_p3 <= (i_1_t33_mid2 & trunc_ln1169_fu_364_p1);
    tmp_5_fu_422_p3 <= (trunc_ln1169_fu_364_p1 & j_1_t);
    trunc_ln1169_fu_364_p1 <= ap_sig_allocacmp_k_1(2 - 1 downto 0);
    trunc_ln1_fu_492_p1 <= grp_fu_510_p3;
end behav;
