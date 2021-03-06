-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2.2 (64-bit)
-- Version: 2020.2.2
-- Copyright (C) Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity colordetect_accel_xfMat2axis_24_0_2160_3840_1_s is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    imgOutput_4105_dout : IN STD_LOGIC_VECTOR (7 downto 0);
    imgOutput_4105_empty_n : IN STD_LOGIC;
    imgOutput_4105_read : OUT STD_LOGIC;
    img_rows_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    img_rows_empty_n : IN STD_LOGIC;
    img_rows_read : OUT STD_LOGIC;
    img_cols_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    img_cols_empty_n : IN STD_LOGIC;
    img_cols_read : OUT STD_LOGIC;
    dst_TDATA : OUT STD_LOGIC_VECTOR (23 downto 0);
    dst_TVALID : OUT STD_LOGIC;
    dst_TREADY : IN STD_LOGIC;
    dst_TKEEP : OUT STD_LOGIC_VECTOR (2 downto 0);
    dst_TSTRB : OUT STD_LOGIC_VECTOR (2 downto 0);
    dst_TUSER : OUT STD_LOGIC_VECTOR (0 downto 0);
    dst_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    dst_TID : OUT STD_LOGIC_VECTOR (0 downto 0);
    dst_TDEST : OUT STD_LOGIC_VECTOR (0 downto 0) );
end;


architecture behav of colordetect_accel_xfMat2axis_24_0_2160_3840_1_s is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_state1 : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    constant ap_ST_fsm_state2 : STD_LOGIC_VECTOR (3 downto 0) := "0010";
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (3 downto 0) := "0100";
    constant ap_ST_fsm_state6 : STD_LOGIC_VECTOR (3 downto 0) := "1000";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_lv32_2 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000010";
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv12_0 : STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
    constant ap_const_lv3_7 : STD_LOGIC_VECTOR (2 downto 0) := "111";
    constant ap_const_lv3_0 : STD_LOGIC_VECTOR (2 downto 0) := "000";
    constant ap_const_lv32_FFFFFFFF : STD_LOGIC_VECTOR (31 downto 0) := "11111111111111111111111111111111";
    constant ap_const_lv12_1 : STD_LOGIC_VECTOR (11 downto 0) := "000000000001";

attribute shreg_extract : string;
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal imgOutput_4105_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln107_reg_249 : STD_LOGIC_VECTOR (0 downto 0);
    signal img_rows_blk_n : STD_LOGIC;
    signal img_cols_blk_n : STD_LOGIC;
    signal dst_TDATA_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal icmp_ln107_reg_249_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal j_reg_137 : STD_LOGIC_VECTOR (11 downto 0);
    signal rows_reg_210 : STD_LOGIC_VECTOR (31 downto 0);
    signal cols_reg_215 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_i_fu_148_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub_i_reg_220 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub9_i_fu_154_p2 : STD_LOGIC_VECTOR (31 downto 0);
    signal sub9_i_reg_225 : STD_LOGIC_VECTOR (31 downto 0);
    signal i_1_fu_160_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal i_1_reg_230 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal regslice_both_dst_V_data_V_U_apdone_blk : STD_LOGIC;
    signal icmp_ln105_fu_170_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln112_fu_175_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln112_reg_239 : STD_LOGIC_VECTOR (0 downto 0);
    signal j_1_fu_180_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_io : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state5_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal icmp_ln107_fu_190_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_last_V_fu_200_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal axi_last_V_reg_253 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal i_reg_126 : STD_LOGIC_VECTOR (11 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_block_state1 : BOOLEAN;
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln105_fu_166_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal zext_ln107_fu_186_p1 : STD_LOGIC_VECTOR (31 downto 0);
    signal icmp_ln112_1_fu_195_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal dst_TDATA_int_regslice : STD_LOGIC_VECTOR (23 downto 0);
    signal dst_TVALID_int_regslice : STD_LOGIC;
    signal dst_TREADY_int_regslice : STD_LOGIC;
    signal regslice_both_dst_V_data_V_U_vld_out : STD_LOGIC;
    signal regslice_both_dst_V_keep_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_dst_V_keep_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_dst_V_keep_V_U_vld_out : STD_LOGIC;
    signal regslice_both_dst_V_strb_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_dst_V_strb_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_dst_V_strb_V_U_vld_out : STD_LOGIC;
    signal regslice_both_dst_V_user_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_dst_V_user_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_dst_V_user_V_U_vld_out : STD_LOGIC;
    signal regslice_both_dst_V_last_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_dst_V_last_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_dst_V_last_V_U_vld_out : STD_LOGIC;
    signal regslice_both_dst_V_id_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_dst_V_id_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_dst_V_id_V_U_vld_out : STD_LOGIC;
    signal regslice_both_dst_V_dest_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_dst_V_dest_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_dst_V_dest_V_U_vld_out : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component colordetect_accel_regslice_both IS
    generic (
        DataWidth : INTEGER );
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        data_in : IN STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_in : IN STD_LOGIC;
        ack_in : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR (DataWidth-1 downto 0);
        vld_out : OUT STD_LOGIC;
        ack_out : IN STD_LOGIC;
        apdone_blk : OUT STD_LOGIC );
    end component;



begin
    regslice_both_dst_V_data_V_U : component colordetect_accel_regslice_both
    generic map (
        DataWidth => 24)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => dst_TDATA_int_regslice,
        vld_in => dst_TVALID_int_regslice,
        ack_in => dst_TREADY_int_regslice,
        data_out => dst_TDATA,
        vld_out => regslice_both_dst_V_data_V_U_vld_out,
        ack_out => dst_TREADY,
        apdone_blk => regslice_both_dst_V_data_V_U_apdone_blk);

    regslice_both_dst_V_keep_V_U : component colordetect_accel_regslice_both
    generic map (
        DataWidth => 3)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => ap_const_lv3_7,
        vld_in => dst_TVALID_int_regslice,
        ack_in => regslice_both_dst_V_keep_V_U_ack_in_dummy,
        data_out => dst_TKEEP,
        vld_out => regslice_both_dst_V_keep_V_U_vld_out,
        ack_out => dst_TREADY,
        apdone_blk => regslice_both_dst_V_keep_V_U_apdone_blk);

    regslice_both_dst_V_strb_V_U : component colordetect_accel_regslice_both
    generic map (
        DataWidth => 3)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => ap_const_lv3_0,
        vld_in => dst_TVALID_int_regslice,
        ack_in => regslice_both_dst_V_strb_V_U_ack_in_dummy,
        data_out => dst_TSTRB,
        vld_out => regslice_both_dst_V_strb_V_U_vld_out,
        ack_out => dst_TREADY,
        apdone_blk => regslice_both_dst_V_strb_V_U_apdone_blk);

    regslice_both_dst_V_user_V_U : component colordetect_accel_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => ap_const_lv1_0,
        vld_in => dst_TVALID_int_regslice,
        ack_in => regslice_both_dst_V_user_V_U_ack_in_dummy,
        data_out => dst_TUSER,
        vld_out => regslice_both_dst_V_user_V_U_vld_out,
        ack_out => dst_TREADY,
        apdone_blk => regslice_both_dst_V_user_V_U_apdone_blk);

    regslice_both_dst_V_last_V_U : component colordetect_accel_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => axi_last_V_reg_253,
        vld_in => dst_TVALID_int_regslice,
        ack_in => regslice_both_dst_V_last_V_U_ack_in_dummy,
        data_out => dst_TLAST,
        vld_out => regslice_both_dst_V_last_V_U_vld_out,
        ack_out => dst_TREADY,
        apdone_blk => regslice_both_dst_V_last_V_U_apdone_blk);

    regslice_both_dst_V_id_V_U : component colordetect_accel_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => ap_const_lv1_0,
        vld_in => dst_TVALID_int_regslice,
        ack_in => regslice_both_dst_V_id_V_U_ack_in_dummy,
        data_out => dst_TID,
        vld_out => regslice_both_dst_V_id_V_U_vld_out,
        ack_out => dst_TREADY,
        apdone_blk => regslice_both_dst_V_id_V_U_apdone_blk);

    regslice_both_dst_V_dest_V_U : component colordetect_accel_regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => ap_const_lv1_0,
        vld_in => dst_TVALID_int_regslice,
        ack_in => regslice_both_dst_V_dest_V_U_ack_in_dummy,
        data_out => dst_TDEST,
        vld_out => regslice_both_dst_V_dest_V_U_vld_out,
        ack_out => dst_TREADY,
        apdone_blk => regslice_both_dst_V_dest_V_U_apdone_blk);





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
                elsif (((regslice_both_dst_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln105_fu_170_p2 = ap_const_lv1_0))) then 
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
                if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((regslice_both_dst_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln105_fu_170_p2 = ap_const_lv1_1))) then 
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
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then
                    if ((ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3)) then 
                        ap_enable_reg_pp0_iter1 <= (ap_const_logic_1 xor ap_condition_pp0_exit_iter0_state3);
                    elsif ((ap_const_boolean_1 = ap_const_boolean_1)) then 
                        ap_enable_reg_pp0_iter1 <= ap_enable_reg_pp0_iter0;
                    end if;
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
                elsif (((regslice_both_dst_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln105_fu_170_p2 = ap_const_lv1_1))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_reg_126_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (img_cols_empty_n = ap_const_logic_0) or (img_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_reg_126 <= ap_const_lv12_0;
            elsif ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                i_reg_126 <= i_1_reg_230;
            end if; 
        end if;
    end process;

    j_reg_137_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln107_fu_190_p2 = ap_const_lv1_1) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) then 
                j_reg_137 <= j_1_fu_180_p2;
            elsif (((regslice_both_dst_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln105_fu_170_p2 = ap_const_lv1_1))) then 
                j_reg_137 <= ap_const_lv12_0;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (icmp_ln107_fu_190_p2 = ap_const_lv1_1))) then
                axi_last_V_reg_253 <= axi_last_V_fu_200_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state1)) then
                cols_reg_215 <= img_cols_dout;
                rows_reg_210 <= img_rows_dout;
                sub9_i_reg_225 <= sub9_i_fu_154_p2;
                sub_i_reg_220 <= sub_i_fu_148_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((regslice_both_dst_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                i_1_reg_230 <= i_1_fu_160_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                icmp_ln107_reg_249 <= icmp_ln107_fu_190_p2;
                icmp_ln107_reg_249_pp0_iter1_reg <= icmp_ln107_reg_249;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln105_fu_170_p2 = ap_const_lv1_1))) then
                icmp_ln112_reg_239 <= icmp_ln112_fu_175_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, img_rows_empty_n, img_cols_empty_n, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_CS_fsm_state2, regslice_both_dst_V_data_V_U_apdone_blk, icmp_ln105_fu_170_p2, ap_enable_reg_pp0_iter0, icmp_ln107_fu_190_p2, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (img_cols_empty_n = ap_const_logic_0) or (img_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((regslice_both_dst_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln105_fu_170_p2 = ap_const_lv1_0))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((regslice_both_dst_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln105_fu_170_p2 = ap_const_lv1_1))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (icmp_ln107_fu_190_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1))) and not(((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0)) or ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (icmp_ln107_fu_190_p2 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1)))) then
                    ap_NS_fsm <= ap_ST_fsm_state6;
                else
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                end if;
            when ap_ST_fsm_state6 => 
                ap_NS_fsm <= ap_ST_fsm_state2;
            when others =>  
                ap_NS_fsm <= "XXXX";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state6 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(imgOutput_4105_empty_n, ap_enable_reg_pp0_iter1, icmp_ln107_reg_249, ap_enable_reg_pp0_iter2, icmp_ln107_reg_249_pp0_iter1_reg, dst_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_01001 <= (((icmp_ln107_reg_249_pp0_iter1_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (dst_TREADY_int_regslice = ap_const_logic_0)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (((icmp_ln107_reg_249 = ap_const_lv1_1) and (dst_TREADY_int_regslice = ap_const_logic_0)) or ((icmp_ln107_reg_249 = ap_const_lv1_1) and (imgOutput_4105_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(imgOutput_4105_empty_n, ap_enable_reg_pp0_iter1, icmp_ln107_reg_249, ap_enable_reg_pp0_iter2, icmp_ln107_reg_249_pp0_iter1_reg, ap_block_state4_io, ap_block_state5_io, dst_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state5_io) or ((icmp_ln107_reg_249_pp0_iter1_reg = ap_const_lv1_1) and (dst_TREADY_int_regslice = ap_const_logic_0)))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state4_io) or ((icmp_ln107_reg_249 = ap_const_lv1_1) and (dst_TREADY_int_regslice = ap_const_logic_0)) or ((icmp_ln107_reg_249 = ap_const_lv1_1) and (imgOutput_4105_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(imgOutput_4105_empty_n, ap_enable_reg_pp0_iter1, icmp_ln107_reg_249, ap_enable_reg_pp0_iter2, icmp_ln107_reg_249_pp0_iter1_reg, ap_block_state4_io, ap_block_state5_io, dst_TREADY_int_regslice)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state5_io) or ((icmp_ln107_reg_249_pp0_iter1_reg = ap_const_lv1_1) and (dst_TREADY_int_regslice = ap_const_logic_0)))) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state4_io) or ((icmp_ln107_reg_249 = ap_const_lv1_1) and (dst_TREADY_int_regslice = ap_const_logic_0)) or ((icmp_ln107_reg_249 = ap_const_lv1_1) and (imgOutput_4105_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, img_rows_empty_n, img_cols_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (img_cols_empty_n = ap_const_logic_0) or (img_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_io_assign_proc : process(icmp_ln107_reg_249, dst_TREADY_int_regslice)
    begin
                ap_block_state4_io <= ((icmp_ln107_reg_249 = ap_const_lv1_1) and (dst_TREADY_int_regslice = ap_const_logic_0));
    end process;


    ap_block_state4_pp0_stage0_iter1_assign_proc : process(imgOutput_4105_empty_n, icmp_ln107_reg_249, dst_TREADY_int_regslice)
    begin
                ap_block_state4_pp0_stage0_iter1 <= (((icmp_ln107_reg_249 = ap_const_lv1_1) and (dst_TREADY_int_regslice = ap_const_logic_0)) or ((icmp_ln107_reg_249 = ap_const_lv1_1) and (imgOutput_4105_empty_n = ap_const_logic_0)));
    end process;


    ap_block_state5_io_assign_proc : process(icmp_ln107_reg_249_pp0_iter1_reg, dst_TREADY_int_regslice)
    begin
                ap_block_state5_io <= ((icmp_ln107_reg_249_pp0_iter1_reg = ap_const_lv1_1) and (dst_TREADY_int_regslice = ap_const_logic_0));
    end process;


    ap_block_state5_pp0_stage0_iter2_assign_proc : process(icmp_ln107_reg_249_pp0_iter1_reg, dst_TREADY_int_regslice)
    begin
                ap_block_state5_pp0_stage0_iter2 <= ((icmp_ln107_reg_249_pp0_iter1_reg = ap_const_lv1_1) and (dst_TREADY_int_regslice = ap_const_logic_0));
    end process;


    ap_condition_pp0_exit_iter0_state3_assign_proc : process(icmp_ln107_fu_190_p2)
    begin
        if ((icmp_ln107_fu_190_p2 = ap_const_lv1_0)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, ap_CS_fsm_state2, regslice_both_dst_V_data_V_U_apdone_blk, icmp_ln105_fu_170_p2)
    begin
        if (((regslice_both_dst_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln105_fu_170_p2 = ap_const_lv1_0))) then 
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


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, ap_enable_reg_pp0_iter0)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_ready_assign_proc : process(ap_CS_fsm_state2, regslice_both_dst_V_data_V_U_apdone_blk, icmp_ln105_fu_170_p2)
    begin
        if (((regslice_both_dst_V_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state2) and (icmp_ln105_fu_170_p2 = ap_const_lv1_0))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;

    axi_last_V_fu_200_p2 <= (icmp_ln112_reg_239 and icmp_ln112_1_fu_195_p2);

    dst_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln107_reg_249, ap_enable_reg_pp0_iter2, icmp_ln107_reg_249_pp0_iter1_reg, dst_TREADY_int_regslice)
    begin
        if ((((icmp_ln107_reg_249_pp0_iter1_reg = ap_const_lv1_1) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0)) or ((icmp_ln107_reg_249 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            dst_TDATA_blk_n <= dst_TREADY_int_regslice;
        else 
            dst_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst_TDATA_int_regslice <= std_logic_vector(IEEE.numeric_std.resize(unsigned(imgOutput_4105_dout),24));
    dst_TVALID <= regslice_both_dst_V_data_V_U_vld_out;

    dst_TVALID_int_regslice_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln107_reg_249, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln107_reg_249 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            dst_TVALID_int_regslice <= ap_const_logic_1;
        else 
            dst_TVALID_int_regslice <= ap_const_logic_0;
        end if; 
    end process;

    i_1_fu_160_p2 <= std_logic_vector(unsigned(i_reg_126) + unsigned(ap_const_lv12_1));
    icmp_ln105_fu_170_p2 <= "1" when (signed(zext_ln105_fu_166_p1) < signed(rows_reg_210)) else "0";
    icmp_ln107_fu_190_p2 <= "1" when (signed(zext_ln107_fu_186_p1) < signed(cols_reg_215)) else "0";
    icmp_ln112_1_fu_195_p2 <= "1" when (zext_ln107_fu_186_p1 = sub_i_reg_220) else "0";
    icmp_ln112_fu_175_p2 <= "1" when (zext_ln105_fu_166_p1 = sub9_i_reg_225) else "0";

    imgOutput_4105_blk_n_assign_proc : process(imgOutput_4105_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln107_reg_249)
    begin
        if (((icmp_ln107_reg_249 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            imgOutput_4105_blk_n <= imgOutput_4105_empty_n;
        else 
            imgOutput_4105_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    imgOutput_4105_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln107_reg_249, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln107_reg_249 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            imgOutput_4105_read <= ap_const_logic_1;
        else 
            imgOutput_4105_read <= ap_const_logic_0;
        end if; 
    end process;


    img_cols_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, img_cols_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            img_cols_blk_n <= img_cols_empty_n;
        else 
            img_cols_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    img_cols_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, img_rows_empty_n, img_cols_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (img_cols_empty_n = ap_const_logic_0) or (img_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            img_cols_read <= ap_const_logic_1;
        else 
            img_cols_read <= ap_const_logic_0;
        end if; 
    end process;


    img_rows_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, img_rows_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            img_rows_blk_n <= img_rows_empty_n;
        else 
            img_rows_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    img_rows_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, img_rows_empty_n, img_cols_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (img_cols_empty_n = ap_const_logic_0) or (img_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            img_rows_read <= ap_const_logic_1;
        else 
            img_rows_read <= ap_const_logic_0;
        end if; 
    end process;

    j_1_fu_180_p2 <= std_logic_vector(unsigned(j_reg_137) + unsigned(ap_const_lv12_1));
    sub9_i_fu_154_p2 <= std_logic_vector(unsigned(img_rows_dout) + unsigned(ap_const_lv32_FFFFFFFF));
    sub_i_fu_148_p2 <= std_logic_vector(unsigned(img_cols_dout) + unsigned(ap_const_lv32_FFFFFFFF));
    zext_ln105_fu_166_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_reg_126),32));
    zext_ln107_fu_186_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_reg_137),32));
end behav;
