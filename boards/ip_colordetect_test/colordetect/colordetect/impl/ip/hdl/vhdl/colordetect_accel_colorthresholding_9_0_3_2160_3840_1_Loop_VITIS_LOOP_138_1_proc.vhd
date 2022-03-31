-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
-- Version: 2020.2.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity colordetect_accel_colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    low_thresh_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    low_thresh_ce0 : OUT STD_LOGIC;
    low_thresh_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    low_thresh_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    low_thresh_ce1 : OUT STD_LOGIC;
    low_thresh_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    high_thresh_address0 : OUT STD_LOGIC_VECTOR (3 downto 0);
    high_thresh_ce0 : OUT STD_LOGIC;
    high_thresh_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    high_thresh_address1 : OUT STD_LOGIC_VECTOR (3 downto 0);
    high_thresh_ce1 : OUT STD_LOGIC;
    high_thresh_q1 : IN STD_LOGIC_VECTOR (7 downto 0);
    ap_return_0 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_1 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_2 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_3 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_4 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_5 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_6 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_7 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_8 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_9 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_10 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_11 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_12 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_13 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_14 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_15 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_16 : OUT STD_LOGIC_VECTOR (7 downto 0);
    ap_return_17 : OUT STD_LOGIC_VECTOR (7 downto 0) );
end;


architecture behav of colordetect_accel_colorthresholding_9_0_3_2160_3840_1_Loop_VITIS_LOOP_138_1_proc is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage1 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state5 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv2_0 : STD_LOGIC_VECTOR (1 downto 0) := "00";
    constant ap_const_lv4_0 : STD_LOGIC_VECTOR (3 downto 0) := "0000";
    constant ap_const_lv2_1 : STD_LOGIC_VECTOR (1 downto 0) := "01";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv2_3 : STD_LOGIC_VECTOR (1 downto 0) := "11";
    constant ap_const_lv3_1 : STD_LOGIC_VECTOR (2 downto 0) := "001";
    constant ap_const_lv4_3 : STD_LOGIC_VECTOR (3 downto 0) := "0011";
    constant ap_const_lv4_2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal i_reg_178 : STD_LOGIC_VECTOR (1 downto 0);
    signal j_reg_190 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln138_fu_201_p2 : STD_LOGIC_VECTOR (1 downto 0);
    signal add_ln138_reg_616 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state2_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln138_fu_207_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln138_reg_621 : STD_LOGIC_VECTOR (0 downto 0);
    signal trunc_ln144_fu_219_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal trunc_ln144_reg_630 : STD_LOGIC_VECTOR (2 downto 0);
    signal add_ln149_fu_235_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln149_reg_650 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_CS_fsm_pp0_stage1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage1 : signal is "none";
    signal ap_block_state3_pp0_stage1_iter0 : BOOLEAN;
    signal ap_block_pp0_stage1_11001 : BOOLEAN;
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state2 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage1_subdone : BOOLEAN;
    signal ap_phi_mux_i_phi_fu_182_p4 : STD_LOGIC_VECTOR (1 downto 0);
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_phi_mux_j_phi_fu_194_p4 : STD_LOGIC_VECTOR (3 downto 0);
    signal zext_ln138_fu_213_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln144_fu_229_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal zext_ln145_fu_250_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_block_pp0_stage1 : BOOLEAN;
    signal high_th_2_2_fu_40 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_CS_fsm_state5 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state5 : signal is "none";
    signal high_th_2_1_fu_44 : STD_LOGIC_VECTOR (7 downto 0);
    signal low_th_2_0_fu_48 : STD_LOGIC_VECTOR (7 downto 0);
    signal high_th_2_0_fu_52 : STD_LOGIC_VECTOR (7 downto 0);
    signal low_th_2_2_fu_56 : STD_LOGIC_VECTOR (7 downto 0);
    signal low_th_2_1_fu_60 : STD_LOGIC_VECTOR (7 downto 0);
    signal low_th_2_1_1_fu_64 : STD_LOGIC_VECTOR (7 downto 0);
    signal low_th_2_0_1_fu_68 : STD_LOGIC_VECTOR (7 downto 0);
    signal low_th_2_2_1_fu_72 : STD_LOGIC_VECTOR (7 downto 0);
    signal high_th_2_2_1_fu_76 : STD_LOGIC_VECTOR (7 downto 0);
    signal high_th_2_1_1_fu_80 : STD_LOGIC_VECTOR (7 downto 0);
    signal high_th_2_0_1_fu_84 : STD_LOGIC_VECTOR (7 downto 0);
    signal high_th_2_0_2_fu_88 : STD_LOGIC_VECTOR (7 downto 0);
    signal low_th_2_2_2_fu_92 : STD_LOGIC_VECTOR (7 downto 0);
    signal high_th_2_1_2_fu_96 : STD_LOGIC_VECTOR (7 downto 0);
    signal low_th_2_1_2_fu_100 : STD_LOGIC_VECTOR (7 downto 0);
    signal low_th_2_0_2_fu_104 : STD_LOGIC_VECTOR (7 downto 0);
    signal high_th_2_2_2_fu_108 : STD_LOGIC_VECTOR (7 downto 0);
    signal add_ln144_fu_223_p2 : STD_LOGIC_VECTOR (2 downto 0);
    signal zext_ln144_1_fu_241_p1 : STD_LOGIC_VECTOR (3 downto 0);
    signal add_ln145_fu_244_p2 : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;


begin




    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_state1;
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
                if ((ap_continue = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter0_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
            else
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state2))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_1;
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
                if ((((ap_const_boolean_0 = ap_block_pp0_stage1_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
                    ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_178_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln138_reg_621 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                i_reg_178 <= add_ln138_reg_616;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_178 <= ap_const_lv2_0;
            end if; 
        end if;
    end process;

    j_reg_190_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln138_reg_621 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
                j_reg_190 <= add_ln149_reg_650;
            elsif ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                j_reg_190 <= ap_const_lv4_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln138_reg_616 <= add_ln138_fu_201_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln138_fu_207_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                add_ln149_reg_650 <= add_ln149_fu_235_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln138_reg_621 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (i_reg_178 = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                high_th_2_0_1_fu_84 <= high_thresh_q1;
                high_th_2_1_2_fu_96 <= high_thresh_q0;
                low_th_2_0_fu_48 <= low_thresh_q1;
                low_th_2_1_fu_60 <= low_thresh_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln138_reg_621 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (i_reg_178 = ap_const_lv2_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                high_th_2_0_2_fu_88 <= high_thresh_q1;
                high_th_2_1_1_fu_80 <= high_thresh_q0;
                low_th_2_0_2_fu_104 <= low_thresh_q1;
                low_th_2_1_2_fu_100 <= low_thresh_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((i_reg_178 = ap_const_lv2_1)) and not((i_reg_178 = ap_const_lv2_0)) and (icmp_ln138_reg_621 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then
                high_th_2_0_fu_52 <= high_thresh_q1;
                high_th_2_1_fu_44 <= high_thresh_q0;
                low_th_2_0_1_fu_68 <= low_thresh_q1;
                low_th_2_1_1_fu_64 <= low_thresh_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (i_reg_178 = ap_const_lv2_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then
                high_th_2_2_1_fu_76 <= high_thresh_q0;
                low_th_2_2_2_fu_92 <= low_thresh_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (i_reg_178 = ap_const_lv2_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then
                high_th_2_2_2_fu_108 <= high_thresh_q0;
                low_th_2_2_1_fu_72 <= low_thresh_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not((i_reg_178 = ap_const_lv2_1)) and not((i_reg_178 = ap_const_lv2_0)) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then
                high_th_2_2_fu_40 <= high_thresh_q0;
                low_th_2_2_fu_56 <= low_thresh_q0;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln138_reg_621 <= icmp_ln138_fu_207_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln138_fu_207_p2 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                trunc_ln144_reg_630 <= trunc_ln144_fu_219_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, ap_enable_reg_pp0_iter0, icmp_ln138_fu_207_p2, ap_block_pp0_stage0_subdone, ap_block_pp0_stage1_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((icmp_ln138_fu_207_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                elsif (((icmp_ln138_fu_207_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then
                    ap_NS_fsm <= ap_ST_fsm_state5;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_pp0_stage1 => 
                if ((ap_const_boolean_0 = ap_block_pp0_stage1_subdone)) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage1;
                end if;
            when ap_ST_fsm_state5 => 
                ap_NS_fsm <= ap_ST_fsm_state1;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    add_ln138_fu_201_p2 <= std_logic_vector(unsigned(ap_phi_mux_i_phi_fu_182_p4) + unsigned(ap_const_lv2_1));
    add_ln144_fu_223_p2 <= std_logic_vector(unsigned(trunc_ln144_fu_219_p1) + unsigned(ap_const_lv3_1));
    add_ln145_fu_244_p2 <= std_logic_vector(unsigned(zext_ln144_1_fu_241_p1) + unsigned(ap_const_lv4_2));
    add_ln149_fu_235_p2 <= std_logic_vector(unsigned(ap_phi_mux_j_phi_fu_194_p4) + unsigned(ap_const_lv4_3));
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(1);
    ap_CS_fsm_pp0_stage1 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state5 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage0_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_11001 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_pp0_stage1_subdone <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state1_assign_proc : process(ap_start, ap_done_reg)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state2_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state3_pp0_stage1_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state4_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state2_assign_proc : process(icmp_ln138_fu_207_p2)
    begin
        if ((icmp_ln138_fu_207_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state2 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_done <= ap_const_logic_1;
        else 
            ap_done <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);

    ap_idle_assign_proc : process(ap_start, ap_CS_fsm_state1)
    begin
        if (((ap_start = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1)
    begin
        if (((ap_enable_reg_pp0_iter0 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_phi_mux_i_phi_fu_182_p4_assign_proc : process(i_reg_178, add_ln138_reg_616, ap_CS_fsm_pp0_stage0, icmp_ln138_reg_621, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((icmp_ln138_reg_621 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            ap_phi_mux_i_phi_fu_182_p4 <= add_ln138_reg_616;
        else 
            ap_phi_mux_i_phi_fu_182_p4 <= i_reg_178;
        end if; 
    end process;


    ap_phi_mux_j_phi_fu_194_p4_assign_proc : process(j_reg_190, ap_CS_fsm_pp0_stage0, icmp_ln138_reg_621, add_ln149_reg_650, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0)
    begin
        if (((icmp_ln138_reg_621 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1))) then 
            ap_phi_mux_j_phi_fu_194_p4 <= add_ln149_reg_650;
        else 
            ap_phi_mux_j_phi_fu_194_p4 <= j_reg_190;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state5)
    begin
        if ((ap_const_logic_1 = ap_CS_fsm_state5)) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    ap_return_0 <= low_th_2_0_fu_48;
    ap_return_1 <= low_th_2_1_fu_60;
    ap_return_10 <= high_th_2_1_1_fu_80;
    ap_return_11 <= high_th_2_2_1_fu_76;
    ap_return_12 <= low_th_2_0_1_fu_68;
    ap_return_13 <= low_th_2_1_1_fu_64;
    ap_return_14 <= low_th_2_2_fu_56;
    ap_return_15 <= high_th_2_0_fu_52;
    ap_return_16 <= high_th_2_1_fu_44;
    ap_return_17 <= high_th_2_2_fu_40;
    ap_return_2 <= low_th_2_2_1_fu_72;
    ap_return_3 <= high_th_2_0_1_fu_84;
    ap_return_4 <= high_th_2_1_2_fu_96;
    ap_return_5 <= high_th_2_2_2_fu_108;
    ap_return_6 <= low_th_2_0_2_fu_104;
    ap_return_7 <= low_th_2_1_2_fu_100;
    ap_return_8 <= low_th_2_2_2_fu_92;
    ap_return_9 <= high_th_2_0_2_fu_88;

    high_thresh_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, zext_ln144_fu_229_p1, zext_ln145_fu_250_p1, ap_block_pp0_stage1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                high_thresh_address0 <= zext_ln145_fu_250_p1(4 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                high_thresh_address0 <= zext_ln144_fu_229_p1(4 - 1 downto 0);
            else 
                high_thresh_address0 <= "XXXX";
            end if;
        else 
            high_thresh_address0 <= "XXXX";
        end if; 
    end process;

    high_thresh_address1 <= zext_ln138_fu_213_p1(4 - 1 downto 0);

    high_thresh_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            high_thresh_ce0 <= ap_const_logic_1;
        else 
            high_thresh_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    high_thresh_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            high_thresh_ce1 <= ap_const_logic_1;
        else 
            high_thresh_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    icmp_ln138_fu_207_p2 <= "1" when (ap_phi_mux_i_phi_fu_182_p4 = ap_const_lv2_3) else "0";

    low_thresh_address0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage0, zext_ln144_fu_229_p1, zext_ln145_fu_250_p1, ap_block_pp0_stage1)
    begin
        if ((ap_enable_reg_pp0_iter0 = ap_const_logic_1)) then
            if (((ap_const_boolean_0 = ap_block_pp0_stage1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1))) then 
                low_thresh_address0 <= zext_ln145_fu_250_p1(4 - 1 downto 0);
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                low_thresh_address0 <= zext_ln144_fu_229_p1(4 - 1 downto 0);
            else 
                low_thresh_address0 <= "XXXX";
            end if;
        else 
            low_thresh_address0 <= "XXXX";
        end if; 
    end process;

    low_thresh_address1 <= zext_ln138_fu_213_p1(4 - 1 downto 0);

    low_thresh_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001, ap_CS_fsm_pp0_stage1, ap_block_pp0_stage1_11001)
    begin
        if ((((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)) or ((ap_const_boolean_0 = ap_block_pp0_stage1_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage1)))) then 
            low_thresh_ce0 <= ap_const_logic_1;
        else 
            low_thresh_ce0 <= ap_const_logic_0;
        end if; 
    end process;


    low_thresh_ce1_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            low_thresh_ce1 <= ap_const_logic_1;
        else 
            low_thresh_ce1 <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln144_fu_219_p1 <= ap_phi_mux_j_phi_fu_194_p4(3 - 1 downto 0);
    zext_ln138_fu_213_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(ap_phi_mux_j_phi_fu_194_p4),64));
    zext_ln144_1_fu_241_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln144_reg_630),4));
    zext_ln144_fu_229_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln144_fu_223_p2),64));
    zext_ln145_fu_250_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(add_ln145_fu_244_p2),64));
end behav;
