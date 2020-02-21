-- ==============================================================
-- RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and OpenCL
-- Version: 2019.2
-- Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity xfMat2axis is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_continue : IN STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    p_dst_data_V_dout : IN STD_LOGIC_VECTOR (23 downto 0);
    p_dst_data_V_empty_n : IN STD_LOGIC;
    p_dst_data_V_read : OUT STD_LOGIC;
    dst_TDATA : OUT STD_LOGIC_VECTOR (23 downto 0);
    dst_TVALID : OUT STD_LOGIC;
    dst_TREADY : IN STD_LOGIC;
    dst_TLAST : OUT STD_LOGIC_VECTOR (0 downto 0);
    dst_rows_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    dst_rows_empty_n : IN STD_LOGIC;
    dst_rows_read : OUT STD_LOGIC;
    dst_cols_dout : IN STD_LOGIC_VECTOR (31 downto 0);
    dst_cols_empty_n : IN STD_LOGIC;
    dst_cols_read : OUT STD_LOGIC );
end;


architecture behav of xfMat2axis is 
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
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_1 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000001";
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv11_0 : STD_LOGIC_VECTOR (10 downto 0) := "00000000000";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv12_FFF : STD_LOGIC_VECTOR (11 downto 0) := "111111111111";
    constant ap_const_lv11_1 : STD_LOGIC_VECTOR (10 downto 0) := "00000000001";

    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_CS_fsm : STD_LOGIC_VECTOR (3 downto 0) := "0001";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_state1 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state1 : signal is "none";
    signal p_dst_data_V_blk_n : STD_LOGIC;
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal icmp_ln54_reg_210 : STD_LOGIC_VECTOR (0 downto 0);
    signal dst_TDATA_blk_n : STD_LOGIC;
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal icmp_ln54_reg_210_pp0_iter1_reg : STD_LOGIC_VECTOR (0 downto 0);
    signal dst_rows_blk_n : STD_LOGIC;
    signal dst_cols_blk_n : STD_LOGIC;
    signal j_0_i_i_reg_92 : STD_LOGIC_VECTOR (10 downto 0);
    signal trunc_ln89_fu_103_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal trunc_ln89_reg_176 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_block_state1 : BOOLEAN;
    signal trunc_ln89_1_fu_107_p1 : STD_LOGIC_VECTOR (10 downto 0);
    signal trunc_ln89_1_reg_181 : STD_LOGIC_VECTOR (10 downto 0);
    signal add_ln58_fu_115_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_reg_186 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_1_fu_125_p2 : STD_LOGIC_VECTOR (11 downto 0);
    signal add_ln58_1_reg_191 : STD_LOGIC_VECTOR (11 downto 0);
    signal icmp_ln53_fu_135_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_CS_fsm_state2 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state2 : signal is "none";
    signal regslice_both_dst_data_V_U_apdone_blk : STD_LOGIC;
    signal i_fu_140_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal i_reg_200 : STD_LOGIC_VECTOR (10 downto 0);
    signal icmp_ln58_fu_146_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln58_reg_205 : STD_LOGIC_VECTOR (0 downto 0);
    signal icmp_ln54_fu_155_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_state3_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state4_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state4_io : BOOLEAN;
    signal ap_block_state5_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_state5_io : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal j_fu_160_p2 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC := '0';
    signal and_ln58_fu_171_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal and_ln58_reg_219 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal ap_condition_pp0_exit_iter0_state3 : STD_LOGIC;
    signal i_0_i_i_reg_81 : STD_LOGIC_VECTOR (10 downto 0);
    signal ap_CS_fsm_state6 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_state6 : signal is "none";
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal zext_ln58_fu_111_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln58_1_fu_121_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln53_fu_131_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal zext_ln54_fu_151_p1 : STD_LOGIC_VECTOR (11 downto 0);
    signal icmp_ln58_1_fu_166_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_NS_fsm : STD_LOGIC_VECTOR (3 downto 0);
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_enable_pp0 : STD_LOGIC;
    signal dst_TVALID_int : STD_LOGIC;
    signal dst_TREADY_int : STD_LOGIC;
    signal regslice_both_dst_data_V_U_vld_out : STD_LOGIC;
    signal regslice_both_dst_last_V_U_apdone_blk : STD_LOGIC;
    signal regslice_both_dst_last_V_U_ack_in_dummy : STD_LOGIC;
    signal regslice_both_dst_last_V_U_vld_out : STD_LOGIC;

    component regslice_both IS
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
    regslice_both_dst_data_V_U : component regslice_both
    generic map (
        DataWidth => 24)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => p_dst_data_V_dout,
        vld_in => dst_TVALID_int,
        ack_in => dst_TREADY_int,
        data_out => dst_TDATA,
        vld_out => regslice_both_dst_data_V_U_vld_out,
        ack_out => dst_TREADY,
        apdone_blk => regslice_both_dst_data_V_U_apdone_blk);

    regslice_both_dst_last_V_U : component regslice_both
    generic map (
        DataWidth => 1)
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        data_in => and_ln58_reg_219,
        vld_in => dst_TVALID_int,
        ack_in => regslice_both_dst_last_V_U_ack_in_dummy,
        data_out => dst_TLAST,
        vld_out => regslice_both_dst_last_V_U_vld_out,
        ack_out => dst_TREADY,
        apdone_blk => regslice_both_dst_last_V_U_apdone_blk);





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
                elsif (((regslice_both_dst_data_V_U_apdone_blk = ap_const_logic_0) and (icmp_ln53_fu_135_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_logic_1 = ap_condition_pp0_exit_iter0_state3) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                    ap_enable_reg_pp0_iter0 <= ap_const_logic_0;
                elsif (((regslice_both_dst_data_V_U_apdone_blk = ap_const_logic_0) and (icmp_ln53_fu_135_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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
                elsif (((regslice_both_dst_data_V_U_apdone_blk = ap_const_logic_0) and (icmp_ln53_fu_135_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                    ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
                end if; 
            end if;
        end if;
    end process;


    i_0_i_i_reg_81_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_logic_1 = ap_CS_fsm_state6)) then 
                i_0_i_i_reg_81 <= i_reg_200;
            elsif ((not(((ap_start = ap_const_logic_0) or (dst_cols_empty_n = ap_const_logic_0) or (dst_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
                i_0_i_i_reg_81 <= ap_const_lv11_0;
            end if; 
        end if;
    end process;

    j_0_i_i_reg_92_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((regslice_both_dst_data_V_U_apdone_blk = ap_const_logic_0) and (icmp_ln53_fu_135_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
                j_0_i_i_reg_92 <= ap_const_lv11_0;
            elsif (((icmp_ln54_fu_155_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
                j_0_i_i_reg_92 <= j_fu_160_p2;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((not(((ap_start = ap_const_logic_0) or (dst_cols_empty_n = ap_const_logic_0) or (dst_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                add_ln58_1_reg_191 <= add_ln58_1_fu_125_p2;
                add_ln58_reg_186 <= add_ln58_fu_115_p2;
                trunc_ln89_1_reg_181 <= trunc_ln89_1_fu_107_p1;
                trunc_ln89_reg_176 <= trunc_ln89_fu_103_p1;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((icmp_ln54_fu_155_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                and_ln58_reg_219 <= and_ln58_fu_171_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((regslice_both_dst_data_V_U_apdone_blk = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                i_reg_200 <= i_fu_140_p2;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then
                icmp_ln54_reg_210 <= icmp_ln54_fu_155_p2;
                icmp_ln54_reg_210_pp0_iter1_reg <= icmp_ln54_reg_210;
            end if;
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((regslice_both_dst_data_V_U_apdone_blk = ap_const_logic_0) and (icmp_ln53_fu_135_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                icmp_ln58_reg_205 <= icmp_ln58_fu_146_p2;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_start, ap_done_reg, ap_CS_fsm, ap_CS_fsm_state1, dst_rows_empty_n, dst_cols_empty_n, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2, icmp_ln53_fu_135_p2, ap_CS_fsm_state2, regslice_both_dst_data_V_U_apdone_blk, icmp_ln54_fu_155_p2, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_state1 => 
                if ((not(((ap_start = ap_const_logic_0) or (dst_cols_empty_n = ap_const_logic_0) or (dst_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then
                    ap_NS_fsm <= ap_ST_fsm_state2;
                else
                    ap_NS_fsm <= ap_ST_fsm_state1;
                end if;
            when ap_ST_fsm_state2 => 
                if (((regslice_both_dst_data_V_U_apdone_blk = ap_const_logic_0) and (icmp_ln53_fu_135_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_state1;
                elsif (((regslice_both_dst_data_V_U_apdone_blk = ap_const_logic_0) and (icmp_ln53_fu_135_p2 = ap_const_lv1_0) and (ap_const_logic_1 = ap_CS_fsm_state2))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                else
                    ap_NS_fsm <= ap_ST_fsm_state2;
                end if;
            when ap_ST_fsm_pp0_stage0 => 
                if ((not(((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln54_fu_155_p2 = ap_const_lv1_1))) and not(((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))))) then
                    ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
                elsif ((((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (icmp_ln54_fu_155_p2 = ap_const_lv1_1)))) then
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
    add_ln58_1_fu_125_p2 <= std_logic_vector(signed(ap_const_lv12_FFF) + signed(zext_ln58_1_fu_121_p1));
    add_ln58_fu_115_p2 <= std_logic_vector(signed(ap_const_lv12_FFF) + signed(zext_ln58_fu_111_p1));
    and_ln58_fu_171_p2 <= (icmp_ln58_reg_205 and icmp_ln58_1_fu_166_p2);
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(2);
    ap_CS_fsm_state1 <= ap_CS_fsm(0);
    ap_CS_fsm_state2 <= ap_CS_fsm(1);
    ap_CS_fsm_state6 <= ap_CS_fsm(3);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(p_dst_data_V_empty_n, ap_enable_reg_pp0_iter1, icmp_ln54_reg_210)
    begin
                ap_block_pp0_stage0_01001 <= ((icmp_ln54_reg_210 = ap_const_lv1_0) and (p_dst_data_V_empty_n = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(p_dst_data_V_empty_n, ap_enable_reg_pp0_iter1, icmp_ln54_reg_210, ap_enable_reg_pp0_iter2, ap_block_state4_io, ap_block_state5_io)
    begin
                ap_block_pp0_stage0_11001 <= (((ap_const_boolean_1 = ap_block_state5_io) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state4_io) or ((icmp_ln54_reg_210 = ap_const_lv1_0) and (p_dst_data_V_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(p_dst_data_V_empty_n, ap_enable_reg_pp0_iter1, icmp_ln54_reg_210, ap_enable_reg_pp0_iter2, ap_block_state4_io, ap_block_state5_io)
    begin
                ap_block_pp0_stage0_subdone <= (((ap_const_boolean_1 = ap_block_state5_io) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((ap_enable_reg_pp0_iter1 = ap_const_logic_1) and ((ap_const_boolean_1 = ap_block_state4_io) or ((icmp_ln54_reg_210 = ap_const_lv1_0) and (p_dst_data_V_empty_n = ap_const_logic_0)))));
    end process;


    ap_block_state1_assign_proc : process(ap_start, ap_done_reg, dst_rows_empty_n, dst_cols_empty_n)
    begin
                ap_block_state1 <= ((ap_start = ap_const_logic_0) or (dst_cols_empty_n = ap_const_logic_0) or (dst_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1));
    end process;

        ap_block_state3_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state4_io_assign_proc : process(icmp_ln54_reg_210, dst_TREADY_int)
    begin
                ap_block_state4_io <= ((icmp_ln54_reg_210 = ap_const_lv1_0) and (dst_TREADY_int = ap_const_logic_0));
    end process;


    ap_block_state4_pp0_stage0_iter1_assign_proc : process(p_dst_data_V_empty_n, icmp_ln54_reg_210)
    begin
                ap_block_state4_pp0_stage0_iter1 <= ((icmp_ln54_reg_210 = ap_const_lv1_0) and (p_dst_data_V_empty_n = ap_const_logic_0));
    end process;


    ap_block_state5_io_assign_proc : process(icmp_ln54_reg_210_pp0_iter1_reg, dst_TREADY_int)
    begin
                ap_block_state5_io <= ((icmp_ln54_reg_210_pp0_iter1_reg = ap_const_lv1_0) and (dst_TREADY_int = ap_const_logic_0));
    end process;

        ap_block_state5_pp0_stage0_iter2 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_condition_pp0_exit_iter0_state3_assign_proc : process(icmp_ln54_fu_155_p2)
    begin
        if ((icmp_ln54_fu_155_p2 = ap_const_lv1_1)) then 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_1;
        else 
            ap_condition_pp0_exit_iter0_state3 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_assign_proc : process(ap_done_reg, icmp_ln53_fu_135_p2, ap_CS_fsm_state2, regslice_both_dst_data_V_U_apdone_blk)
    begin
        if (((regslice_both_dst_data_V_U_apdone_blk = ap_const_logic_0) and (icmp_ln53_fu_135_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
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


    ap_ready_assign_proc : process(icmp_ln53_fu_135_p2, ap_CS_fsm_state2, regslice_both_dst_data_V_U_apdone_blk)
    begin
        if (((regslice_both_dst_data_V_U_apdone_blk = ap_const_logic_0) and (icmp_ln53_fu_135_p2 = ap_const_lv1_1) and (ap_const_logic_1 = ap_CS_fsm_state2))) then 
            ap_ready <= ap_const_logic_1;
        else 
            ap_ready <= ap_const_logic_0;
        end if; 
    end process;


    dst_TDATA_blk_n_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln54_reg_210, ap_enable_reg_pp0_iter2, icmp_ln54_reg_210_pp0_iter1_reg, dst_TREADY_int)
    begin
        if ((((icmp_ln54_reg_210_pp0_iter1_reg = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1)) or ((icmp_ln54_reg_210 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0)))) then 
            dst_TDATA_blk_n <= dst_TREADY_int;
        else 
            dst_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;

    dst_TVALID <= regslice_both_dst_data_V_U_vld_out;

    dst_TVALID_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln54_reg_210, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln54_reg_210 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            dst_TVALID_int <= ap_const_logic_1;
        else 
            dst_TVALID_int <= ap_const_logic_0;
        end if; 
    end process;


    dst_cols_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, dst_cols_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            dst_cols_blk_n <= dst_cols_empty_n;
        else 
            dst_cols_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    dst_cols_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, dst_rows_empty_n, dst_cols_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (dst_cols_empty_n = ap_const_logic_0) or (dst_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            dst_cols_read <= ap_const_logic_1;
        else 
            dst_cols_read <= ap_const_logic_0;
        end if; 
    end process;


    dst_rows_blk_n_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, dst_rows_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            dst_rows_blk_n <= dst_rows_empty_n;
        else 
            dst_rows_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    dst_rows_read_assign_proc : process(ap_start, ap_done_reg, ap_CS_fsm_state1, dst_rows_empty_n, dst_cols_empty_n)
    begin
        if ((not(((ap_start = ap_const_logic_0) or (dst_cols_empty_n = ap_const_logic_0) or (dst_rows_empty_n = ap_const_logic_0) or (ap_done_reg = ap_const_logic_1))) and (ap_const_logic_1 = ap_CS_fsm_state1))) then 
            dst_rows_read <= ap_const_logic_1;
        else 
            dst_rows_read <= ap_const_logic_0;
        end if; 
    end process;

    i_fu_140_p2 <= std_logic_vector(unsigned(i_0_i_i_reg_81) + unsigned(ap_const_lv11_1));
    icmp_ln53_fu_135_p2 <= "1" when (i_0_i_i_reg_81 = trunc_ln89_reg_176) else "0";
    icmp_ln54_fu_155_p2 <= "1" when (j_0_i_i_reg_92 = trunc_ln89_1_reg_181) else "0";
    icmp_ln58_1_fu_166_p2 <= "1" when (zext_ln54_fu_151_p1 = add_ln58_1_reg_191) else "0";
    icmp_ln58_fu_146_p2 <= "1" when (zext_ln53_fu_131_p1 = add_ln58_reg_186) else "0";
    j_fu_160_p2 <= std_logic_vector(unsigned(j_0_i_i_reg_92) + unsigned(ap_const_lv11_1));

    p_dst_data_V_blk_n_assign_proc : process(p_dst_data_V_empty_n, ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0, icmp_ln54_reg_210)
    begin
        if (((icmp_ln54_reg_210 = ap_const_lv1_0) and (ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            p_dst_data_V_blk_n <= p_dst_data_V_empty_n;
        else 
            p_dst_data_V_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    p_dst_data_V_read_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, icmp_ln54_reg_210, ap_block_pp0_stage0_11001)
    begin
        if (((icmp_ln54_reg_210 = ap_const_lv1_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_const_boolean_0 = ap_block_pp0_stage0_11001))) then 
            p_dst_data_V_read <= ap_const_logic_1;
        else 
            p_dst_data_V_read <= ap_const_logic_0;
        end if; 
    end process;

    trunc_ln89_1_fu_107_p1 <= dst_cols_dout(11 - 1 downto 0);
    trunc_ln89_fu_103_p1 <= dst_rows_dout(11 - 1 downto 0);
    zext_ln53_fu_131_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(i_0_i_i_reg_81),12));
    zext_ln54_fu_151_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(j_0_i_i_reg_92),12));
    zext_ln58_1_fu_121_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln89_1_fu_107_p1),12));
    zext_ln58_fu_111_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(trunc_ln89_fu_103_p1),12));
end behav;