-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2.2 (lin64) Build 3118627 Tue Feb  9 05:13:49 MST 2021
-- Date        : Mon Feb 14 18:51:23 2022
-- Host        : ubuntu3 running 64-bit Ubuntu 20.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top colordetect_auto_pc_1 -prefix
--               colordetect_auto_pc_1_ colordetect_auto_pc_3_sim_netlist.vhdl
-- Design      : colordetect_auto_pc_3
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_b_downsizer is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    last_word : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
end colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_b_downsizer;

architecture STRUCTURE of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_b_downsizer is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_BRESP_ACC : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal first_mi_word : STD_LOGIC;
  signal \^last_word\ : STD_LOGIC;
  signal next_repeat_cnt : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \repeat_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal repeat_cnt_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \repeat_cnt[1]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \repeat_cnt[3]_i_2\ : label is "soft_lutpair27";
begin
  E(0) <= \^e\(0);
  last_word <= \^last_word\;
  s_axi_bresp(1 downto 0) <= \^s_axi_bresp\(1 downto 0);
\S_AXI_BRESP_ACC_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^s_axi_bresp\(0),
      Q => S_AXI_BRESP_ACC(0),
      R => SR(0)
    );
\S_AXI_BRESP_ACC_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => \^s_axi_bresp\(1),
      Q => S_AXI_BRESP_ACC(1),
      R => SR(0)
    );
first_mi_word_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \^last_word\,
      Q => first_mi_word,
      S => SR(0)
    );
m_axi_bready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B0"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^last_word\,
      I2 => m_axi_bvalid,
      O => \^e\(0)
    );
\repeat_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1D"
    )
        port map (
      I0 => repeat_cnt_reg(0),
      I1 => first_mi_word,
      I2 => dout(0),
      O => next_repeat_cnt(0)
    );
\repeat_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8748B47"
    )
        port map (
      I0 => dout(1),
      I1 => first_mi_word,
      I2 => repeat_cnt_reg(1),
      I3 => dout(0),
      I4 => repeat_cnt_reg(0),
      O => next_repeat_cnt(1)
    );
\repeat_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"B847"
    )
        port map (
      I0 => dout(2),
      I1 => first_mi_word,
      I2 => repeat_cnt_reg(2),
      I3 => \repeat_cnt[3]_i_2_n_0\,
      O => next_repeat_cnt(2)
    );
\repeat_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCAACCAAC3AAC355"
    )
        port map (
      I0 => repeat_cnt_reg(3),
      I1 => dout(3),
      I2 => dout(2),
      I3 => first_mi_word,
      I4 => repeat_cnt_reg(2),
      I5 => \repeat_cnt[3]_i_2_n_0\,
      O => next_repeat_cnt(3)
    );
\repeat_cnt[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFACCFA"
    )
        port map (
      I0 => repeat_cnt_reg(0),
      I1 => dout(0),
      I2 => repeat_cnt_reg(1),
      I3 => first_mi_word,
      I4 => dout(1),
      O => \repeat_cnt[3]_i_2_n_0\
    );
\repeat_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => next_repeat_cnt(0),
      Q => repeat_cnt_reg(0),
      R => SR(0)
    );
\repeat_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => next_repeat_cnt(1),
      Q => repeat_cnt_reg(1),
      R => SR(0)
    );
\repeat_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => next_repeat_cnt(2),
      Q => repeat_cnt_reg(2),
      R => SR(0)
    );
\repeat_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => next_repeat_cnt(3),
      Q => repeat_cnt_reg(3),
      R => SR(0)
    );
\s_axi_bresp[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF4404FBFF0000"
    )
        port map (
      I0 => first_mi_word,
      I1 => dout(4),
      I2 => m_axi_bresp(1),
      I3 => S_AXI_BRESP_ACC(1),
      I4 => m_axi_bresp(0),
      I5 => S_AXI_BRESP_ACC(0),
      O => \^s_axi_bresp\(0)
    );
\s_axi_bresp[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4F0"
    )
        port map (
      I0 => first_mi_word,
      I1 => dout(4),
      I2 => m_axi_bresp(1),
      I3 => S_AXI_BRESP_ACC(1),
      O => \^s_axi_bresp\(1)
    );
s_axi_bvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => \^last_word\,
      O => s_axi_bvalid
    );
s_axi_bvalid_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => repeat_cnt_reg(3),
      I1 => first_mi_word,
      I2 => repeat_cnt_reg(2),
      I3 => repeat_cnt_reg(1),
      I4 => repeat_cnt_reg(0),
      I5 => dout(4),
      O => \^last_word\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_w_axi3_conv is
  port (
    \length_counter_1_reg[1]_0\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    first_mi_word : out STD_LOGIC;
    \USE_WRITE.wr_cmd_ready\ : out STD_LOGIC;
    first_mi_word_reg_0 : out STD_LOGIC;
    m_axi_wlast : out STD_LOGIC;
    m_axi_wready_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \length_counter_1_reg[1]_1\ : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    empty : in STD_LOGIC;
    \cmd_depth_reg[5]\ : in STD_LOGIC;
    \length_counter_1_reg[2]_0\ : in STD_LOGIC;
    dout : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wlast_0 : in STD_LOGIC;
    \cmd_depth_reg[5]_0\ : in STD_LOGIC
  );
end colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_w_axi3_conv;

architecture STRUCTURE of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_w_axi3_conv is
  signal \^use_write.wr_cmd_ready\ : STD_LOGIC;
  signal fifo_gen_inst_i_4_n_0 : STD_LOGIC;
  signal \^first_mi_word\ : STD_LOGIC;
  signal first_mi_word_i_1_n_0 : STD_LOGIC;
  signal \^first_mi_word_reg_0\ : STD_LOGIC;
  signal \length_counter_1[0]_i_1_n_0\ : STD_LOGIC;
  signal \length_counter_1[2]_i_1_n_0\ : STD_LOGIC;
  signal \length_counter_1[2]_i_2_n_0\ : STD_LOGIC;
  signal \length_counter_1[3]_i_1_n_0\ : STD_LOGIC;
  signal \length_counter_1[3]_i_2_n_0\ : STD_LOGIC;
  signal \length_counter_1[4]_i_1_n_0\ : STD_LOGIC;
  signal \length_counter_1[5]_i_1_n_0\ : STD_LOGIC;
  signal \length_counter_1[6]_i_1_n_0\ : STD_LOGIC;
  signal \length_counter_1[6]_i_2_n_0\ : STD_LOGIC;
  signal \length_counter_1[7]_i_1_n_0\ : STD_LOGIC;
  signal \length_counter_1[7]_i_2_n_0\ : STD_LOGIC;
  signal length_counter_1_reg : STD_LOGIC_VECTOR ( 7 downto 2 );
  signal \^length_counter_1_reg[1]_0\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_wlast\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \length_counter_1[2]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \length_counter_1[3]_i_2\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \length_counter_1[5]_i_1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \length_counter_1[7]_i_2\ : label is "soft_lutpair61";
begin
  \USE_WRITE.wr_cmd_ready\ <= \^use_write.wr_cmd_ready\;
  first_mi_word <= \^first_mi_word\;
  first_mi_word_reg_0 <= \^first_mi_word_reg_0\;
  \length_counter_1_reg[1]_0\(1 downto 0) <= \^length_counter_1_reg[1]_0\(1 downto 0);
  m_axi_wlast <= \^m_axi_wlast\;
\cmd_depth[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \^use_write.wr_cmd_ready\,
      I1 => \cmd_depth_reg[5]_0\,
      O => m_axi_wready_0(0)
    );
fifo_gen_inst_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080008000800000"
    )
        port map (
      I0 => fifo_gen_inst_i_4_n_0,
      I1 => m_axi_wready,
      I2 => s_axi_wvalid,
      I3 => empty,
      I4 => \^first_mi_word_reg_0\,
      I5 => \cmd_depth_reg[5]\,
      O => \^use_write.wr_cmd_ready\
    );
fifo_gen_inst_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0001"
    )
        port map (
      I0 => length_counter_1_reg(6),
      I1 => length_counter_1_reg(7),
      I2 => length_counter_1_reg(4),
      I3 => length_counter_1_reg(5),
      I4 => \^first_mi_word\,
      O => fifo_gen_inst_i_4_n_0
    );
fifo_gen_inst_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^first_mi_word\,
      I1 => \^length_counter_1_reg[1]_0\(0),
      I2 => \^length_counter_1_reg[1]_0\(1),
      I3 => length_counter_1_reg(3),
      I4 => length_counter_1_reg(2),
      O => \^first_mi_word_reg_0\
    );
first_mi_word_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => \^m_axi_wlast\,
      I1 => empty,
      I2 => s_axi_wvalid,
      I3 => m_axi_wready,
      I4 => \^first_mi_word\,
      O => first_mi_word_i_1_n_0
    );
first_mi_word_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => first_mi_word_i_1_n_0,
      Q => \^first_mi_word\,
      S => SR(0)
    );
\length_counter_1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F2FFFFFF07000000"
    )
        port map (
      I0 => \^first_mi_word\,
      I1 => dout(0),
      I2 => empty,
      I3 => s_axi_wvalid,
      I4 => m_axi_wready,
      I5 => \^length_counter_1_reg[1]_0\(0),
      O => \length_counter_1[0]_i_1_n_0\
    );
\length_counter_1[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D7DD8222"
    )
        port map (
      I0 => \length_counter_1_reg[2]_0\,
      I1 => \length_counter_1[2]_i_2_n_0\,
      I2 => dout(2),
      I3 => \^first_mi_word\,
      I4 => length_counter_1_reg(2),
      O => \length_counter_1[2]_i_1_n_0\
    );
\length_counter_1[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFCAAFC"
    )
        port map (
      I0 => dout(0),
      I1 => \^length_counter_1_reg[1]_0\(0),
      I2 => \^length_counter_1_reg[1]_0\(1),
      I3 => \^first_mi_word\,
      I4 => dout(1),
      O => \length_counter_1[2]_i_2_n_0\
    );
\length_counter_1[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A959CCCC"
    )
        port map (
      I0 => \length_counter_1[3]_i_2_n_0\,
      I1 => length_counter_1_reg(3),
      I2 => \^first_mi_word\,
      I3 => dout(3),
      I4 => \length_counter_1_reg[2]_0\,
      O => \length_counter_1[3]_i_1_n_0\
    );
\length_counter_1[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFE2"
    )
        port map (
      I0 => length_counter_1_reg(2),
      I1 => \^first_mi_word\,
      I2 => dout(2),
      I3 => \length_counter_1[2]_i_2_n_0\,
      O => \length_counter_1[3]_i_2_n_0\
    );
\length_counter_1[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8AAABAAAAAAA9AAA"
    )
        port map (
      I0 => length_counter_1_reg(4),
      I1 => empty,
      I2 => s_axi_wvalid,
      I3 => m_axi_wready,
      I4 => \length_counter_1[6]_i_2_n_0\,
      I5 => \^first_mi_word\,
      O => \length_counter_1[4]_i_1_n_0\
    );
\length_counter_1[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2E2EAAA6"
    )
        port map (
      I0 => length_counter_1_reg(5),
      I1 => \length_counter_1_reg[2]_0\,
      I2 => \length_counter_1[6]_i_2_n_0\,
      I3 => length_counter_1_reg(4),
      I4 => \^first_mi_word\,
      O => \length_counter_1[5]_i_1_n_0\
    );
\length_counter_1[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44EE44EECCCCCCC6"
    )
        port map (
      I0 => \length_counter_1_reg[2]_0\,
      I1 => length_counter_1_reg(6),
      I2 => length_counter_1_reg(5),
      I3 => \length_counter_1[6]_i_2_n_0\,
      I4 => length_counter_1_reg(4),
      I5 => \^first_mi_word\,
      O => \length_counter_1[6]_i_1_n_0\
    );
\length_counter_1[6]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFAEEEEFFFA"
    )
        port map (
      I0 => \length_counter_1[2]_i_2_n_0\,
      I1 => dout(2),
      I2 => length_counter_1_reg(2),
      I3 => length_counter_1_reg(3),
      I4 => \^first_mi_word\,
      I5 => dout(3),
      O => \length_counter_1[6]_i_2_n_0\
    );
\length_counter_1[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FEF00D0"
    )
        port map (
      I0 => length_counter_1_reg(6),
      I1 => \^first_mi_word\,
      I2 => \length_counter_1_reg[2]_0\,
      I3 => \length_counter_1[7]_i_2_n_0\,
      I4 => length_counter_1_reg(7),
      O => \length_counter_1[7]_i_1_n_0\
    );
\length_counter_1[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CCFE"
    )
        port map (
      I0 => length_counter_1_reg(5),
      I1 => \length_counter_1[6]_i_2_n_0\,
      I2 => length_counter_1_reg(4),
      I3 => \^first_mi_word\,
      O => \length_counter_1[7]_i_2_n_0\
    );
\length_counter_1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1[0]_i_1_n_0\,
      Q => \^length_counter_1_reg[1]_0\(0),
      R => SR(0)
    );
\length_counter_1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1_reg[1]_1\,
      Q => \^length_counter_1_reg[1]_0\(1),
      R => SR(0)
    );
\length_counter_1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1[2]_i_1_n_0\,
      Q => length_counter_1_reg(2),
      R => SR(0)
    );
\length_counter_1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1[3]_i_1_n_0\,
      Q => length_counter_1_reg(3),
      R => SR(0)
    );
\length_counter_1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1[4]_i_1_n_0\,
      Q => length_counter_1_reg(4),
      R => SR(0)
    );
\length_counter_1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1[5]_i_1_n_0\,
      Q => length_counter_1_reg(5),
      R => SR(0)
    );
\length_counter_1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1[6]_i_1_n_0\,
      Q => length_counter_1_reg(6),
      R => SR(0)
    );
\length_counter_1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \length_counter_1[7]_i_1_n_0\,
      Q => length_counter_1_reg(7),
      R => SR(0)
    );
m_axi_wlast_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAB00000000"
    )
        port map (
      I0 => \^first_mi_word\,
      I1 => length_counter_1_reg(5),
      I2 => length_counter_1_reg(4),
      I3 => length_counter_1_reg(7),
      I4 => length_counter_1_reg(6),
      I5 => m_axi_wlast_0,
      O => \^m_axi_wlast\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity colordetect_auto_pc_1_xpm_cdc_async_rst is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of colordetect_auto_pc_1_xpm_cdc_async_rst : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of colordetect_auto_pc_1_xpm_cdc_async_rst : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of colordetect_auto_pc_1_xpm_cdc_async_rst : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of colordetect_auto_pc_1_xpm_cdc_async_rst : entity is "1'b1";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of colordetect_auto_pc_1_xpm_cdc_async_rst : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of colordetect_auto_pc_1_xpm_cdc_async_rst : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of colordetect_auto_pc_1_xpm_cdc_async_rst : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of colordetect_auto_pc_1_xpm_cdc_async_rst : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of colordetect_auto_pc_1_xpm_cdc_async_rst : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of colordetect_auto_pc_1_xpm_cdc_async_rst : entity is "ASYNC_RST";
end colordetect_auto_pc_1_xpm_cdc_async_rst;

architecture STRUCTURE of colordetect_auto_pc_1_xpm_cdc_async_rst is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \colordetect_auto_pc_1_xpm_cdc_async_rst__3\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \colordetect_auto_pc_1_xpm_cdc_async_rst__3\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \colordetect_auto_pc_1_xpm_cdc_async_rst__3\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \colordetect_auto_pc_1_xpm_cdc_async_rst__3\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \colordetect_auto_pc_1_xpm_cdc_async_rst__3\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \colordetect_auto_pc_1_xpm_cdc_async_rst__3\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \colordetect_auto_pc_1_xpm_cdc_async_rst__3\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \colordetect_auto_pc_1_xpm_cdc_async_rst__3\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \colordetect_auto_pc_1_xpm_cdc_async_rst__3\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \colordetect_auto_pc_1_xpm_cdc_async_rst__3\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \colordetect_auto_pc_1_xpm_cdc_async_rst__3\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \colordetect_auto_pc_1_xpm_cdc_async_rst__3\ : entity is "ASYNC_RST";
end \colordetect_auto_pc_1_xpm_cdc_async_rst__3\;

architecture STRUCTURE of \colordetect_auto_pc_1_xpm_cdc_async_rst__3\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \colordetect_auto_pc_1_xpm_cdc_async_rst__4\ is
  port (
    src_arst : in STD_LOGIC;
    dest_clk : in STD_LOGIC;
    dest_arst : out STD_LOGIC
  );
  attribute DEF_VAL : string;
  attribute DEF_VAL of \colordetect_auto_pc_1_xpm_cdc_async_rst__4\ : entity is "1'b0";
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \colordetect_auto_pc_1_xpm_cdc_async_rst__4\ : entity is 2;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \colordetect_auto_pc_1_xpm_cdc_async_rst__4\ : entity is 0;
  attribute INV_DEF_VAL : string;
  attribute INV_DEF_VAL of \colordetect_auto_pc_1_xpm_cdc_async_rst__4\ : entity is "1'b1";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \colordetect_auto_pc_1_xpm_cdc_async_rst__4\ : entity is "xpm_cdc_async_rst";
  attribute RST_ACTIVE_HIGH : integer;
  attribute RST_ACTIVE_HIGH of \colordetect_auto_pc_1_xpm_cdc_async_rst__4\ : entity is 1;
  attribute VERSION : integer;
  attribute VERSION of \colordetect_auto_pc_1_xpm_cdc_async_rst__4\ : entity is 0;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \colordetect_auto_pc_1_xpm_cdc_async_rst__4\ : entity is "TRUE";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of \colordetect_auto_pc_1_xpm_cdc_async_rst__4\ : entity is "true";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \colordetect_auto_pc_1_xpm_cdc_async_rst__4\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \colordetect_auto_pc_1_xpm_cdc_async_rst__4\ : entity is "ASYNC_RST";
end \colordetect_auto_pc_1_xpm_cdc_async_rst__4\;

architecture STRUCTURE of \colordetect_auto_pc_1_xpm_cdc_async_rst__4\ is
  signal arststages_ff : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of arststages_ff : signal is "true";
  attribute async_reg : string;
  attribute async_reg of arststages_ff : signal is "true";
  attribute xpm_cdc of arststages_ff : signal is "ASYNC_RST";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \arststages_ff_reg[0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \arststages_ff_reg[0]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[0]\ : label is "ASYNC_RST";
  attribute ASYNC_REG_boolean of \arststages_ff_reg[1]\ : label is std.standard.true;
  attribute KEEP of \arststages_ff_reg[1]\ : label is "true";
  attribute XPM_CDC of \arststages_ff_reg[1]\ : label is "ASYNC_RST";
begin
  dest_arst <= arststages_ff(1);
\arststages_ff_reg[0]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => '0',
      PRE => src_arst,
      Q => arststages_ff(0)
    );
\arststages_ff_reg[1]\: unisim.vcomponents.FDPE
    generic map(
      INIT => '0'
    )
        port map (
      C => dest_clk,
      CE => '1',
      D => arststages_ff(0),
      PRE => src_arst,
      Q => arststages_ff(1)
    );
end STRUCTURE;
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2.2"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
HY8zzqmL0TYabzmDirxztV4GwEg39mt6KwHax2Pa/Ajrh+hf1K+b6RxAjFmaoPgdazZHKPZClU/W
vmPbG0R4kg==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
XWzqoct4aCM4s2kWa5qpeSBzd4i1c27s/TX33Ip35I45M3h8WvdCiB8foF1bm2w89PEqqUcnmRr6
b3d8VhcXsuOplX45jpeUEN0ffiiDlZkLQG1foM6tjusbXRHm2Y4YbMwWL7TuhDVFD5d2ESrmyU6L
UNgzUfcqAXMUFy6URaA=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
i0rSTVORXQd1nYVgDtfe5iVv+oC1tegu7gPndOIxElP33RXlq1+vrok6I6yPdxoQeuDYgrT/wpsX
HF57e8VNdW6RMJ7onE6xour2qwzV6O6t+5UsjlvPU1GB/g03poWz+lq5zP2BpfWulVpQ3KsHGiVs
QJcbzoNur3acd5o4nSBBOQyh2rnqA7LAAgIVGR6MlAGUzHd2SVgsJVZmk2SHt8SAk7AlC6aho+Ij
OydUI+B7gux9v3OrVsZ9iOKOJECqiWSm+NjyOdBck3n0qH6/puksmq1klb1LKibGU3xmm7R+arOb
MoJy6lXtlEjwYyH0shLnuVDfvMj6q92d4aaNgw==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
sIUrNwJamizMjSennWoJibjiaAKHFazz127S0AczyCLeyNQx45dVHAgG9mwhl9K8mxCemkfchfyV
lj1F+YWHKJfs7QrMfhBLKhBv/+sLESoDyYGkldykhZbb1pgNdt3OsSk3ZTwADQD2YrpPcVl+wgmI
gxYU1Eu4u5wBYGFW6jM6+hZheP6nysJNNdUYCIuW+tq+zihJy6YKcYpgplzSOdYjs/hc3PUGMmbQ
vvIfcWHjCDfX+KyffA52SrbaZktqDpVN207UNgHFUJbbZ4D9MeT/xwqYF2o8A/4JUM9BMp6oolVK
IhiVvDoK6c7lZvD6mFihC1ujM4cp86GUX8Vosg==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
BW+uBvx9UrgkJch9wwLRMAcEexRfgTwsOvaka6hztBVulF8p7jbs0/KZmqC0wZJPXrxv4y2RdBa5
ql5fMc1BmmeqGvM/JqDiQb2F2tAdoH6q8KUXMMFB57oEGFOOtYr1EVh8XvLSErRxUkaIwLYrQ1rT
a1BUOdn+4okUEJU3yZU=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
LxBjXKjGaZiK061prU5Cua3Yn0FPxTgjH/hw0g6tEtDU5Z3qs9iAZombn3AEKPGQ2VXx5NZ2hlvO
7ThKwK5jKagj1fLxiokRpTctVn6CfpDRi2pHXXJk7nNv0W0EuwkksHrKSzcopEasZo9GGzJP3hko
rB7M4sDKYfaaMKbNG0spAzk2srDsez1VR3SbMukoOhMrBvwJYjzZS08KhVC31q2mnEHPnFp4CJ9R
h21QRHWHLKZvWOOkc7DbFxwjApODBf8yTXmvG31YHqjUUJYNYJLFkaqn/lG590h7o9b9ZkI+1fEI
uEPM3sHJamRUe8/RYlx7KALIP7E6AcI+uZ/QWg==

`protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gHfySz6Hws3KqlotmGeU2TWJeJWbUPVtcvEu2kLpPQIi1fnRSQJcuNBuq9TH0qYOIQANh5CmBAXQ
1WoQq8jn4T2MAghYWgCXQRtAzwunmhBV1uHphQEWfqlLSiZn8sCGt+LzcoAe0OBYVWoFPBE+oppk
kbL/2JauWwpjduYIAJhDTOR1Q9LEjh2WMaZQy21ePiF1POp0urJrsRX8fEuy55NQiCZda16fk0jG
8YgCoWb18vDt16iQmcixCVjIvT2TSLapKQgW4oF8hesv9oadLqvysWuuAN4ZHktWNXROLZKvxK6w
Jf9AEp5NfKG+KxAAwJP6iv/r5FWxZ2nR1UPIjw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
WG4h6UqczBIU5PdSTUWk+8QSdVUAyNwC+ac8VdO5yZIyFlf2EZ4ePeDirCPff5RaoCh5kVQRurOj
ZJBwLqg9BJXfJjY2vxVXa/6YJFcf0X1hMchYToMTHfIHNGqnu5e3MkplWienI0PvhXN8wqrGQbQi
kryQ5H0k4Cb07IFtoekPY/5kENX1ePMEVuvfQXZMFyd7BZLw8jVDBCIBooEhz54X5r8QA+pZqN13
LhyKOiJPwcTx8OJ1NncTosACIMAdeb/bA/6dkR5EnRlG6qC24CqPbLxTUVxLzMTBsIWxFJvW3cDO
klMryGo0HyqpFumuq/MuqaiJl0BJP3B7KLHAOA==

`protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
OjWuEwkAE3EdF0szXSft1NLRqLNlhrqG/6QZjkkHmRNPEor8dUnG9ghsxkV7RRd8GbgGmTbkPwbP
br6TVoGJCf+KQXn7ederLk7b1sS3N8TtYRDYkmD7uE0PICUrgwu309WTjhjMvhJuo2BNtYcjmBr7
Zo/GJN5hP8E5JukES3BUhpLs/ETxjdnhQLn6u/+ZpzTocqnFigr7rukVLWVx4tRweCg+BcBitCwe
sMBWaX22NcoSlU2u1Wnp+yWIzB1CUmdJ9VQaFAj4Q1s81uMVsjDVZ0uK95MEVueKmDXrwed4QsBS
EmTAeZW4+EFPHZ48Fr7d1dFj3dtRh4raYeZSrA==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 320416)
`protect data_block
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
r2n/9pWPsGcG4FTc+jWscNy1vw==
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity colordetect_auto_pc_1_axi_data_fifo_v2_1_21_fifo_gen is
  port (
    \goreg_dm.dout_i_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    din : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : out STD_LOGIC;
    cmd_empty_reg : out STD_LOGIC;
    cmd_push_block_reg : out STD_LOGIC;
    split_in_progress : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_en : out STD_LOGIC;
    \S_AXI_AID_Q_reg[0]\ : out STD_LOGIC;
    split_in_progress_reg : out STD_LOGIC;
    \last_split__1\ : out STD_LOGIC;
    \queue_id_reg[0]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    \USE_WRITE.wr_cmd_ready\ : in STD_LOGIC;
    almost_empty : in STD_LOGIC;
    cmd_empty : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    last_word : in STD_LOGIC;
    almost_b_empty : in STD_LOGIC;
    cmd_b_empty : in STD_LOGIC;
    \cmd_depth_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    cmd_push_block : in STD_LOGIC;
    command_ongoing : in STD_LOGIC;
    \queue_id_reg[0]_0\ : in STD_LOGIC;
    m_axi_awvalid : in STD_LOGIC;
    queue_id : in STD_LOGIC;
    \queue_id_reg[0]_1\ : in STD_LOGIC;
    need_to_split_q : in STD_LOGIC;
    multiple_id_non_split : in STD_LOGIC;
    split_ongoing_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    access_is_incr_q : in STD_LOGIC
  );
end colordetect_auto_pc_1_axi_data_fifo_v2_1_21_fifo_gen;

architecture STRUCTURE of colordetect_auto_pc_1_axi_data_fifo_v2_1_21_fifo_gen is
  signal \^s_axi_aid_q_reg[0]\ : STD_LOGIC;
  signal S_AXI_AREADY_I_i_5_n_0 : STD_LOGIC;
  signal \cmd_depth[5]_i_3_n_0\ : STD_LOGIC;
  signal cmd_empty0 : STD_LOGIC;
  signal \^cmd_push_block_reg\ : STD_LOGIC;
  signal \^din\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^empty\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \^last_split__1\ : STD_LOGIC;
  signal multiple_id_non_split_i_4_n_0 : STD_LOGIC;
  signal \^rd_en\ : STD_LOGIC;
  signal \^split_in_progress_reg\ : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cmd_depth[2]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \cmd_depth[3]_i_1\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of cmd_empty_i_1 : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of cmd_empty_i_3 : label is "soft_lutpair43";
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of fifo_gen_inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of fifo_gen_inst : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of fifo_gen_inst : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of fifo_gen_inst : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of fifo_gen_inst : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of fifo_gen_inst : label is 5;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of fifo_gen_inst : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of fifo_gen_inst : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of fifo_gen_inst : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of fifo_gen_inst : label is 5;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of fifo_gen_inst : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of fifo_gen_inst : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of fifo_gen_inst : label is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of fifo_gen_inst : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of fifo_gen_inst : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of fifo_gen_inst : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of fifo_gen_inst : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of fifo_gen_inst : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of fifo_gen_inst : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of fifo_gen_inst : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of fifo_gen_inst : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of fifo_gen_inst : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of fifo_gen_inst : label is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of fifo_gen_inst : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of fifo_gen_inst : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of fifo_gen_inst : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of fifo_gen_inst : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of fifo_gen_inst : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of fifo_gen_inst : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of fifo_gen_inst : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of fifo_gen_inst : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of fifo_gen_inst : label is 30;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of fifo_gen_inst : label is 32;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of fifo_gen_inst : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of fifo_gen_inst : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of fifo_gen_inst : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of fifo_gen_inst : label is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of fifo_gen_inst : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of fifo_gen_inst : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of fifo_gen_inst : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of fifo_gen_inst : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of fifo_gen_inst : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of fifo_gen_inst : label is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of fifo_gen_inst : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of fifo_gen_inst : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of fifo_gen_inst : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of fifo_gen_inst : label is 32;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of fifo_gen_inst : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of fifo_gen_inst : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of fifo_gen_inst : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of fifo_gen_inst : label is 1;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of fifo_gen_inst : label is "soft";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of fifo_gen_inst : label is "true";
  attribute SOFT_HLUTNM of fifo_gen_inst_i_1 : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \queue_id[0]_i_1\ : label is "soft_lutpair45";
begin
  \S_AXI_AID_Q_reg[0]\ <= \^s_axi_aid_q_reg[0]\;
  cmd_push_block_reg <= \^cmd_push_block_reg\;
  din(0) <= \^din\(0);
  empty <= \^empty\;
  full <= \^full\;
  \last_split__1\ <= \^last_split__1\;
  rd_en <= \^rd_en\;
  split_in_progress_reg <= \^split_in_progress_reg\;
S_AXI_AREADY_I_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82000082FFFFFFFF"
    )
        port map (
      I0 => S_AXI_AREADY_I_i_5_n_0,
      I1 => Q(0),
      I2 => split_ongoing_reg(0),
      I3 => Q(3),
      I4 => split_ongoing_reg(3),
      I5 => access_is_incr_q,
      O => \^last_split__1\
    );
S_AXI_AREADY_I_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => split_ongoing_reg(2),
      I1 => Q(2),
      I2 => split_ongoing_reg(1),
      I3 => Q(1),
      O => S_AXI_AREADY_I_i_5_n_0
    );
\cmd_depth[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => cmd_empty0,
      I1 => \cmd_depth_reg[5]\(1),
      I2 => \cmd_depth_reg[5]\(0),
      O => D(0)
    );
\cmd_depth[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => \cmd_depth_reg[5]\(2),
      I1 => cmd_empty0,
      I2 => \cmd_depth_reg[5]\(1),
      I3 => \cmd_depth_reg[5]\(0),
      O => D(1)
    );
\cmd_depth[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => \cmd_depth_reg[5]\(3),
      I1 => cmd_empty0,
      I2 => \cmd_depth_reg[5]\(0),
      I3 => \cmd_depth_reg[5]\(1),
      I4 => \cmd_depth_reg[5]\(2),
      O => D(2)
    );
\cmd_depth[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => \cmd_depth_reg[5]\(4),
      I1 => cmd_empty0,
      I2 => \cmd_depth_reg[5]\(0),
      I3 => \cmd_depth_reg[5]\(1),
      I4 => \cmd_depth_reg[5]\(2),
      I5 => \cmd_depth_reg[5]\(3),
      O => D(3)
    );
\cmd_depth[5]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => \cmd_depth_reg[5]\(5),
      I1 => \cmd_depth[5]_i_3_n_0\,
      I2 => \cmd_depth_reg[5]\(3),
      I3 => \cmd_depth_reg[5]\(4),
      O => D(4)
    );
\cmd_depth[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"555455545554D555"
    )
        port map (
      I0 => \cmd_depth_reg[5]\(3),
      I1 => \cmd_depth_reg[5]\(2),
      I2 => \cmd_depth_reg[5]\(1),
      I3 => \cmd_depth_reg[5]\(0),
      I4 => \^cmd_push_block_reg\,
      I5 => \USE_WRITE.wr_cmd_ready\,
      O => \cmd_depth[5]_i_3_n_0\
    );
cmd_empty_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66F60090"
    )
        port map (
      I0 => \USE_WRITE.wr_cmd_ready\,
      I1 => \^cmd_push_block_reg\,
      I2 => almost_empty,
      I3 => cmd_empty0,
      I4 => cmd_empty,
      O => cmd_empty_reg
    );
cmd_empty_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cmd_push_block_reg\,
      I1 => \USE_WRITE.wr_cmd_ready\,
      O => cmd_empty0
    );
fifo_gen_inst: entity work.colordetect_auto_pc_1_fifo_generator_v13_2_5
     port map (
      almost_empty => NLW_fifo_gen_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_fifo_gen_inst_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_fifo_gen_inst_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_fifo_gen_inst_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => aclk,
      data_count(5 downto 0) => NLW_fifo_gen_inst_data_count_UNCONNECTED(5 downto 0),
      dbiterr => NLW_fifo_gen_inst_dbiterr_UNCONNECTED,
      din(4) => \^din\(0),
      din(3 downto 0) => Q(3 downto 0),
      dout(4 downto 0) => \goreg_dm.dout_i_reg[4]\(4 downto 0),
      empty => \^empty\,
      full => \^full\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(3 downto 0) => NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED(3 downto 0),
      m_axi_arlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(3 downto 0) => NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED(3 downto 0),
      m_axi_awlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(3 downto 0) => B"0000",
      m_axi_bready => NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(3 downto 0) => B"0000",
      m_axi_rlast => '0',
      m_axi_rready => NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(3 downto 0) => NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED(3 downto 0),
      m_axi_wlast => NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(63 downto 0) => NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED(63 downto 0),
      m_axis_tdest(3 downto 0) => NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(7 downto 0) => NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED(7 downto 0),
      m_axis_tkeep(3 downto 0) => NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast => NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(3 downto 0) => NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(3 downto 0) => NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_fifo_gen_inst_overflow_UNCONNECTED,
      prog_empty => NLW_fifo_gen_inst_prog_empty_UNCONNECTED,
      prog_empty_thresh(4 downto 0) => B"00000",
      prog_empty_thresh_assert(4 downto 0) => B"00000",
      prog_empty_thresh_negate(4 downto 0) => B"00000",
      prog_full => NLW_fifo_gen_inst_prog_full_UNCONNECTED,
      prog_full_thresh(4 downto 0) => B"00000",
      prog_full_thresh_assert(4 downto 0) => B"00000",
      prog_full_thresh_negate(4 downto 0) => B"00000",
      rd_clk => '0',
      rd_data_count(5 downto 0) => NLW_fifo_gen_inst_rd_data_count_UNCONNECTED(5 downto 0),
      rd_en => \^rd_en\,
      rd_rst => '0',
      rd_rst_busy => NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED,
      rst => SR(0),
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(3 downto 0) => NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(3 downto 0) => B"0000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_tdest(3 downto 0) => B"0000",
      s_axis_tid(7 downto 0) => B"00000000",
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => '0',
      s_axis_tready => NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(3 downto 0) => B"0000",
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_fifo_gen_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_fifo_gen_inst_underflow_UNCONNECTED,
      valid => NLW_fifo_gen_inst_valid_UNCONNECTED,
      wr_ack => NLW_fifo_gen_inst_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(5 downto 0) => NLW_fifo_gen_inst_wr_data_count_UNCONNECTED(5 downto 0),
      wr_en => ram_full_fb_i_reg,
      wr_rst => '0',
      wr_rst_busy => NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED
    );
fifo_gen_inst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cmd_push_block_reg\,
      O => wr_en
    );
\fifo_gen_inst_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => need_to_split_q,
      I1 => \^last_split__1\,
      O => \^din\(0)
    );
fifo_gen_inst_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^empty\,
      I1 => m_axi_bvalid,
      I2 => s_axi_bready,
      I3 => last_word,
      O => \^rd_en\
    );
\fifo_gen_inst_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFBFFFBFFFBFFFF"
    )
        port map (
      I0 => cmd_push_block,
      I1 => command_ongoing,
      I2 => \^full\,
      I3 => \queue_id_reg[0]_0\,
      I4 => \^s_axi_aid_q_reg[0]\,
      I5 => \^split_in_progress_reg\,
      O => \^cmd_push_block_reg\
    );
m_axi_awvalid_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFD5D5FF"
    )
        port map (
      I0 => m_axi_awvalid,
      I1 => cmd_b_empty,
      I2 => cmd_empty,
      I3 => queue_id,
      I4 => \queue_id_reg[0]_1\,
      I5 => need_to_split_q,
      O => \^split_in_progress_reg\
    );
m_axi_awvalid_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F999"
    )
        port map (
      I0 => \queue_id_reg[0]_1\,
      I1 => queue_id,
      I2 => cmd_empty,
      I3 => cmd_b_empty,
      I4 => multiple_id_non_split,
      O => \^s_axi_aid_q_reg[0]\
    );
multiple_id_non_split_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F5D5D5D5"
    )
        port map (
      I0 => aresetn,
      I1 => cmd_empty,
      I2 => multiple_id_non_split_i_4_n_0,
      I3 => almost_empty,
      I4 => \USE_WRITE.wr_cmd_ready\,
      O => split_in_progress
    );
multiple_id_non_split_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF40000000"
    )
        port map (
      I0 => \^empty\,
      I1 => m_axi_bvalid,
      I2 => s_axi_bready,
      I3 => last_word,
      I4 => almost_b_empty,
      I5 => cmd_b_empty,
      O => multiple_id_non_split_i_4_n_0
    );
\queue_id[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => queue_id,
      I1 => \^cmd_push_block_reg\,
      I2 => \queue_id_reg[0]_1\,
      O => \queue_id_reg[0]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_fifo_gen__parameterized0\ is
  port (
    din : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : out STD_LOGIC;
    ram_full_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    multiple_id_non_split0 : out STD_LOGIC;
    cmd_push_block_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    split_in_progress : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axi_arvalid_0 : out STD_LOGIC;
    \queue_id_reg[0]\ : out STD_LOGIC;
    s_axi_arvalid_1 : out STD_LOGIC;
    empty_fwft_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    command_ongoing : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    cmd_empty : in STD_LOGIC;
    \queue_id_reg[0]_0\ : in STD_LOGIC;
    \queue_id_reg[0]_1\ : in STD_LOGIC;
    cmd_push_block_reg_0 : in STD_LOGIC;
    need_to_split_q : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    multiple_id_non_split : in STD_LOGIC;
    almost_empty : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    split_ongoing_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    split_ongoing_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    access_is_incr_q : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    command_ongoing_reg : in STD_LOGIC;
    areset_d : in STD_LOGIC_VECTOR ( 1 downto 0 );
    command_ongoing_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_fifo_gen__parameterized0\ : entity is "axi_data_fifo_v2_1_21_fifo_gen";
end \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_fifo_gen__parameterized0\;

architecture STRUCTURE of \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_fifo_gen__parameterized0\ is
  signal \S_AXI_AREADY_I_i_3__0_n_0\ : STD_LOGIC;
  signal \S_AXI_AREADY_I_i_4__0_n_0\ : STD_LOGIC;
  signal \USE_READ.USE_SPLIT_R.rd_cmd_split\ : STD_LOGIC;
  signal \cmd_depth[5]_i_3__0_n_0\ : STD_LOGIC;
  signal cmd_empty0 : STD_LOGIC;
  signal cmd_push : STD_LOGIC;
  signal \^cmd_push_block_reg\ : STD_LOGIC;
  signal \^din\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal empty : STD_LOGIC;
  signal full : STD_LOGIC;
  signal \last_split__1\ : STD_LOGIC;
  signal m_axi_arvalid_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^rd_en\ : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \S_AXI_AREADY_I_i_3__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cmd_depth[1]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cmd_depth[2]_i_1__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cmd_depth[3]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cmd_depth[4]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cmd_depth[5]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cmd_depth[5]_i_3__0\ : label is "soft_lutpair7";
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of fifo_gen_inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of fifo_gen_inst : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of fifo_gen_inst : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of fifo_gen_inst : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of fifo_gen_inst : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of fifo_gen_inst : label is 1;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of fifo_gen_inst : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of fifo_gen_inst : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of fifo_gen_inst : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of fifo_gen_inst : label is 1;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of fifo_gen_inst : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of fifo_gen_inst : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of fifo_gen_inst : label is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of fifo_gen_inst : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of fifo_gen_inst : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of fifo_gen_inst : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of fifo_gen_inst : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of fifo_gen_inst : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of fifo_gen_inst : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of fifo_gen_inst : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of fifo_gen_inst : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of fifo_gen_inst : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of fifo_gen_inst : label is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of fifo_gen_inst : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of fifo_gen_inst : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of fifo_gen_inst : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of fifo_gen_inst : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of fifo_gen_inst : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of fifo_gen_inst : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of fifo_gen_inst : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of fifo_gen_inst : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of fifo_gen_inst : label is 30;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of fifo_gen_inst : label is 32;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of fifo_gen_inst : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of fifo_gen_inst : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of fifo_gen_inst : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of fifo_gen_inst : label is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of fifo_gen_inst : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of fifo_gen_inst : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of fifo_gen_inst : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of fifo_gen_inst : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of fifo_gen_inst : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of fifo_gen_inst : label is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of fifo_gen_inst : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of fifo_gen_inst : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of fifo_gen_inst : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of fifo_gen_inst : label is 32;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of fifo_gen_inst : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of fifo_gen_inst : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of fifo_gen_inst : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of fifo_gen_inst : label is 1;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of fifo_gen_inst : label is "soft";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of fifo_gen_inst : label is "true";
  attribute SOFT_HLUTNM of \fifo_gen_inst_i_2__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \fifo_gen_inst_i_3__1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \fifo_gen_inst_i_4__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of m_axi_arvalid_INST_0 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of m_axi_rready_INST_0 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \queue_id[0]_i_1__0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of s_axi_rvalid_INST_0 : label is "soft_lutpair11";
begin
  cmd_push_block_reg <= \^cmd_push_block_reg\;
  din(0) <= \^din\(0);
  rd_en <= \^rd_en\;
\S_AXI_AREADY_I_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44744474FFFF4474"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => command_ongoing_reg,
      I2 => \last_split__1\,
      I3 => \S_AXI_AREADY_I_i_3__0_n_0\,
      I4 => areset_d(1),
      I5 => areset_d(0),
      O => s_axi_arvalid_0
    );
S_AXI_AREADY_I_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82000082FFFFFFFF"
    )
        port map (
      I0 => \S_AXI_AREADY_I_i_4__0_n_0\,
      I1 => split_ongoing_reg(0),
      I2 => split_ongoing_reg_0(0),
      I3 => split_ongoing_reg(3),
      I4 => split_ongoing_reg_0(3),
      I5 => access_is_incr_q,
      O => \last_split__1\
    );
\S_AXI_AREADY_I_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FDFFFFF"
    )
        port map (
      I0 => m_axi_arvalid_INST_0_i_1_n_0,
      I1 => full,
      I2 => command_ongoing,
      I3 => cmd_push_block,
      I4 => m_axi_arready,
      O => \S_AXI_AREADY_I_i_3__0_n_0\
    );
\S_AXI_AREADY_I_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => split_ongoing_reg_0(2),
      I1 => split_ongoing_reg(2),
      I2 => split_ongoing_reg_0(1),
      I3 => split_ongoing_reg(1),
      O => \S_AXI_AREADY_I_i_4__0_n_0\
    );
\cmd_depth[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => cmd_empty0,
      I1 => Q(1),
      I2 => Q(0),
      O => D(0)
    );
\cmd_depth[2]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => Q(2),
      I1 => cmd_empty0,
      I2 => Q(1),
      I3 => Q(0),
      O => D(1)
    );
\cmd_depth[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => Q(3),
      I1 => cmd_empty0,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      O => D(2)
    );
\cmd_depth[4]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => Q(4),
      I1 => cmd_empty0,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(3),
      O => D(3)
    );
\cmd_depth[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => m_axi_arvalid_INST_0_i_1_n_0,
      I1 => full,
      I2 => command_ongoing,
      I3 => cmd_push_block,
      I4 => \^rd_en\,
      O => cmd_empty0
    );
\cmd_depth[5]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4000BFFF"
    )
        port map (
      I0 => empty,
      I1 => m_axi_rvalid,
      I2 => s_axi_rready,
      I3 => m_axi_rlast,
      I4 => \^cmd_push_block_reg\,
      O => empty_fwft_i_reg(0)
    );
\cmd_depth[5]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => Q(5),
      I1 => \cmd_depth[5]_i_3__0_n_0\,
      I2 => Q(3),
      I3 => Q(4),
      O => D(4)
    );
\cmd_depth[5]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5555554"
    )
        port map (
      I0 => Q(3),
      I1 => Q(2),
      I2 => Q(1),
      I3 => Q(0),
      I4 => cmd_empty0,
      O => \cmd_depth[5]_i_3__0_n_0\
    );
\cmd_push_block_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F000000FF200000"
    )
        port map (
      I0 => m_axi_arvalid_INST_0_i_1_n_0,
      I1 => full,
      I2 => command_ongoing,
      I3 => cmd_push_block,
      I4 => aresetn,
      I5 => m_axi_arready,
      O => ram_full_i_reg
    );
\command_ongoing_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8FFFFF88880000"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => command_ongoing_reg,
      I2 => \last_split__1\,
      I3 => \S_AXI_AREADY_I_i_3__0_n_0\,
      I4 => command_ongoing_reg_0,
      I5 => command_ongoing,
      O => s_axi_arvalid_1
    );
fifo_gen_inst: entity work.\colordetect_auto_pc_1_fifo_generator_v13_2_5__parameterized0\
     port map (
      almost_empty => NLW_fifo_gen_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_fifo_gen_inst_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_fifo_gen_inst_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_fifo_gen_inst_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => aclk,
      data_count(5 downto 0) => NLW_fifo_gen_inst_data_count_UNCONNECTED(5 downto 0),
      dbiterr => NLW_fifo_gen_inst_dbiterr_UNCONNECTED,
      din(0) => \^din\(0),
      dout(0) => \USE_READ.USE_SPLIT_R.rd_cmd_split\,
      empty => empty,
      full => full,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(3 downto 0) => NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED(3 downto 0),
      m_axi_arlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(3 downto 0) => NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED(3 downto 0),
      m_axi_awlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(3 downto 0) => B"0000",
      m_axi_bready => NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(3 downto 0) => B"0000",
      m_axi_rlast => '0',
      m_axi_rready => NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(3 downto 0) => NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED(3 downto 0),
      m_axi_wlast => NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(63 downto 0) => NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED(63 downto 0),
      m_axis_tdest(3 downto 0) => NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(7 downto 0) => NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED(7 downto 0),
      m_axis_tkeep(3 downto 0) => NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast => NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(3 downto 0) => NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(3 downto 0) => NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_fifo_gen_inst_overflow_UNCONNECTED,
      prog_empty => NLW_fifo_gen_inst_prog_empty_UNCONNECTED,
      prog_empty_thresh(4 downto 0) => B"00000",
      prog_empty_thresh_assert(4 downto 0) => B"00000",
      prog_empty_thresh_negate(4 downto 0) => B"00000",
      prog_full => NLW_fifo_gen_inst_prog_full_UNCONNECTED,
      prog_full_thresh(4 downto 0) => B"00000",
      prog_full_thresh_assert(4 downto 0) => B"00000",
      prog_full_thresh_negate(4 downto 0) => B"00000",
      rd_clk => '0',
      rd_data_count(5 downto 0) => NLW_fifo_gen_inst_rd_data_count_UNCONNECTED(5 downto 0),
      rd_en => \^rd_en\,
      rd_rst => '0',
      rd_rst_busy => NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED,
      rst => SR(0),
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(3 downto 0) => NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(3 downto 0) => B"0000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_tdest(3 downto 0) => B"0000",
      s_axis_tid(7 downto 0) => B"00000000",
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => '0',
      s_axis_tready => NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(3 downto 0) => B"0000",
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_fifo_gen_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_fifo_gen_inst_underflow_UNCONNECTED,
      valid => NLW_fifo_gen_inst_valid_UNCONNECTED,
      wr_ack => NLW_fifo_gen_inst_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(5 downto 0) => NLW_fifo_gen_inst_wr_data_count_UNCONNECTED(5 downto 0),
      wr_en => cmd_push,
      wr_rst => '0',
      wr_rst_busy => NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED
    );
\fifo_gen_inst_i_1__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => need_to_split_q,
      I1 => \last_split__1\,
      O => \^din\(0)
    );
\fifo_gen_inst_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^cmd_push_block_reg\,
      O => cmd_push
    );
\fifo_gen_inst_i_3__1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => empty,
      I1 => m_axi_rvalid,
      I2 => s_axi_rready,
      I3 => m_axi_rlast,
      O => \^rd_en\
    );
\fifo_gen_inst_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBFF"
    )
        port map (
      I0 => cmd_push_block,
      I1 => command_ongoing,
      I2 => full,
      I3 => m_axi_arvalid_INST_0_i_1_n_0,
      O => \^cmd_push_block_reg\
    );
m_axi_arvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F020"
    )
        port map (
      I0 => m_axi_arvalid_INST_0_i_1_n_0,
      I1 => full,
      I2 => command_ongoing,
      I3 => cmd_push_block,
      O => m_axi_arvalid
    );
m_axi_arvalid_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F5F5F5F5F11115F"
    )
        port map (
      I0 => need_to_split_q,
      I1 => cmd_push_block_reg_0,
      I2 => multiple_id_non_split,
      I3 => \queue_id_reg[0]_1\,
      I4 => \queue_id_reg[0]_0\,
      I5 => cmd_empty,
      O => m_axi_arvalid_INST_0_i_1_n_0
    );
m_axi_rready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"31"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => empty,
      I2 => s_axi_rready,
      O => m_axi_rready
    );
\multiple_id_non_split_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000283C"
    )
        port map (
      I0 => cmd_empty,
      I1 => \queue_id_reg[0]_0\,
      I2 => \queue_id_reg[0]_1\,
      I3 => cmd_push_block_reg_0,
      I4 => need_to_split_q,
      I5 => \^cmd_push_block_reg\,
      O => multiple_id_non_split0
    );
\queue_id[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \queue_id_reg[0]_1\,
      I1 => \^cmd_push_block_reg\,
      I2 => \queue_id_reg[0]_0\,
      O => \queue_id_reg[0]\
    );
s_axi_rlast_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rlast,
      I1 => \USE_READ.USE_SPLIT_R.rd_cmd_split\,
      O => s_axi_rlast
    );
s_axi_rvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => empty,
      O => s_axi_rvalid
    );
split_in_progress_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FDDD"
    )
        port map (
      I0 => aresetn,
      I1 => cmd_empty,
      I2 => \^rd_en\,
      I3 => almost_empty,
      O => split_in_progress
    );
\split_ongoing_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \S_AXI_AREADY_I_i_3__0_n_0\,
      O => E(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_fifo_gen__xdcDup__1\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    din : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cmd_b_push_block_reg : out STD_LOGIC;
    ram_full_i_reg : out STD_LOGIC;
    cmd_b_push_block_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_b_push_block_reg_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    aresetn_0 : out STD_LOGIC;
    m_axi_awready_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[1]\ : out STD_LOGIC;
    empty_fwft_i_reg : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    \goreg_dm.dout_i_reg[2]\ : out STD_LOGIC;
    first_mi_word_reg : out STD_LOGIC;
    s_axi_awvalid_0 : out STD_LOGIC;
    s_axi_awvalid_1 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \gpr1.dout_i_reg[1]\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \USE_WRITE.wr_cmd_ready\ : in STD_LOGIC;
    cmd_b_push_block : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    cmd_b_push_block_reg_2 : in STD_LOGIC;
    \USE_B_CHANNEL.cmd_b_depth_reg[0]\ : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    last_word : in STD_LOGIC;
    almost_b_empty : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    cmd_b_empty : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    cmd_push_block : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awvalid : in STD_LOGIC;
    m_axi_awvalid_0 : in STD_LOGIC;
    m_axi_awvalid_1 : in STD_LOGIC;
    command_ongoing : in STD_LOGIC;
    length_counter_1_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    first_mi_word : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_wlast : in STD_LOGIC;
    \m_axi_awlen[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    need_to_split_q : in STD_LOGIC;
    \m_axi_awlen[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    \last_split__1\ : in STD_LOGIC;
    areset_d : in STD_LOGIC_VECTOR ( 1 downto 0 );
    command_ongoing_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_fifo_gen__xdcDup__1\ : entity is "axi_data_fifo_v2_1_21_fifo_gen";
end \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_fifo_gen__xdcDup__1\;

architecture STRUCTURE of \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_fifo_gen__xdcDup__1\ is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_AREADY_I_i_4_n_0 : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_depth[5]_i_3_n_0\ : STD_LOGIC;
  signal cmd_b_empty0 : STD_LOGIC;
  signal \^din\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^dout\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \^empty\ : STD_LOGIC;
  signal \^empty_fwft_i_reg\ : STD_LOGIC;
  signal \^full\ : STD_LOGIC;
  signal \^ram_full_i_reg\ : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_almost_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axis_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_dbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_overflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_empty_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_prog_full_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_sbiterr_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_underflow_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_valid_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_ack_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED : STD_LOGIC;
  signal NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_fifo_gen_inst_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_rd_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_fifo_gen_inst_wr_data_count_UNCONNECTED : STD_LOGIC_VECTOR ( 5 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of S_AXI_AREADY_I_i_1 : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of S_AXI_AREADY_I_i_4 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \USE_B_CHANNEL.cmd_b_depth[2]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \USE_B_CHANNEL.cmd_b_depth[3]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \USE_B_CHANNEL.cmd_b_empty_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of cmd_b_push_block_i_1 : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of cmd_push_block_i_1 : label is "soft_lutpair36";
  attribute C_ADD_NGC_CONSTRAINT : integer;
  attribute C_ADD_NGC_CONSTRAINT of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_AXIS : integer;
  attribute C_APPLICATION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RACH : integer;
  attribute C_APPLICATION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_RDCH : integer;
  attribute C_APPLICATION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WACH : integer;
  attribute C_APPLICATION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WDCH : integer;
  attribute C_APPLICATION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_APPLICATION_TYPE_WRCH : integer;
  attribute C_APPLICATION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_AXIS_TDATA_WIDTH : integer;
  attribute C_AXIS_TDATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXIS_TDEST_WIDTH : integer;
  attribute C_AXIS_TDEST_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TID_WIDTH : integer;
  attribute C_AXIS_TID_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXIS_TKEEP_WIDTH : integer;
  attribute C_AXIS_TKEEP_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TSTRB_WIDTH : integer;
  attribute C_AXIS_TSTRB_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TUSER_WIDTH : integer;
  attribute C_AXIS_TUSER_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXIS_TYPE : integer;
  attribute C_AXIS_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of fifo_gen_inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of fifo_gen_inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of fifo_gen_inst : label is 4;
  attribute C_AXI_LEN_WIDTH : integer;
  attribute C_AXI_LEN_WIDTH of fifo_gen_inst : label is 8;
  attribute C_AXI_LOCK_WIDTH : integer;
  attribute C_AXI_LOCK_WIDTH of fifo_gen_inst : label is 2;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_AXI_TYPE : integer;
  attribute C_AXI_TYPE of fifo_gen_inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of fifo_gen_inst : label is 1;
  attribute C_COMMON_CLOCK : integer;
  attribute C_COMMON_CLOCK of fifo_gen_inst : label is 1;
  attribute C_COUNT_TYPE : integer;
  attribute C_COUNT_TYPE of fifo_gen_inst : label is 0;
  attribute C_DATA_COUNT_WIDTH : integer;
  attribute C_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_DEFAULT_VALUE : string;
  attribute C_DEFAULT_VALUE of fifo_gen_inst : label is "BlankString";
  attribute C_DIN_WIDTH : integer;
  attribute C_DIN_WIDTH of fifo_gen_inst : label is 5;
  attribute C_DIN_WIDTH_AXIS : integer;
  attribute C_DIN_WIDTH_AXIS of fifo_gen_inst : label is 1;
  attribute C_DIN_WIDTH_RACH : integer;
  attribute C_DIN_WIDTH_RACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_RDCH : integer;
  attribute C_DIN_WIDTH_RDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WACH : integer;
  attribute C_DIN_WIDTH_WACH of fifo_gen_inst : label is 32;
  attribute C_DIN_WIDTH_WDCH : integer;
  attribute C_DIN_WIDTH_WDCH of fifo_gen_inst : label is 64;
  attribute C_DIN_WIDTH_WRCH : integer;
  attribute C_DIN_WIDTH_WRCH of fifo_gen_inst : label is 2;
  attribute C_DOUT_RST_VAL : string;
  attribute C_DOUT_RST_VAL of fifo_gen_inst : label is "0";
  attribute C_DOUT_WIDTH : integer;
  attribute C_DOUT_WIDTH of fifo_gen_inst : label is 5;
  attribute C_ENABLE_RLOCS : integer;
  attribute C_ENABLE_RLOCS of fifo_gen_inst : label is 0;
  attribute C_ENABLE_RST_SYNC : integer;
  attribute C_ENABLE_RST_SYNC of fifo_gen_inst : label is 1;
  attribute C_EN_SAFETY_CKT : integer;
  attribute C_EN_SAFETY_CKT of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE : integer;
  attribute C_ERROR_INJECTION_TYPE of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_AXIS : integer;
  attribute C_ERROR_INJECTION_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RACH : integer;
  attribute C_ERROR_INJECTION_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_RDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WACH : integer;
  attribute C_ERROR_INJECTION_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WDCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_ERROR_INJECTION_TYPE_WRCH : integer;
  attribute C_ERROR_INJECTION_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of fifo_gen_inst : label is "zynq";
  attribute C_FULL_FLAGS_RST_VAL : integer;
  attribute C_FULL_FLAGS_RST_VAL of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_EMPTY : integer;
  attribute C_HAS_ALMOST_EMPTY of fifo_gen_inst : label is 0;
  attribute C_HAS_ALMOST_FULL : integer;
  attribute C_HAS_ALMOST_FULL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDATA : integer;
  attribute C_HAS_AXIS_TDATA of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TDEST : integer;
  attribute C_HAS_AXIS_TDEST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TID : integer;
  attribute C_HAS_AXIS_TID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TKEEP : integer;
  attribute C_HAS_AXIS_TKEEP of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TLAST : integer;
  attribute C_HAS_AXIS_TLAST of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TREADY : integer;
  attribute C_HAS_AXIS_TREADY of fifo_gen_inst : label is 1;
  attribute C_HAS_AXIS_TSTRB : integer;
  attribute C_HAS_AXIS_TSTRB of fifo_gen_inst : label is 0;
  attribute C_HAS_AXIS_TUSER : integer;
  attribute C_HAS_AXIS_TUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ARUSER : integer;
  attribute C_HAS_AXI_ARUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_AWUSER : integer;
  attribute C_HAS_AXI_AWUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_BUSER : integer;
  attribute C_HAS_AXI_BUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_ID : integer;
  attribute C_HAS_AXI_ID of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RD_CHANNEL : integer;
  attribute C_HAS_AXI_RD_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_RUSER : integer;
  attribute C_HAS_AXI_RUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WR_CHANNEL : integer;
  attribute C_HAS_AXI_WR_CHANNEL of fifo_gen_inst : label is 0;
  attribute C_HAS_AXI_WUSER : integer;
  attribute C_HAS_AXI_WUSER of fifo_gen_inst : label is 0;
  attribute C_HAS_BACKUP : integer;
  attribute C_HAS_BACKUP of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNT : integer;
  attribute C_HAS_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_AXIS : integer;
  attribute C_HAS_DATA_COUNTS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RACH : integer;
  attribute C_HAS_DATA_COUNTS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_RDCH : integer;
  attribute C_HAS_DATA_COUNTS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WACH : integer;
  attribute C_HAS_DATA_COUNTS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WDCH : integer;
  attribute C_HAS_DATA_COUNTS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_DATA_COUNTS_WRCH : integer;
  attribute C_HAS_DATA_COUNTS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_INT_CLK : integer;
  attribute C_HAS_INT_CLK of fifo_gen_inst : label is 0;
  attribute C_HAS_MASTER_CE : integer;
  attribute C_HAS_MASTER_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_MEMINIT_FILE : integer;
  attribute C_HAS_MEMINIT_FILE of fifo_gen_inst : label is 0;
  attribute C_HAS_OVERFLOW : integer;
  attribute C_HAS_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_AXIS : integer;
  attribute C_HAS_PROG_FLAGS_AXIS of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RACH : integer;
  attribute C_HAS_PROG_FLAGS_RACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_RDCH : integer;
  attribute C_HAS_PROG_FLAGS_RDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WACH : integer;
  attribute C_HAS_PROG_FLAGS_WACH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WDCH : integer;
  attribute C_HAS_PROG_FLAGS_WDCH of fifo_gen_inst : label is 0;
  attribute C_HAS_PROG_FLAGS_WRCH : integer;
  attribute C_HAS_PROG_FLAGS_WRCH of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_DATA_COUNT : integer;
  attribute C_HAS_RD_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_RD_RST : integer;
  attribute C_HAS_RD_RST of fifo_gen_inst : label is 0;
  attribute C_HAS_RST : integer;
  attribute C_HAS_RST of fifo_gen_inst : label is 1;
  attribute C_HAS_SLAVE_CE : integer;
  attribute C_HAS_SLAVE_CE of fifo_gen_inst : label is 0;
  attribute C_HAS_SRST : integer;
  attribute C_HAS_SRST of fifo_gen_inst : label is 0;
  attribute C_HAS_UNDERFLOW : integer;
  attribute C_HAS_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_HAS_VALID : integer;
  attribute C_HAS_VALID of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_ACK : integer;
  attribute C_HAS_WR_ACK of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_DATA_COUNT : integer;
  attribute C_HAS_WR_DATA_COUNT of fifo_gen_inst : label is 0;
  attribute C_HAS_WR_RST : integer;
  attribute C_HAS_WR_RST of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE : integer;
  attribute C_IMPLEMENTATION_TYPE of fifo_gen_inst : label is 0;
  attribute C_IMPLEMENTATION_TYPE_AXIS : integer;
  attribute C_IMPLEMENTATION_TYPE_AXIS of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RACH : integer;
  attribute C_IMPLEMENTATION_TYPE_RACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_RDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_RDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WACH : integer;
  attribute C_IMPLEMENTATION_TYPE_WACH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WDCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WDCH of fifo_gen_inst : label is 1;
  attribute C_IMPLEMENTATION_TYPE_WRCH : integer;
  attribute C_IMPLEMENTATION_TYPE_WRCH of fifo_gen_inst : label is 1;
  attribute C_INIT_WR_PNTR_VAL : integer;
  attribute C_INIT_WR_PNTR_VAL of fifo_gen_inst : label is 0;
  attribute C_INTERFACE_TYPE : integer;
  attribute C_INTERFACE_TYPE of fifo_gen_inst : label is 0;
  attribute C_MEMORY_TYPE : integer;
  attribute C_MEMORY_TYPE of fifo_gen_inst : label is 2;
  attribute C_MIF_FILE_NAME : string;
  attribute C_MIF_FILE_NAME of fifo_gen_inst : label is "BlankString";
  attribute C_MSGON_VAL : integer;
  attribute C_MSGON_VAL of fifo_gen_inst : label is 1;
  attribute C_OPTIMIZATION_MODE : integer;
  attribute C_OPTIMIZATION_MODE of fifo_gen_inst : label is 0;
  attribute C_OVERFLOW_LOW : integer;
  attribute C_OVERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_POWER_SAVING_MODE : integer;
  attribute C_POWER_SAVING_MODE of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_LATENCY : integer;
  attribute C_PRELOAD_LATENCY of fifo_gen_inst : label is 0;
  attribute C_PRELOAD_REGS : integer;
  attribute C_PRELOAD_REGS of fifo_gen_inst : label is 1;
  attribute C_PRIM_FIFO_TYPE : string;
  attribute C_PRIM_FIFO_TYPE of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_AXIS : string;
  attribute C_PRIM_FIFO_TYPE_AXIS of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RACH : string;
  attribute C_PRIM_FIFO_TYPE_RACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_RDCH : string;
  attribute C_PRIM_FIFO_TYPE_RDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WACH : string;
  attribute C_PRIM_FIFO_TYPE_WACH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WDCH : string;
  attribute C_PRIM_FIFO_TYPE_WDCH of fifo_gen_inst : label is "512x36";
  attribute C_PRIM_FIFO_TYPE_WRCH : string;
  attribute C_PRIM_FIFO_TYPE_WRCH of fifo_gen_inst : label is "512x36";
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL of fifo_gen_inst : label is 4;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1022;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_EMPTY_THRESH_NEGATE_VAL of fifo_gen_inst : label is 5;
  attribute C_PROG_EMPTY_TYPE : integer;
  attribute C_PROG_EMPTY_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_AXIS : integer;
  attribute C_PROG_EMPTY_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RACH : integer;
  attribute C_PROG_EMPTY_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_RDCH : integer;
  attribute C_PROG_EMPTY_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WACH : integer;
  attribute C_PROG_EMPTY_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WDCH : integer;
  attribute C_PROG_EMPTY_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_EMPTY_TYPE_WRCH : integer;
  attribute C_PROG_EMPTY_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL of fifo_gen_inst : label is 31;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_AXIS of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_RDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WACH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WDCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH : integer;
  attribute C_PROG_FULL_THRESH_ASSERT_VAL_WRCH of fifo_gen_inst : label is 1023;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL : integer;
  attribute C_PROG_FULL_THRESH_NEGATE_VAL of fifo_gen_inst : label is 30;
  attribute C_PROG_FULL_TYPE : integer;
  attribute C_PROG_FULL_TYPE of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_AXIS : integer;
  attribute C_PROG_FULL_TYPE_AXIS of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RACH : integer;
  attribute C_PROG_FULL_TYPE_RACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_RDCH : integer;
  attribute C_PROG_FULL_TYPE_RDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WACH : integer;
  attribute C_PROG_FULL_TYPE_WACH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WDCH : integer;
  attribute C_PROG_FULL_TYPE_WDCH of fifo_gen_inst : label is 0;
  attribute C_PROG_FULL_TYPE_WRCH : integer;
  attribute C_PROG_FULL_TYPE_WRCH of fifo_gen_inst : label is 0;
  attribute C_RACH_TYPE : integer;
  attribute C_RACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RDCH_TYPE : integer;
  attribute C_RDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_RD_DATA_COUNT_WIDTH : integer;
  attribute C_RD_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_RD_DEPTH : integer;
  attribute C_RD_DEPTH of fifo_gen_inst : label is 32;
  attribute C_RD_FREQ : integer;
  attribute C_RD_FREQ of fifo_gen_inst : label is 1;
  attribute C_RD_PNTR_WIDTH : integer;
  attribute C_RD_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_REG_SLICE_MODE_AXIS : integer;
  attribute C_REG_SLICE_MODE_AXIS of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RACH : integer;
  attribute C_REG_SLICE_MODE_RACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_RDCH : integer;
  attribute C_REG_SLICE_MODE_RDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WACH : integer;
  attribute C_REG_SLICE_MODE_WACH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WDCH : integer;
  attribute C_REG_SLICE_MODE_WDCH of fifo_gen_inst : label is 0;
  attribute C_REG_SLICE_MODE_WRCH : integer;
  attribute C_REG_SLICE_MODE_WRCH of fifo_gen_inst : label is 0;
  attribute C_SELECT_XPM : integer;
  attribute C_SELECT_XPM of fifo_gen_inst : label is 0;
  attribute C_SYNCHRONIZER_STAGE : integer;
  attribute C_SYNCHRONIZER_STAGE of fifo_gen_inst : label is 3;
  attribute C_UNDERFLOW_LOW : integer;
  attribute C_UNDERFLOW_LOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_OVERFLOW : integer;
  attribute C_USE_COMMON_OVERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_COMMON_UNDERFLOW : integer;
  attribute C_USE_COMMON_UNDERFLOW of fifo_gen_inst : label is 0;
  attribute C_USE_DEFAULT_SETTINGS : integer;
  attribute C_USE_DEFAULT_SETTINGS of fifo_gen_inst : label is 0;
  attribute C_USE_DOUT_RST : integer;
  attribute C_USE_DOUT_RST of fifo_gen_inst : label is 0;
  attribute C_USE_ECC : integer;
  attribute C_USE_ECC of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_AXIS : integer;
  attribute C_USE_ECC_AXIS of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RACH : integer;
  attribute C_USE_ECC_RACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_RDCH : integer;
  attribute C_USE_ECC_RDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WACH : integer;
  attribute C_USE_ECC_WACH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WDCH : integer;
  attribute C_USE_ECC_WDCH of fifo_gen_inst : label is 0;
  attribute C_USE_ECC_WRCH : integer;
  attribute C_USE_ECC_WRCH of fifo_gen_inst : label is 0;
  attribute C_USE_EMBEDDED_REG : integer;
  attribute C_USE_EMBEDDED_REG of fifo_gen_inst : label is 0;
  attribute C_USE_FIFO16_FLAGS : integer;
  attribute C_USE_FIFO16_FLAGS of fifo_gen_inst : label is 0;
  attribute C_USE_FWFT_DATA_COUNT : integer;
  attribute C_USE_FWFT_DATA_COUNT of fifo_gen_inst : label is 1;
  attribute C_USE_PIPELINE_REG : integer;
  attribute C_USE_PIPELINE_REG of fifo_gen_inst : label is 0;
  attribute C_VALID_LOW : integer;
  attribute C_VALID_LOW of fifo_gen_inst : label is 0;
  attribute C_WACH_TYPE : integer;
  attribute C_WACH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WDCH_TYPE : integer;
  attribute C_WDCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WRCH_TYPE : integer;
  attribute C_WRCH_TYPE of fifo_gen_inst : label is 0;
  attribute C_WR_ACK_LOW : integer;
  attribute C_WR_ACK_LOW of fifo_gen_inst : label is 0;
  attribute C_WR_DATA_COUNT_WIDTH : integer;
  attribute C_WR_DATA_COUNT_WIDTH of fifo_gen_inst : label is 6;
  attribute C_WR_DEPTH : integer;
  attribute C_WR_DEPTH of fifo_gen_inst : label is 32;
  attribute C_WR_DEPTH_AXIS : integer;
  attribute C_WR_DEPTH_AXIS of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_RACH : integer;
  attribute C_WR_DEPTH_RACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_RDCH : integer;
  attribute C_WR_DEPTH_RDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WACH : integer;
  attribute C_WR_DEPTH_WACH of fifo_gen_inst : label is 16;
  attribute C_WR_DEPTH_WDCH : integer;
  attribute C_WR_DEPTH_WDCH of fifo_gen_inst : label is 1024;
  attribute C_WR_DEPTH_WRCH : integer;
  attribute C_WR_DEPTH_WRCH of fifo_gen_inst : label is 16;
  attribute C_WR_FREQ : integer;
  attribute C_WR_FREQ of fifo_gen_inst : label is 1;
  attribute C_WR_PNTR_WIDTH : integer;
  attribute C_WR_PNTR_WIDTH of fifo_gen_inst : label is 5;
  attribute C_WR_PNTR_WIDTH_AXIS : integer;
  attribute C_WR_PNTR_WIDTH_AXIS of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_RACH : integer;
  attribute C_WR_PNTR_WIDTH_RACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_RDCH : integer;
  attribute C_WR_PNTR_WIDTH_RDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WACH : integer;
  attribute C_WR_PNTR_WIDTH_WACH of fifo_gen_inst : label is 4;
  attribute C_WR_PNTR_WIDTH_WDCH : integer;
  attribute C_WR_PNTR_WIDTH_WDCH of fifo_gen_inst : label is 10;
  attribute C_WR_PNTR_WIDTH_WRCH : integer;
  attribute C_WR_PNTR_WIDTH_WRCH of fifo_gen_inst : label is 4;
  attribute C_WR_RESPONSE_LATENCY : integer;
  attribute C_WR_RESPONSE_LATENCY of fifo_gen_inst : label is 1;
  attribute KEEP_HIERARCHY : string;
  attribute KEEP_HIERARCHY of fifo_gen_inst : label is "soft";
  attribute is_du_within_envelope : string;
  attribute is_du_within_envelope of fifo_gen_inst : label is "true";
  attribute SOFT_HLUTNM of \fifo_gen_inst_i_2__1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of m_axi_wvalid_INST_0 : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of s_axi_wready_INST_0 : label is "soft_lutpair37";
begin
  SR(0) <= \^sr\(0);
  din(3 downto 0) <= \^din\(3 downto 0);
  dout(4 downto 0) <= \^dout\(4 downto 0);
  empty <= \^empty\;
  empty_fwft_i_reg <= \^empty_fwft_i_reg\;
  full <= \^full\;
  ram_full_i_reg <= \^ram_full_i_reg\;
S_AXI_AREADY_I_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => \^sr\(0)
    );
\S_AXI_AREADY_I_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"44744474FFFF4474"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => cmd_b_push_block_reg_2,
      I2 => \last_split__1\,
      I3 => S_AXI_AREADY_I_i_4_n_0,
      I4 => areset_d(1),
      I5 => areset_d(0),
      O => s_axi_awvalid_0
    );
S_AXI_AREADY_I_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \^ram_full_i_reg\,
      I1 => m_axi_awready,
      O => S_AXI_AREADY_I_i_4_n_0
    );
\USE_B_CHANNEL.cmd_b_depth[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => cmd_b_empty0,
      I1 => Q(1),
      I2 => Q(0),
      O => D(0)
    );
\USE_B_CHANNEL.cmd_b_depth[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => Q(2),
      I1 => cmd_b_empty0,
      I2 => Q(1),
      I3 => Q(0),
      O => D(1)
    );
\USE_B_CHANNEL.cmd_b_depth[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => Q(3),
      I1 => cmd_b_empty0,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      O => D(2)
    );
\USE_B_CHANNEL.cmd_b_depth[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAA9"
    )
        port map (
      I0 => Q(4),
      I1 => cmd_b_empty0,
      I2 => Q(0),
      I3 => Q(1),
      I4 => Q(2),
      I5 => Q(3),
      O => D(3)
    );
\USE_B_CHANNEL.cmd_b_depth[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2222222202222222"
    )
        port map (
      I0 => \^ram_full_i_reg\,
      I1 => cmd_b_push_block,
      I2 => last_word,
      I3 => s_axi_bready,
      I4 => m_axi_bvalid,
      I5 => \USE_B_CHANNEL.cmd_b_depth_reg[0]\,
      O => cmd_b_empty0
    );
\USE_B_CHANNEL.cmd_b_depth[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B44444444444444"
    )
        port map (
      I0 => cmd_b_push_block,
      I1 => \^ram_full_i_reg\,
      I2 => \USE_B_CHANNEL.cmd_b_depth_reg[0]\,
      I3 => m_axi_bvalid,
      I4 => s_axi_bready,
      I5 => last_word,
      O => E(0)
    );
\USE_B_CHANNEL.cmd_b_depth[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => Q(5),
      I1 => \USE_B_CHANNEL.cmd_b_depth[5]_i_3_n_0\,
      I2 => Q(2),
      I3 => Q(3),
      I4 => Q(4),
      O => D(4)
    );
\USE_B_CHANNEL.cmd_b_depth[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"545454545454D554"
    )
        port map (
      I0 => Q(2),
      I1 => Q(1),
      I2 => Q(0),
      I3 => \^ram_full_i_reg\,
      I4 => cmd_b_push_block,
      I5 => rd_en,
      O => \USE_B_CHANNEL.cmd_b_depth[5]_i_3_n_0\
    );
\USE_B_CHANNEL.cmd_b_empty_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4BBB000"
    )
        port map (
      I0 => cmd_b_push_block,
      I1 => \^ram_full_i_reg\,
      I2 => almost_b_empty,
      I3 => rd_en,
      I4 => cmd_b_empty,
      O => cmd_b_push_block_reg_1
    );
cmd_b_push_block_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => cmd_b_push_block,
      I1 => \^ram_full_i_reg\,
      I2 => aresetn,
      I3 => cmd_b_push_block_reg_2,
      O => cmd_b_push_block_reg_0
    );
cmd_push_block_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0A88"
    )
        port map (
      I0 => aresetn,
      I1 => cmd_push_block,
      I2 => m_axi_awready,
      I3 => \^ram_full_i_reg\,
      O => aresetn_0
    );
command_ongoing_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF8FFFFF88880000"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => cmd_b_push_block_reg_2,
      I2 => \last_split__1\,
      I3 => S_AXI_AREADY_I_i_4_n_0,
      I4 => command_ongoing_reg,
      I5 => command_ongoing,
      O => s_axi_awvalid_1
    );
fifo_gen_inst: entity work.\colordetect_auto_pc_1_fifo_generator_v13_2_5__xdcDup__1\
     port map (
      almost_empty => NLW_fifo_gen_inst_almost_empty_UNCONNECTED,
      almost_full => NLW_fifo_gen_inst_almost_full_UNCONNECTED,
      axi_ar_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_data_count_UNCONNECTED(4 downto 0),
      axi_ar_dbiterr => NLW_fifo_gen_inst_axi_ar_dbiterr_UNCONNECTED,
      axi_ar_injectdbiterr => '0',
      axi_ar_injectsbiterr => '0',
      axi_ar_overflow => NLW_fifo_gen_inst_axi_ar_overflow_UNCONNECTED,
      axi_ar_prog_empty => NLW_fifo_gen_inst_axi_ar_prog_empty_UNCONNECTED,
      axi_ar_prog_empty_thresh(3 downto 0) => B"0000",
      axi_ar_prog_full => NLW_fifo_gen_inst_axi_ar_prog_full_UNCONNECTED,
      axi_ar_prog_full_thresh(3 downto 0) => B"0000",
      axi_ar_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_rd_data_count_UNCONNECTED(4 downto 0),
      axi_ar_sbiterr => NLW_fifo_gen_inst_axi_ar_sbiterr_UNCONNECTED,
      axi_ar_underflow => NLW_fifo_gen_inst_axi_ar_underflow_UNCONNECTED,
      axi_ar_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_ar_wr_data_count_UNCONNECTED(4 downto 0),
      axi_aw_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_data_count_UNCONNECTED(4 downto 0),
      axi_aw_dbiterr => NLW_fifo_gen_inst_axi_aw_dbiterr_UNCONNECTED,
      axi_aw_injectdbiterr => '0',
      axi_aw_injectsbiterr => '0',
      axi_aw_overflow => NLW_fifo_gen_inst_axi_aw_overflow_UNCONNECTED,
      axi_aw_prog_empty => NLW_fifo_gen_inst_axi_aw_prog_empty_UNCONNECTED,
      axi_aw_prog_empty_thresh(3 downto 0) => B"0000",
      axi_aw_prog_full => NLW_fifo_gen_inst_axi_aw_prog_full_UNCONNECTED,
      axi_aw_prog_full_thresh(3 downto 0) => B"0000",
      axi_aw_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_rd_data_count_UNCONNECTED(4 downto 0),
      axi_aw_sbiterr => NLW_fifo_gen_inst_axi_aw_sbiterr_UNCONNECTED,
      axi_aw_underflow => NLW_fifo_gen_inst_axi_aw_underflow_UNCONNECTED,
      axi_aw_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_aw_wr_data_count_UNCONNECTED(4 downto 0),
      axi_b_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_data_count_UNCONNECTED(4 downto 0),
      axi_b_dbiterr => NLW_fifo_gen_inst_axi_b_dbiterr_UNCONNECTED,
      axi_b_injectdbiterr => '0',
      axi_b_injectsbiterr => '0',
      axi_b_overflow => NLW_fifo_gen_inst_axi_b_overflow_UNCONNECTED,
      axi_b_prog_empty => NLW_fifo_gen_inst_axi_b_prog_empty_UNCONNECTED,
      axi_b_prog_empty_thresh(3 downto 0) => B"0000",
      axi_b_prog_full => NLW_fifo_gen_inst_axi_b_prog_full_UNCONNECTED,
      axi_b_prog_full_thresh(3 downto 0) => B"0000",
      axi_b_rd_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_rd_data_count_UNCONNECTED(4 downto 0),
      axi_b_sbiterr => NLW_fifo_gen_inst_axi_b_sbiterr_UNCONNECTED,
      axi_b_underflow => NLW_fifo_gen_inst_axi_b_underflow_UNCONNECTED,
      axi_b_wr_data_count(4 downto 0) => NLW_fifo_gen_inst_axi_b_wr_data_count_UNCONNECTED(4 downto 0),
      axi_r_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_data_count_UNCONNECTED(10 downto 0),
      axi_r_dbiterr => NLW_fifo_gen_inst_axi_r_dbiterr_UNCONNECTED,
      axi_r_injectdbiterr => '0',
      axi_r_injectsbiterr => '0',
      axi_r_overflow => NLW_fifo_gen_inst_axi_r_overflow_UNCONNECTED,
      axi_r_prog_empty => NLW_fifo_gen_inst_axi_r_prog_empty_UNCONNECTED,
      axi_r_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_r_prog_full => NLW_fifo_gen_inst_axi_r_prog_full_UNCONNECTED,
      axi_r_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_r_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_rd_data_count_UNCONNECTED(10 downto 0),
      axi_r_sbiterr => NLW_fifo_gen_inst_axi_r_sbiterr_UNCONNECTED,
      axi_r_underflow => NLW_fifo_gen_inst_axi_r_underflow_UNCONNECTED,
      axi_r_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_r_wr_data_count_UNCONNECTED(10 downto 0),
      axi_w_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_data_count_UNCONNECTED(10 downto 0),
      axi_w_dbiterr => NLW_fifo_gen_inst_axi_w_dbiterr_UNCONNECTED,
      axi_w_injectdbiterr => '0',
      axi_w_injectsbiterr => '0',
      axi_w_overflow => NLW_fifo_gen_inst_axi_w_overflow_UNCONNECTED,
      axi_w_prog_empty => NLW_fifo_gen_inst_axi_w_prog_empty_UNCONNECTED,
      axi_w_prog_empty_thresh(9 downto 0) => B"0000000000",
      axi_w_prog_full => NLW_fifo_gen_inst_axi_w_prog_full_UNCONNECTED,
      axi_w_prog_full_thresh(9 downto 0) => B"0000000000",
      axi_w_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_rd_data_count_UNCONNECTED(10 downto 0),
      axi_w_sbiterr => NLW_fifo_gen_inst_axi_w_sbiterr_UNCONNECTED,
      axi_w_underflow => NLW_fifo_gen_inst_axi_w_underflow_UNCONNECTED,
      axi_w_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axi_w_wr_data_count_UNCONNECTED(10 downto 0),
      axis_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_data_count_UNCONNECTED(10 downto 0),
      axis_dbiterr => NLW_fifo_gen_inst_axis_dbiterr_UNCONNECTED,
      axis_injectdbiterr => '0',
      axis_injectsbiterr => '0',
      axis_overflow => NLW_fifo_gen_inst_axis_overflow_UNCONNECTED,
      axis_prog_empty => NLW_fifo_gen_inst_axis_prog_empty_UNCONNECTED,
      axis_prog_empty_thresh(9 downto 0) => B"0000000000",
      axis_prog_full => NLW_fifo_gen_inst_axis_prog_full_UNCONNECTED,
      axis_prog_full_thresh(9 downto 0) => B"0000000000",
      axis_rd_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_rd_data_count_UNCONNECTED(10 downto 0),
      axis_sbiterr => NLW_fifo_gen_inst_axis_sbiterr_UNCONNECTED,
      axis_underflow => NLW_fifo_gen_inst_axis_underflow_UNCONNECTED,
      axis_wr_data_count(10 downto 0) => NLW_fifo_gen_inst_axis_wr_data_count_UNCONNECTED(10 downto 0),
      backup => '0',
      backup_marker => '0',
      clk => aclk,
      data_count(5 downto 0) => NLW_fifo_gen_inst_data_count_UNCONNECTED(5 downto 0),
      dbiterr => NLW_fifo_gen_inst_dbiterr_UNCONNECTED,
      din(4) => \gpr1.dout_i_reg[1]\,
      din(3 downto 0) => \^din\(3 downto 0),
      dout(4 downto 0) => \^dout\(4 downto 0),
      empty => \^empty\,
      full => \^full\,
      injectdbiterr => '0',
      injectsbiterr => '0',
      int_clk => '0',
      m_aclk => '0',
      m_aclk_en => '0',
      m_axi_araddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_araddr_UNCONNECTED(31 downto 0),
      m_axi_arburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_arburst_UNCONNECTED(1 downto 0),
      m_axi_arcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_arcache_UNCONNECTED(3 downto 0),
      m_axi_arid(3 downto 0) => NLW_fifo_gen_inst_m_axi_arid_UNCONNECTED(3 downto 0),
      m_axi_arlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_arlen_UNCONNECTED(7 downto 0),
      m_axi_arlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_arlock_UNCONNECTED(1 downto 0),
      m_axi_arprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_arprot_UNCONNECTED(2 downto 0),
      m_axi_arqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_arqos_UNCONNECTED(3 downto 0),
      m_axi_arready => '0',
      m_axi_arregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_arsize_UNCONNECTED(2 downto 0),
      m_axi_aruser(0) => NLW_fifo_gen_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => NLW_fifo_gen_inst_m_axi_arvalid_UNCONNECTED,
      m_axi_awaddr(31 downto 0) => NLW_fifo_gen_inst_m_axi_awaddr_UNCONNECTED(31 downto 0),
      m_axi_awburst(1 downto 0) => NLW_fifo_gen_inst_m_axi_awburst_UNCONNECTED(1 downto 0),
      m_axi_awcache(3 downto 0) => NLW_fifo_gen_inst_m_axi_awcache_UNCONNECTED(3 downto 0),
      m_axi_awid(3 downto 0) => NLW_fifo_gen_inst_m_axi_awid_UNCONNECTED(3 downto 0),
      m_axi_awlen(7 downto 0) => NLW_fifo_gen_inst_m_axi_awlen_UNCONNECTED(7 downto 0),
      m_axi_awlock(1 downto 0) => NLW_fifo_gen_inst_m_axi_awlock_UNCONNECTED(1 downto 0),
      m_axi_awprot(2 downto 0) => NLW_fifo_gen_inst_m_axi_awprot_UNCONNECTED(2 downto 0),
      m_axi_awqos(3 downto 0) => NLW_fifo_gen_inst_m_axi_awqos_UNCONNECTED(3 downto 0),
      m_axi_awready => '0',
      m_axi_awregion(3 downto 0) => NLW_fifo_gen_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => NLW_fifo_gen_inst_m_axi_awsize_UNCONNECTED(2 downto 0),
      m_axi_awuser(0) => NLW_fifo_gen_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => NLW_fifo_gen_inst_m_axi_awvalid_UNCONNECTED,
      m_axi_bid(3 downto 0) => B"0000",
      m_axi_bready => NLW_fifo_gen_inst_m_axi_bready_UNCONNECTED,
      m_axi_bresp(1 downto 0) => B"00",
      m_axi_buser(0) => '0',
      m_axi_bvalid => '0',
      m_axi_rdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      m_axi_rid(3 downto 0) => B"0000",
      m_axi_rlast => '0',
      m_axi_rready => NLW_fifo_gen_inst_m_axi_rready_UNCONNECTED,
      m_axi_rresp(1 downto 0) => B"00",
      m_axi_ruser(0) => '0',
      m_axi_rvalid => '0',
      m_axi_wdata(63 downto 0) => NLW_fifo_gen_inst_m_axi_wdata_UNCONNECTED(63 downto 0),
      m_axi_wid(3 downto 0) => NLW_fifo_gen_inst_m_axi_wid_UNCONNECTED(3 downto 0),
      m_axi_wlast => NLW_fifo_gen_inst_m_axi_wlast_UNCONNECTED,
      m_axi_wready => '0',
      m_axi_wstrb(7 downto 0) => NLW_fifo_gen_inst_m_axi_wstrb_UNCONNECTED(7 downto 0),
      m_axi_wuser(0) => NLW_fifo_gen_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => NLW_fifo_gen_inst_m_axi_wvalid_UNCONNECTED,
      m_axis_tdata(63 downto 0) => NLW_fifo_gen_inst_m_axis_tdata_UNCONNECTED(63 downto 0),
      m_axis_tdest(3 downto 0) => NLW_fifo_gen_inst_m_axis_tdest_UNCONNECTED(3 downto 0),
      m_axis_tid(7 downto 0) => NLW_fifo_gen_inst_m_axis_tid_UNCONNECTED(7 downto 0),
      m_axis_tkeep(3 downto 0) => NLW_fifo_gen_inst_m_axis_tkeep_UNCONNECTED(3 downto 0),
      m_axis_tlast => NLW_fifo_gen_inst_m_axis_tlast_UNCONNECTED,
      m_axis_tready => '0',
      m_axis_tstrb(3 downto 0) => NLW_fifo_gen_inst_m_axis_tstrb_UNCONNECTED(3 downto 0),
      m_axis_tuser(3 downto 0) => NLW_fifo_gen_inst_m_axis_tuser_UNCONNECTED(3 downto 0),
      m_axis_tvalid => NLW_fifo_gen_inst_m_axis_tvalid_UNCONNECTED,
      overflow => NLW_fifo_gen_inst_overflow_UNCONNECTED,
      prog_empty => NLW_fifo_gen_inst_prog_empty_UNCONNECTED,
      prog_empty_thresh(4 downto 0) => B"00000",
      prog_empty_thresh_assert(4 downto 0) => B"00000",
      prog_empty_thresh_negate(4 downto 0) => B"00000",
      prog_full => NLW_fifo_gen_inst_prog_full_UNCONNECTED,
      prog_full_thresh(4 downto 0) => B"00000",
      prog_full_thresh_assert(4 downto 0) => B"00000",
      prog_full_thresh_negate(4 downto 0) => B"00000",
      rd_clk => '0',
      rd_data_count(5 downto 0) => NLW_fifo_gen_inst_rd_data_count_UNCONNECTED(5 downto 0),
      rd_en => \USE_WRITE.wr_cmd_ready\,
      rd_rst => '0',
      rd_rst_busy => NLW_fifo_gen_inst_rd_rst_busy_UNCONNECTED,
      rst => \^sr\(0),
      s_aclk => '0',
      s_aclk_en => '0',
      s_aresetn => '0',
      s_axi_araddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_arburst(1 downto 0) => B"00",
      s_axi_arcache(3 downto 0) => B"0000",
      s_axi_arid(3 downto 0) => B"0000",
      s_axi_arlen(7 downto 0) => B"00000000",
      s_axi_arlock(1 downto 0) => B"00",
      s_axi_arprot(2 downto 0) => B"000",
      s_axi_arqos(3 downto 0) => B"0000",
      s_axi_arready => NLW_fifo_gen_inst_s_axi_arready_UNCONNECTED,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => B"000",
      s_axi_aruser(0) => '0',
      s_axi_arvalid => '0',
      s_axi_awaddr(31 downto 0) => B"00000000000000000000000000000000",
      s_axi_awburst(1 downto 0) => B"00",
      s_axi_awcache(3 downto 0) => B"0000",
      s_axi_awid(3 downto 0) => B"0000",
      s_axi_awlen(7 downto 0) => B"00000000",
      s_axi_awlock(1 downto 0) => B"00",
      s_axi_awprot(2 downto 0) => B"000",
      s_axi_awqos(3 downto 0) => B"0000",
      s_axi_awready => NLW_fifo_gen_inst_s_axi_awready_UNCONNECTED,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => B"000",
      s_axi_awuser(0) => '0',
      s_axi_awvalid => '0',
      s_axi_bid(3 downto 0) => NLW_fifo_gen_inst_s_axi_bid_UNCONNECTED(3 downto 0),
      s_axi_bready => '0',
      s_axi_bresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_buser(0) => NLW_fifo_gen_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => NLW_fifo_gen_inst_s_axi_bvalid_UNCONNECTED,
      s_axi_rdata(63 downto 0) => NLW_fifo_gen_inst_s_axi_rdata_UNCONNECTED(63 downto 0),
      s_axi_rid(3 downto 0) => NLW_fifo_gen_inst_s_axi_rid_UNCONNECTED(3 downto 0),
      s_axi_rlast => NLW_fifo_gen_inst_s_axi_rlast_UNCONNECTED,
      s_axi_rready => '0',
      s_axi_rresp(1 downto 0) => NLW_fifo_gen_inst_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_ruser(0) => NLW_fifo_gen_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => NLW_fifo_gen_inst_s_axi_rvalid_UNCONNECTED,
      s_axi_wdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axi_wid(3 downto 0) => B"0000",
      s_axi_wlast => '0',
      s_axi_wready => NLW_fifo_gen_inst_s_axi_wready_UNCONNECTED,
      s_axi_wstrb(7 downto 0) => B"00000000",
      s_axi_wuser(0) => '0',
      s_axi_wvalid => '0',
      s_axis_tdata(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      s_axis_tdest(3 downto 0) => B"0000",
      s_axis_tid(7 downto 0) => B"00000000",
      s_axis_tkeep(3 downto 0) => B"0000",
      s_axis_tlast => '0',
      s_axis_tready => NLW_fifo_gen_inst_s_axis_tready_UNCONNECTED,
      s_axis_tstrb(3 downto 0) => B"0000",
      s_axis_tuser(3 downto 0) => B"0000",
      s_axis_tvalid => '0',
      sbiterr => NLW_fifo_gen_inst_sbiterr_UNCONNECTED,
      sleep => '0',
      srst => '0',
      underflow => NLW_fifo_gen_inst_underflow_UNCONNECTED,
      valid => NLW_fifo_gen_inst_valid_UNCONNECTED,
      wr_ack => NLW_fifo_gen_inst_wr_ack_UNCONNECTED,
      wr_clk => '0',
      wr_data_count(5 downto 0) => NLW_fifo_gen_inst_wr_data_count_UNCONNECTED(5 downto 0),
      wr_en => wr_en,
      wr_rst => '0',
      wr_rst_busy => NLW_fifo_gen_inst_wr_rst_busy_UNCONNECTED
    );
\fifo_gen_inst_i_2__1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => cmd_b_push_block,
      I1 => \^ram_full_i_reg\,
      O => cmd_b_push_block_reg
    );
fifo_gen_inst_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => first_mi_word,
      I1 => \^dout\(0),
      I2 => \^dout\(1),
      I3 => \^dout\(3),
      I4 => \^dout\(2),
      O => first_mi_word_reg
    );
\length_counter_1[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACCC3C5C5CCC3C"
    )
        port map (
      I0 => \^dout\(1),
      I1 => length_counter_1_reg(1),
      I2 => \^empty_fwft_i_reg\,
      I3 => length_counter_1_reg(0),
      I4 => first_mi_word,
      I5 => \^dout\(0),
      O => \goreg_dm.dout_i_reg[1]\
    );
\m_axi_awlen[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => \m_axi_awlen[3]\(1),
      I1 => \m_axi_awlen[3]\(0),
      I2 => \m_axi_awlen[3]\(3),
      I3 => \m_axi_awlen[3]\(2),
      I4 => need_to_split_q,
      I5 => \m_axi_awlen[3]_0\(0),
      O => \^din\(0)
    );
\m_axi_awlen[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => \m_axi_awlen[3]\(1),
      I1 => \m_axi_awlen[3]\(0),
      I2 => \m_axi_awlen[3]\(3),
      I3 => \m_axi_awlen[3]\(2),
      I4 => need_to_split_q,
      I5 => \m_axi_awlen[3]_0\(1),
      O => \^din\(1)
    );
\m_axi_awlen[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => \m_axi_awlen[3]\(1),
      I1 => \m_axi_awlen[3]\(0),
      I2 => \m_axi_awlen[3]\(3),
      I3 => \m_axi_awlen[3]\(2),
      I4 => need_to_split_q,
      I5 => \m_axi_awlen[3]_0\(2),
      O => \^din\(2)
    );
\m_axi_awlen[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => \m_axi_awlen[3]\(1),
      I1 => \m_axi_awlen[3]\(0),
      I2 => \m_axi_awlen[3]\(3),
      I3 => \m_axi_awlen[3]\(2),
      I4 => need_to_split_q,
      I5 => \m_axi_awlen[3]_0\(3),
      O => \^din\(3)
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000000E0000"
    )
        port map (
      I0 => m_axi_awvalid,
      I1 => m_axi_awvalid_0,
      I2 => \^full\,
      I3 => m_axi_awvalid_1,
      I4 => command_ongoing,
      I5 => cmd_push_block,
      O => \^ram_full_i_reg\
    );
m_axi_wlast_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00010000"
    )
        port map (
      I0 => \^dout\(2),
      I1 => \^dout\(3),
      I2 => \^dout\(1),
      I3 => \^dout\(0),
      I4 => first_mi_word,
      I5 => m_axi_wlast,
      O => \goreg_dm.dout_i_reg[2]\
    );
m_axi_wvalid_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \^empty\,
      O => m_axi_wvalid
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^empty\,
      I1 => s_axi_wvalid,
      I2 => m_axi_wready,
      O => \^empty_fwft_i_reg\
    );
split_ongoing_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => S_AXI_AREADY_I_i_4_n_0,
      O => m_axi_awready_0(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity colordetect_auto_pc_1_axi_data_fifo_v2_1_21_axic_fifo is
  port (
    \goreg_dm.dout_i_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    din : out STD_LOGIC_VECTOR ( 0 to 0 );
    rd_en : out STD_LOGIC;
    cmd_empty_reg : out STD_LOGIC;
    cmd_push_block_reg : out STD_LOGIC;
    split_in_progress : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    wr_en : out STD_LOGIC;
    \S_AXI_AID_Q_reg[0]\ : out STD_LOGIC;
    split_in_progress_reg : out STD_LOGIC;
    \last_split__1\ : out STD_LOGIC;
    \queue_id_reg[0]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ram_full_fb_i_reg : in STD_LOGIC;
    \USE_WRITE.wr_cmd_ready\ : in STD_LOGIC;
    almost_empty : in STD_LOGIC;
    cmd_empty : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    last_word : in STD_LOGIC;
    almost_b_empty : in STD_LOGIC;
    cmd_b_empty : in STD_LOGIC;
    \cmd_depth_reg[5]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    cmd_push_block : in STD_LOGIC;
    command_ongoing : in STD_LOGIC;
    \queue_id_reg[0]_0\ : in STD_LOGIC;
    m_axi_awvalid : in STD_LOGIC;
    queue_id : in STD_LOGIC;
    \queue_id_reg[0]_1\ : in STD_LOGIC;
    need_to_split_q : in STD_LOGIC;
    multiple_id_non_split : in STD_LOGIC;
    split_ongoing_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    access_is_incr_q : in STD_LOGIC
  );
end colordetect_auto_pc_1_axi_data_fifo_v2_1_21_axic_fifo;

architecture STRUCTURE of colordetect_auto_pc_1_axi_data_fifo_v2_1_21_axic_fifo is
begin
inst: entity work.colordetect_auto_pc_1_axi_data_fifo_v2_1_21_fifo_gen
     port map (
      D(4 downto 0) => D(4 downto 0),
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => SR(0),
      \S_AXI_AID_Q_reg[0]\ => \S_AXI_AID_Q_reg[0]\,
      \USE_WRITE.wr_cmd_ready\ => \USE_WRITE.wr_cmd_ready\,
      access_is_incr_q => access_is_incr_q,
      aclk => aclk,
      almost_b_empty => almost_b_empty,
      almost_empty => almost_empty,
      aresetn => aresetn,
      cmd_b_empty => cmd_b_empty,
      \cmd_depth_reg[5]\(5 downto 0) => \cmd_depth_reg[5]\(5 downto 0),
      cmd_empty => cmd_empty,
      cmd_empty_reg => cmd_empty_reg,
      cmd_push_block => cmd_push_block,
      cmd_push_block_reg => cmd_push_block_reg,
      command_ongoing => command_ongoing,
      din(0) => din(0),
      empty => empty,
      full => full,
      \goreg_dm.dout_i_reg[4]\(4 downto 0) => \goreg_dm.dout_i_reg[4]\(4 downto 0),
      \last_split__1\ => \last_split__1\,
      last_word => last_word,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bvalid => m_axi_bvalid,
      multiple_id_non_split => multiple_id_non_split,
      need_to_split_q => need_to_split_q,
      queue_id => queue_id,
      \queue_id_reg[0]\ => \queue_id_reg[0]\,
      \queue_id_reg[0]_0\ => \queue_id_reg[0]_0\,
      \queue_id_reg[0]_1\ => \queue_id_reg[0]_1\,
      ram_full_fb_i_reg => ram_full_fb_i_reg,
      rd_en => rd_en,
      s_axi_bready => s_axi_bready,
      split_in_progress => split_in_progress,
      split_in_progress_reg => split_in_progress_reg,
      split_ongoing_reg(3 downto 0) => split_ongoing_reg(3 downto 0),
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_axic_fifo__parameterized0\ is
  port (
    din : out STD_LOGIC_VECTOR ( 0 to 0 );
    \USE_READ.USE_SPLIT_R.rd_cmd_ready\ : out STD_LOGIC;
    ram_full_i_reg : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    multiple_id_non_split0 : out STD_LOGIC;
    cmd_push_block_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    split_in_progress : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rlast : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axi_arvalid_0 : out STD_LOGIC;
    \queue_id_reg[0]\ : out STD_LOGIC;
    s_axi_arvalid_1 : out STD_LOGIC;
    empty_fwft_i_reg : out STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    command_ongoing : in STD_LOGIC;
    cmd_push_block : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    cmd_empty : in STD_LOGIC;
    \queue_id_reg[0]_0\ : in STD_LOGIC;
    \queue_id_reg[0]_1\ : in STD_LOGIC;
    cmd_push_block_reg_0 : in STD_LOGIC;
    need_to_split_q : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    multiple_id_non_split : in STD_LOGIC;
    almost_empty : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    split_ongoing_reg : in STD_LOGIC_VECTOR ( 3 downto 0 );
    split_ongoing_reg_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    access_is_incr_q : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    command_ongoing_reg : in STD_LOGIC;
    areset_d : in STD_LOGIC_VECTOR ( 1 downto 0 );
    command_ongoing_reg_0 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_axic_fifo__parameterized0\ : entity is "axi_data_fifo_v2_1_21_axic_fifo";
end \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_axic_fifo__parameterized0\;

architecture STRUCTURE of \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_axic_fifo__parameterized0\ is
begin
inst: entity work.\colordetect_auto_pc_1_axi_data_fifo_v2_1_21_fifo_gen__parameterized0\
     port map (
      D(4 downto 0) => D(4 downto 0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      SR(0) => SR(0),
      access_is_incr_q => access_is_incr_q,
      aclk => aclk,
      almost_empty => almost_empty,
      areset_d(1 downto 0) => areset_d(1 downto 0),
      aresetn => aresetn,
      cmd_empty => cmd_empty,
      cmd_push_block => cmd_push_block,
      cmd_push_block_reg => cmd_push_block_reg,
      cmd_push_block_reg_0 => cmd_push_block_reg_0,
      command_ongoing => command_ongoing,
      command_ongoing_reg => command_ongoing_reg,
      command_ongoing_reg_0 => command_ongoing_reg_0,
      din(0) => din(0),
      empty_fwft_i_reg(0) => empty_fwft_i_reg(0),
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      multiple_id_non_split => multiple_id_non_split,
      multiple_id_non_split0 => multiple_id_non_split0,
      need_to_split_q => need_to_split_q,
      \queue_id_reg[0]\ => \queue_id_reg[0]\,
      \queue_id_reg[0]_0\ => \queue_id_reg[0]_0\,
      \queue_id_reg[0]_1\ => \queue_id_reg[0]_1\,
      ram_full_i_reg => ram_full_i_reg,
      rd_en => \USE_READ.USE_SPLIT_R.rd_cmd_ready\,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arvalid_0 => s_axi_arvalid_0,
      s_axi_arvalid_1 => s_axi_arvalid_1,
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      split_in_progress => split_in_progress,
      split_ongoing_reg(3 downto 0) => split_ongoing_reg(3 downto 0),
      split_ongoing_reg_0(3 downto 0) => split_ongoing_reg_0(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_axic_fifo__xdcDup__1\ is
  port (
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 );
    full : out STD_LOGIC;
    empty : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    din : out STD_LOGIC_VECTOR ( 3 downto 0 );
    cmd_b_push_block_reg : out STD_LOGIC;
    ram_full_i_reg : out STD_LOGIC;
    cmd_b_push_block_reg_0 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    cmd_b_push_block_reg_1 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    aresetn_0 : out STD_LOGIC;
    m_axi_awready_0 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \goreg_dm.dout_i_reg[1]\ : out STD_LOGIC;
    empty_fwft_i_reg : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    \goreg_dm.dout_i_reg[2]\ : out STD_LOGIC;
    first_mi_word_reg : out STD_LOGIC;
    s_axi_awvalid_0 : out STD_LOGIC;
    s_axi_awvalid_1 : out STD_LOGIC;
    aclk : in STD_LOGIC;
    \gpr1.dout_i_reg[1]\ : in STD_LOGIC;
    wr_en : in STD_LOGIC;
    \USE_WRITE.wr_cmd_ready\ : in STD_LOGIC;
    cmd_b_push_block : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    cmd_b_push_block_reg_2 : in STD_LOGIC;
    \USE_B_CHANNEL.cmd_b_depth_reg[0]\ : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    last_word : in STD_LOGIC;
    almost_b_empty : in STD_LOGIC;
    rd_en : in STD_LOGIC;
    cmd_b_empty : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 5 downto 0 );
    cmd_push_block : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_awvalid : in STD_LOGIC;
    m_axi_awvalid_0 : in STD_LOGIC;
    m_axi_awvalid_1 : in STD_LOGIC;
    command_ongoing : in STD_LOGIC;
    length_counter_1_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    first_mi_word : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_wlast : in STD_LOGIC;
    \m_axi_awlen[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    need_to_split_q : in STD_LOGIC;
    \m_axi_awlen[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    \last_split__1\ : in STD_LOGIC;
    areset_d : in STD_LOGIC_VECTOR ( 1 downto 0 );
    command_ongoing_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_axic_fifo__xdcDup__1\ : entity is "axi_data_fifo_v2_1_21_axic_fifo";
end \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_axic_fifo__xdcDup__1\;

architecture STRUCTURE of \colordetect_auto_pc_1_axi_data_fifo_v2_1_21_axic_fifo__xdcDup__1\ is
begin
inst: entity work.\colordetect_auto_pc_1_axi_data_fifo_v2_1_21_fifo_gen__xdcDup__1\
     port map (
      D(4 downto 0) => D(4 downto 0),
      E(0) => E(0),
      Q(5 downto 0) => Q(5 downto 0),
      SR(0) => SR(0),
      \USE_B_CHANNEL.cmd_b_depth_reg[0]\ => \USE_B_CHANNEL.cmd_b_depth_reg[0]\,
      \USE_WRITE.wr_cmd_ready\ => \USE_WRITE.wr_cmd_ready\,
      aclk => aclk,
      almost_b_empty => almost_b_empty,
      areset_d(1 downto 0) => areset_d(1 downto 0),
      aresetn => aresetn,
      aresetn_0 => aresetn_0,
      cmd_b_empty => cmd_b_empty,
      cmd_b_push_block => cmd_b_push_block,
      cmd_b_push_block_reg => cmd_b_push_block_reg,
      cmd_b_push_block_reg_0 => cmd_b_push_block_reg_0,
      cmd_b_push_block_reg_1 => cmd_b_push_block_reg_1,
      cmd_b_push_block_reg_2 => cmd_b_push_block_reg_2,
      cmd_push_block => cmd_push_block,
      command_ongoing => command_ongoing,
      command_ongoing_reg => command_ongoing_reg,
      din(3 downto 0) => din(3 downto 0),
      dout(4 downto 0) => dout(4 downto 0),
      empty => empty,
      empty_fwft_i_reg => empty_fwft_i_reg,
      first_mi_word => first_mi_word,
      first_mi_word_reg => first_mi_word_reg,
      full => full,
      \goreg_dm.dout_i_reg[1]\ => \goreg_dm.dout_i_reg[1]\,
      \goreg_dm.dout_i_reg[2]\ => \goreg_dm.dout_i_reg[2]\,
      \gpr1.dout_i_reg[1]\ => \gpr1.dout_i_reg[1]\,
      \last_split__1\ => \last_split__1\,
      last_word => last_word,
      length_counter_1_reg(1 downto 0) => length_counter_1_reg(1 downto 0),
      \m_axi_awlen[3]\(3 downto 0) => \m_axi_awlen[3]\(3 downto 0),
      \m_axi_awlen[3]_0\(3 downto 0) => \m_axi_awlen[3]_0\(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awready_0(0) => m_axi_awready_0(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_awvalid_0 => m_axi_awvalid_0,
      m_axi_awvalid_1 => m_axi_awvalid_1,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      need_to_split_q => need_to_split_q,
      ram_full_i_reg => ram_full_i_reg,
      rd_en => rd_en,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awvalid_0 => s_axi_awvalid_0,
      s_axi_awvalid_1 => s_axi_awvalid_1,
      s_axi_bready => s_axi_bready,
      s_axi_wvalid => s_axi_wvalid,
      wr_en => wr_en
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_a_axi3_conv is
  port (
    dout : out STD_LOGIC_VECTOR ( 4 downto 0 );
    empty : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    din : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \goreg_dm.dout_i_reg[4]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    areset_d : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_full_i_reg : out STD_LOGIC;
    cmd_push_block_reg_0 : out STD_LOGIC;
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \goreg_dm.dout_i_reg[1]\ : out STD_LOGIC;
    empty_fwft_i_reg : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    \goreg_dm.dout_i_reg[2]\ : out STD_LOGIC;
    first_mi_word_reg : out STD_LOGIC;
    \areset_d_reg[0]_0\ : out STD_LOGIC;
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    \USE_WRITE.wr_cmd_ready\ : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aresetn : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    last_word : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    length_counter_1_reg : in STD_LOGIC_VECTOR ( 1 downto 0 );
    first_mi_word : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_wlast : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \cmd_depth_reg[5]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
end colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_a_axi3_conv;

architecture STRUCTURE of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_a_axi3_conv is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \M_AXI_AADDR_I1__0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal S_AXI_AADDR_Q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal S_AXI_ALEN_Q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \S_AXI_ALOCK_Q_reg_n_0_[0]\ : STD_LOGIC;
  signal \USE_BURSTS.cmd_queue_n_14\ : STD_LOGIC;
  signal \USE_BURSTS.cmd_queue_n_15\ : STD_LOGIC;
  signal \USE_BURSTS.cmd_queue_n_16\ : STD_LOGIC;
  signal \USE_BURSTS.cmd_queue_n_17\ : STD_LOGIC;
  signal \USE_BURSTS.cmd_queue_n_18\ : STD_LOGIC;
  signal \USE_BURSTS.cmd_queue_n_19\ : STD_LOGIC;
  signal \USE_BURSTS.cmd_queue_n_20\ : STD_LOGIC;
  signal \USE_BURSTS.cmd_queue_n_21\ : STD_LOGIC;
  signal \USE_BURSTS.cmd_queue_n_22\ : STD_LOGIC;
  signal \USE_BURSTS.cmd_queue_n_29\ : STD_LOGIC;
  signal \USE_BURSTS.cmd_queue_n_30\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_depth[0]_i_1_n_0\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_depth_reg\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \USE_B_CHANNEL.cmd_b_queue_n_12\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_13\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_14\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_15\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_16\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_18\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_19\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_21\ : STD_LOGIC;
  signal \USE_B_CHANNEL.cmd_b_queue_n_9\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_b_ready\ : STD_LOGIC;
  signal access_is_incr : STD_LOGIC;
  signal access_is_incr_q : STD_LOGIC;
  signal addr_step : STD_LOGIC_VECTOR ( 11 downto 5 );
  signal addr_step_q : STD_LOGIC_VECTOR ( 11 downto 5 );
  signal \addr_step_q[6]_i_1_n_0\ : STD_LOGIC;
  signal \addr_step_q[7]_i_1_n_0\ : STD_LOGIC;
  signal \addr_step_q[8]_i_1_n_0\ : STD_LOGIC;
  signal \addr_step_q[9]_i_1_n_0\ : STD_LOGIC;
  signal almost_b_empty : STD_LOGIC;
  signal almost_empty : STD_LOGIC;
  signal \^areset_d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^areset_d_reg[0]_0\ : STD_LOGIC;
  signal cmd_b_empty : STD_LOGIC;
  signal cmd_b_push : STD_LOGIC;
  signal cmd_b_push_block : STD_LOGIC;
  signal cmd_b_split_i : STD_LOGIC;
  signal \cmd_depth[0]_i_1_n_0\ : STD_LOGIC;
  signal cmd_depth_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal cmd_empty : STD_LOGIC;
  signal \cmd_id_check__3\ : STD_LOGIC;
  signal cmd_push : STD_LOGIC;
  signal cmd_push_block : STD_LOGIC;
  signal \^cmd_push_block_reg_0\ : STD_LOGIC;
  signal command_ongoing : STD_LOGIC;
  signal \^din\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \first_split__2\ : STD_LOGIC;
  signal first_step : STD_LOGIC_VECTOR ( 11 downto 4 );
  signal first_step_q : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \first_step_q[0]_i_1_n_0\ : STD_LOGIC;
  signal \first_step_q[10]_i_2_n_0\ : STD_LOGIC;
  signal \first_step_q[11]_i_2_n_0\ : STD_LOGIC;
  signal \first_step_q[1]_i_1_n_0\ : STD_LOGIC;
  signal \first_step_q[2]_i_1_n_0\ : STD_LOGIC;
  signal \first_step_q[3]_i_1_n_0\ : STD_LOGIC;
  signal \first_step_q[6]_i_2_n_0\ : STD_LOGIC;
  signal \first_step_q[7]_i_2_n_0\ : STD_LOGIC;
  signal \first_step_q[8]_i_2_n_0\ : STD_LOGIC;
  signal \first_step_q[9]_i_2_n_0\ : STD_LOGIC;
  signal \incr_need_to_split__0\ : STD_LOGIC;
  signal \inst/empty\ : STD_LOGIC;
  signal \inst/full\ : STD_LOGIC;
  signal \inst/full_0\ : STD_LOGIC;
  signal \last_split__1\ : STD_LOGIC;
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal multiple_id_non_split : STD_LOGIC;
  signal multiple_id_non_split_i_1_n_0 : STD_LOGIC;
  signal multiple_id_non_split_i_2_n_0 : STD_LOGIC;
  signal need_to_split_q : STD_LOGIC;
  signal next_mi_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \next_mi_addr[11]_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr[11]_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr[11]_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr[11]_i_5_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_5_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_6_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_7_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_8_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_9_n_0\ : STD_LOGIC;
  signal \next_mi_addr[19]_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr[19]_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr[19]_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr[19]_i_5_n_0\ : STD_LOGIC;
  signal \next_mi_addr[23]_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr[23]_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr[23]_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr[23]_i_5_n_0\ : STD_LOGIC;
  signal \next_mi_addr[27]_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr[27]_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr[27]_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr[27]_i_5_n_0\ : STD_LOGIC;
  signal \next_mi_addr[31]_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr[31]_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr[31]_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr[31]_i_5_n_0\ : STD_LOGIC;
  signal \next_mi_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr[3]_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr[3]_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr[3]_i_5_n_0\ : STD_LOGIC;
  signal \next_mi_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr[7]_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr[7]_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr[7]_i_5_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \next_mi_addr_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \next_mi_addr_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \next_mi_addr_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \next_mi_addr_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \next_mi_addr_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \next_mi_addr_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \next_mi_addr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal num_transactions_q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \pushed_commands[3]_i_1_n_0\ : STD_LOGIC;
  signal pushed_commands_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pushed_new_cmd : STD_LOGIC;
  signal queue_id : STD_LOGIC;
  signal size_mask : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal size_mask_q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal split_in_progress : STD_LOGIC;
  signal split_in_progress_i_1_n_0 : STD_LOGIC;
  signal split_in_progress_reg_n_0 : STD_LOGIC;
  signal split_ongoing : STD_LOGIC;
  signal \NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_step_q[10]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \addr_step_q[11]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \addr_step_q[5]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \addr_step_q[6]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \addr_step_q[7]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \addr_step_q[8]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \addr_step_q[9]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \first_step_q[0]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \first_step_q[10]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \first_step_q[11]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \first_step_q[1]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \first_step_q[3]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \first_step_q[4]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \first_step_q[6]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \first_step_q[7]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \first_step_q[8]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \first_step_q[9]_i_1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_axi_awaddr[12]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \next_mi_addr[11]_i_6\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \next_mi_addr[3]_i_6\ : label is "soft_lutpair47";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[11]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[15]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[19]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[23]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[27]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[31]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[3]_i_1\ : label is 35;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[7]_i_1\ : label is 35;
  attribute SOFT_HLUTNM of \pushed_commands[1]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \pushed_commands[2]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \pushed_commands[3]_i_2\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \size_mask_q[0]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \size_mask_q[1]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \size_mask_q[2]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \size_mask_q[3]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \size_mask_q[4]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \size_mask_q[5]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \size_mask_q[6]_i_1\ : label is "soft_lutpair53";
begin
  E(0) <= \^e\(0);
  SR(0) <= \^sr\(0);
  areset_d(1 downto 0) <= \^areset_d\(1 downto 0);
  \areset_d_reg[0]_0\ <= \^areset_d_reg[0]_0\;
  cmd_push_block_reg_0 <= \^cmd_push_block_reg_0\;
  din(4 downto 0) <= \^din\(4 downto 0);
  m_axi_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
\S_AXI_AADDR_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(0),
      Q => S_AXI_AADDR_Q(0),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(10),
      Q => S_AXI_AADDR_Q(10),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(11),
      Q => S_AXI_AADDR_Q(11),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(12),
      Q => S_AXI_AADDR_Q(12),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(13),
      Q => S_AXI_AADDR_Q(13),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(14),
      Q => S_AXI_AADDR_Q(14),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(15),
      Q => S_AXI_AADDR_Q(15),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(16),
      Q => S_AXI_AADDR_Q(16),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(17),
      Q => S_AXI_AADDR_Q(17),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(18),
      Q => S_AXI_AADDR_Q(18),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(19),
      Q => S_AXI_AADDR_Q(19),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(1),
      Q => S_AXI_AADDR_Q(1),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(20),
      Q => S_AXI_AADDR_Q(20),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(21),
      Q => S_AXI_AADDR_Q(21),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(22),
      Q => S_AXI_AADDR_Q(22),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(23),
      Q => S_AXI_AADDR_Q(23),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(24),
      Q => S_AXI_AADDR_Q(24),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(25),
      Q => S_AXI_AADDR_Q(25),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(26),
      Q => S_AXI_AADDR_Q(26),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(27),
      Q => S_AXI_AADDR_Q(27),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(28),
      Q => S_AXI_AADDR_Q(28),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(29),
      Q => S_AXI_AADDR_Q(29),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(2),
      Q => S_AXI_AADDR_Q(2),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(30),
      Q => S_AXI_AADDR_Q(30),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(31),
      Q => S_AXI_AADDR_Q(31),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(3),
      Q => S_AXI_AADDR_Q(3),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(4),
      Q => S_AXI_AADDR_Q(4),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(5),
      Q => S_AXI_AADDR_Q(5),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(6),
      Q => S_AXI_AADDR_Q(6),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(7),
      Q => S_AXI_AADDR_Q(7),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(8),
      Q => S_AXI_AADDR_Q(8),
      R => \^sr\(0)
    );
\S_AXI_AADDR_Q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awaddr(9),
      Q => S_AXI_AADDR_Q(9),
      R => \^sr\(0)
    );
\S_AXI_ABURST_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awburst(0),
      Q => m_axi_awburst(0),
      R => \^sr\(0)
    );
\S_AXI_ABURST_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awburst(1),
      Q => m_axi_awburst(1),
      R => \^sr\(0)
    );
\S_AXI_ACACHE_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awcache(0),
      Q => m_axi_awcache(0),
      R => \^sr\(0)
    );
\S_AXI_ACACHE_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awcache(1),
      Q => m_axi_awcache(1),
      R => \^sr\(0)
    );
\S_AXI_ACACHE_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awcache(2),
      Q => m_axi_awcache(2),
      R => \^sr\(0)
    );
\S_AXI_ACACHE_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awcache(3),
      Q => m_axi_awcache(3),
      R => \^sr\(0)
    );
\S_AXI_AID_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awid(0),
      Q => \^din\(4),
      R => \^sr\(0)
    );
\S_AXI_ALEN_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awlen(0),
      Q => S_AXI_ALEN_Q(0),
      R => \^sr\(0)
    );
\S_AXI_ALEN_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awlen(1),
      Q => S_AXI_ALEN_Q(1),
      R => \^sr\(0)
    );
\S_AXI_ALEN_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awlen(2),
      Q => S_AXI_ALEN_Q(2),
      R => \^sr\(0)
    );
\S_AXI_ALEN_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awlen(3),
      Q => S_AXI_ALEN_Q(3),
      R => \^sr\(0)
    );
\S_AXI_ALOCK_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awlock(0),
      Q => \S_AXI_ALOCK_Q_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\S_AXI_APROT_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awprot(0),
      Q => m_axi_awprot(0),
      R => \^sr\(0)
    );
\S_AXI_APROT_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awprot(1),
      Q => m_axi_awprot(1),
      R => \^sr\(0)
    );
\S_AXI_APROT_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awprot(2),
      Q => m_axi_awprot(2),
      R => \^sr\(0)
    );
\S_AXI_AQOS_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awqos(0),
      Q => m_axi_awqos(0),
      R => \^sr\(0)
    );
\S_AXI_AQOS_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awqos(1),
      Q => m_axi_awqos(1),
      R => \^sr\(0)
    );
\S_AXI_AQOS_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awqos(2),
      Q => m_axi_awqos(2),
      R => \^sr\(0)
    );
\S_AXI_AQOS_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awqos(3),
      Q => m_axi_awqos(3),
      R => \^sr\(0)
    );
S_AXI_AREADY_I_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \USE_BURSTS.cmd_queue_n_29\,
      Q => \^e\(0),
      R => \^sr\(0)
    );
\S_AXI_ASIZE_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awsize(0),
      Q => m_axi_awsize(0),
      R => \^sr\(0)
    );
\S_AXI_ASIZE_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awsize(1),
      Q => m_axi_awsize(1),
      R => \^sr\(0)
    );
\S_AXI_ASIZE_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awsize(2),
      Q => m_axi_awsize(2),
      R => \^sr\(0)
    );
\USE_BURSTS.cmd_queue\: entity work.\colordetect_auto_pc_1_axi_data_fifo_v2_1_21_axic_fifo__xdcDup__1\
     port map (
      D(4) => \USE_BURSTS.cmd_queue_n_17\,
      D(3) => \USE_BURSTS.cmd_queue_n_18\,
      D(2) => \USE_BURSTS.cmd_queue_n_19\,
      D(1) => \USE_BURSTS.cmd_queue_n_20\,
      D(0) => \USE_BURSTS.cmd_queue_n_21\,
      E(0) => \USE_BURSTS.cmd_queue_n_15\,
      Q(5 downto 0) => \USE_B_CHANNEL.cmd_b_depth_reg\(5 downto 0),
      SR(0) => \^sr\(0),
      \USE_B_CHANNEL.cmd_b_depth_reg[0]\ => \inst/empty\,
      \USE_WRITE.wr_cmd_ready\ => \USE_WRITE.wr_cmd_ready\,
      aclk => aclk,
      almost_b_empty => almost_b_empty,
      areset_d(1 downto 0) => \^areset_d\(1 downto 0),
      aresetn => aresetn,
      aresetn_0 => \USE_BURSTS.cmd_queue_n_22\,
      cmd_b_empty => cmd_b_empty,
      cmd_b_push_block => cmd_b_push_block,
      cmd_b_push_block_reg => cmd_b_push,
      cmd_b_push_block_reg_0 => \USE_BURSTS.cmd_queue_n_14\,
      cmd_b_push_block_reg_1 => \USE_BURSTS.cmd_queue_n_16\,
      cmd_b_push_block_reg_2 => \^e\(0),
      cmd_push_block => cmd_push_block,
      command_ongoing => command_ongoing,
      command_ongoing_reg => \^areset_d_reg[0]_0\,
      din(3 downto 0) => \^din\(3 downto 0),
      dout(4 downto 0) => dout(4 downto 0),
      empty => empty,
      empty_fwft_i_reg => empty_fwft_i_reg,
      first_mi_word => first_mi_word,
      first_mi_word_reg => first_mi_word_reg,
      full => \inst/full\,
      \goreg_dm.dout_i_reg[1]\ => \goreg_dm.dout_i_reg[1]\,
      \goreg_dm.dout_i_reg[2]\ => \goreg_dm.dout_i_reg[2]\,
      \gpr1.dout_i_reg[1]\ => \^din\(4),
      \last_split__1\ => \last_split__1\,
      last_word => last_word,
      length_counter_1_reg(1 downto 0) => length_counter_1_reg(1 downto 0),
      \m_axi_awlen[3]\(3 downto 0) => pushed_commands_reg(3 downto 0),
      \m_axi_awlen[3]_0\(3 downto 0) => S_AXI_ALEN_Q(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awready_0(0) => pushed_new_cmd,
      m_axi_awvalid => \USE_B_CHANNEL.cmd_b_queue_n_19\,
      m_axi_awvalid_0 => \USE_B_CHANNEL.cmd_b_queue_n_18\,
      m_axi_awvalid_1 => \inst/full_0\,
      m_axi_bvalid => m_axi_bvalid,
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      need_to_split_q => need_to_split_q,
      ram_full_i_reg => ram_full_i_reg,
      rd_en => \USE_WRITE.wr_cmd_b_ready\,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_awvalid_0 => \USE_BURSTS.cmd_queue_n_29\,
      s_axi_awvalid_1 => \USE_BURSTS.cmd_queue_n_30\,
      s_axi_bready => s_axi_bready,
      s_axi_wvalid => s_axi_wvalid,
      wr_en => cmd_push
    );
\USE_B_CHANNEL.cmd_b_depth[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \USE_B_CHANNEL.cmd_b_depth_reg\(0),
      O => \USE_B_CHANNEL.cmd_b_depth[0]_i_1_n_0\
    );
\USE_B_CHANNEL.cmd_b_depth_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \USE_BURSTS.cmd_queue_n_15\,
      D => \USE_B_CHANNEL.cmd_b_depth[0]_i_1_n_0\,
      Q => \USE_B_CHANNEL.cmd_b_depth_reg\(0),
      R => \^sr\(0)
    );
\USE_B_CHANNEL.cmd_b_depth_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \USE_BURSTS.cmd_queue_n_15\,
      D => \USE_BURSTS.cmd_queue_n_21\,
      Q => \USE_B_CHANNEL.cmd_b_depth_reg\(1),
      R => \^sr\(0)
    );
\USE_B_CHANNEL.cmd_b_depth_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \USE_BURSTS.cmd_queue_n_15\,
      D => \USE_BURSTS.cmd_queue_n_20\,
      Q => \USE_B_CHANNEL.cmd_b_depth_reg\(2),
      R => \^sr\(0)
    );
\USE_B_CHANNEL.cmd_b_depth_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \USE_BURSTS.cmd_queue_n_15\,
      D => \USE_BURSTS.cmd_queue_n_19\,
      Q => \USE_B_CHANNEL.cmd_b_depth_reg\(3),
      R => \^sr\(0)
    );
\USE_B_CHANNEL.cmd_b_depth_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \USE_BURSTS.cmd_queue_n_15\,
      D => \USE_BURSTS.cmd_queue_n_18\,
      Q => \USE_B_CHANNEL.cmd_b_depth_reg\(4),
      R => \^sr\(0)
    );
\USE_B_CHANNEL.cmd_b_depth_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \USE_BURSTS.cmd_queue_n_15\,
      D => \USE_BURSTS.cmd_queue_n_17\,
      Q => \USE_B_CHANNEL.cmd_b_depth_reg\(5),
      R => \^sr\(0)
    );
\USE_B_CHANNEL.cmd_b_empty_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => \USE_B_CHANNEL.cmd_b_depth_reg\(2),
      I1 => \USE_B_CHANNEL.cmd_b_depth_reg\(3),
      I2 => \USE_B_CHANNEL.cmd_b_depth_reg\(0),
      I3 => \USE_B_CHANNEL.cmd_b_depth_reg\(1),
      I4 => \USE_B_CHANNEL.cmd_b_depth_reg\(5),
      I5 => \USE_B_CHANNEL.cmd_b_depth_reg\(4),
      O => almost_b_empty
    );
\USE_B_CHANNEL.cmd_b_empty_reg\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \USE_BURSTS.cmd_queue_n_16\,
      Q => cmd_b_empty,
      S => \^sr\(0)
    );
\USE_B_CHANNEL.cmd_b_queue\: entity work.colordetect_auto_pc_1_axi_data_fifo_v2_1_21_axic_fifo
     port map (
      D(4) => \USE_B_CHANNEL.cmd_b_queue_n_12\,
      D(3) => \USE_B_CHANNEL.cmd_b_queue_n_13\,
      D(2) => \USE_B_CHANNEL.cmd_b_queue_n_14\,
      D(1) => \USE_B_CHANNEL.cmd_b_queue_n_15\,
      D(0) => \USE_B_CHANNEL.cmd_b_queue_n_16\,
      Q(3 downto 0) => num_transactions_q(3 downto 0),
      SR(0) => \^sr\(0),
      \S_AXI_AID_Q_reg[0]\ => \USE_B_CHANNEL.cmd_b_queue_n_18\,
      \USE_WRITE.wr_cmd_ready\ => \USE_WRITE.wr_cmd_ready\,
      access_is_incr_q => access_is_incr_q,
      aclk => aclk,
      almost_b_empty => almost_b_empty,
      almost_empty => almost_empty,
      aresetn => aresetn,
      cmd_b_empty => cmd_b_empty,
      \cmd_depth_reg[5]\(5 downto 0) => cmd_depth_reg(5 downto 0),
      cmd_empty => cmd_empty,
      cmd_empty_reg => \USE_B_CHANNEL.cmd_b_queue_n_9\,
      cmd_push_block => cmd_push_block,
      cmd_push_block_reg => \^cmd_push_block_reg_0\,
      command_ongoing => command_ongoing,
      din(0) => cmd_b_split_i,
      empty => \inst/empty\,
      full => \inst/full_0\,
      \goreg_dm.dout_i_reg[4]\(4 downto 0) => \goreg_dm.dout_i_reg[4]\(4 downto 0),
      \last_split__1\ => \last_split__1\,
      last_word => last_word,
      m_axi_awvalid => split_in_progress_reg_n_0,
      m_axi_bvalid => m_axi_bvalid,
      multiple_id_non_split => multiple_id_non_split,
      need_to_split_q => need_to_split_q,
      queue_id => queue_id,
      \queue_id_reg[0]\ => \USE_B_CHANNEL.cmd_b_queue_n_21\,
      \queue_id_reg[0]_0\ => \inst/full\,
      \queue_id_reg[0]_1\ => \^din\(4),
      ram_full_fb_i_reg => cmd_b_push,
      rd_en => \USE_WRITE.wr_cmd_b_ready\,
      s_axi_bready => s_axi_bready,
      split_in_progress => split_in_progress,
      split_in_progress_reg => \USE_B_CHANNEL.cmd_b_queue_n_19\,
      split_ongoing_reg(3 downto 0) => pushed_commands_reg(3 downto 0),
      wr_en => cmd_push
    );
access_is_incr_q_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awburst(0),
      I1 => s_axi_awburst(1),
      O => access_is_incr
    );
access_is_incr_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => access_is_incr,
      Q => access_is_incr_q,
      R => \^sr\(0)
    );
\addr_step_q[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      O => addr_step(10)
    );
\addr_step_q[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      O => addr_step(11)
    );
\addr_step_q[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      O => addr_step(5)
    );
\addr_step_q[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      O => \addr_step_q[6]_i_1_n_0\
    );
\addr_step_q[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      O => \addr_step_q[7]_i_1_n_0\
    );
\addr_step_q[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      O => \addr_step_q[8]_i_1_n_0\
    );
\addr_step_q[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_awsize(0),
      I1 => s_axi_awsize(2),
      I2 => s_axi_awsize(1),
      O => \addr_step_q[9]_i_1_n_0\
    );
\addr_step_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => addr_step(10),
      Q => addr_step_q(10),
      R => \^sr\(0)
    );
\addr_step_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => addr_step(11),
      Q => addr_step_q(11),
      R => \^sr\(0)
    );
\addr_step_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => addr_step(5),
      Q => addr_step_q(5),
      R => \^sr\(0)
    );
\addr_step_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \addr_step_q[6]_i_1_n_0\,
      Q => addr_step_q(6),
      R => \^sr\(0)
    );
\addr_step_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \addr_step_q[7]_i_1_n_0\,
      Q => addr_step_q(7),
      R => \^sr\(0)
    );
\addr_step_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \addr_step_q[8]_i_1_n_0\,
      Q => addr_step_q(8),
      R => \^sr\(0)
    );
\addr_step_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \addr_step_q[9]_i_1_n_0\,
      Q => addr_step_q(9),
      R => \^sr\(0)
    );
\areset_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \^sr\(0),
      Q => \^areset_d\(0),
      R => '0'
    );
\areset_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \^areset_d\(0),
      Q => \^areset_d\(1),
      R => '0'
    );
cmd_b_push_block_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \USE_BURSTS.cmd_queue_n_14\,
      Q => cmd_b_push_block,
      R => '0'
    );
\cmd_depth[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cmd_depth_reg(0),
      O => \cmd_depth[0]_i_1_n_0\
    );
\cmd_depth_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \cmd_depth_reg[5]_0\(0),
      D => \cmd_depth[0]_i_1_n_0\,
      Q => cmd_depth_reg(0),
      R => \^sr\(0)
    );
\cmd_depth_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \cmd_depth_reg[5]_0\(0),
      D => \USE_B_CHANNEL.cmd_b_queue_n_16\,
      Q => cmd_depth_reg(1),
      R => \^sr\(0)
    );
\cmd_depth_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \cmd_depth_reg[5]_0\(0),
      D => \USE_B_CHANNEL.cmd_b_queue_n_15\,
      Q => cmd_depth_reg(2),
      R => \^sr\(0)
    );
\cmd_depth_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \cmd_depth_reg[5]_0\(0),
      D => \USE_B_CHANNEL.cmd_b_queue_n_14\,
      Q => cmd_depth_reg(3),
      R => \^sr\(0)
    );
\cmd_depth_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \cmd_depth_reg[5]_0\(0),
      D => \USE_B_CHANNEL.cmd_b_queue_n_13\,
      Q => cmd_depth_reg(4),
      R => \^sr\(0)
    );
\cmd_depth_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \cmd_depth_reg[5]_0\(0),
      D => \USE_B_CHANNEL.cmd_b_queue_n_12\,
      Q => cmd_depth_reg(5),
      R => \^sr\(0)
    );
cmd_empty_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => cmd_depth_reg(2),
      I1 => cmd_depth_reg(3),
      I2 => cmd_depth_reg(0),
      I3 => cmd_depth_reg(1),
      I4 => cmd_depth_reg(5),
      I5 => cmd_depth_reg(4),
      O => almost_empty
    );
cmd_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \USE_B_CHANNEL.cmd_b_queue_n_9\,
      Q => cmd_empty,
      S => \^sr\(0)
    );
cmd_push_block_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \USE_BURSTS.cmd_queue_n_22\,
      Q => cmd_push_block,
      R => '0'
    );
command_ongoing_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^areset_d\(0),
      I1 => \^areset_d\(1),
      O => \^areset_d_reg[0]_0\
    );
command_ongoing_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \USE_BURSTS.cmd_queue_n_30\,
      Q => command_ongoing,
      R => \^sr\(0)
    );
\first_step_q[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(0),
      I3 => s_axi_awsize(2),
      O => \first_step_q[0]_i_1_n_0\
    );
\first_step_q[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => \first_step_q[10]_i_2_n_0\,
      O => first_step(10)
    );
\first_step_q[10]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA800080000000"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awlen(2),
      I2 => s_axi_awlen(0),
      I3 => s_axi_awlen(1),
      I4 => s_axi_awlen(3),
      I5 => s_axi_awsize(0),
      O => \first_step_q[10]_i_2_n_0\
    );
\first_step_q[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => \first_step_q[11]_i_2_n_0\,
      O => first_step(11)
    );
\first_step_q[11]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awlen(3),
      I2 => s_axi_awlen(1),
      I3 => s_axi_awlen(0),
      I4 => s_axi_awlen(2),
      I5 => s_axi_awsize(0),
      O => \first_step_q[11]_i_2_n_0\
    );
\first_step_q[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000514"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(0),
      I3 => s_axi_awlen(1),
      I4 => s_axi_awsize(2),
      O => \first_step_q[1]_i_1_n_0\
    );
\first_step_q[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000F3C6A"
    )
        port map (
      I0 => s_axi_awlen(2),
      I1 => s_axi_awlen(1),
      I2 => s_axi_awlen(0),
      I3 => s_axi_awsize(0),
      I4 => s_axi_awsize(1),
      I5 => s_axi_awsize(2),
      O => \first_step_q[2]_i_1_n_0\
    );
\first_step_q[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \first_step_q[7]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      O => \first_step_q[3]_i_1_n_0\
    );
\first_step_q[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
        port map (
      I0 => s_axi_awlen(0),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(1),
      I3 => s_axi_awsize(2),
      I4 => \first_step_q[8]_i_2_n_0\,
      O => first_step(4)
    );
\first_step_q[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0036FFFF00360000"
    )
        port map (
      I0 => s_axi_awlen(1),
      I1 => s_axi_awlen(0),
      I2 => s_axi_awsize(0),
      I3 => s_axi_awsize(1),
      I4 => s_axi_awsize(2),
      I5 => \first_step_q[9]_i_2_n_0\,
      O => first_step(5)
    );
\first_step_q[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \first_step_q[6]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      I2 => \first_step_q[10]_i_2_n_0\,
      O => first_step(6)
    );
\first_step_q[6]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07531642"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(0),
      I3 => s_axi_awlen(1),
      I4 => s_axi_awlen(2),
      O => \first_step_q[6]_i_2_n_0\
    );
\first_step_q[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \first_step_q[7]_i_2_n_0\,
      I1 => s_axi_awsize(2),
      I2 => \first_step_q[11]_i_2_n_0\,
      O => first_step(7)
    );
\first_step_q[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FD53B916EC42A8"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(1),
      I3 => s_axi_awlen(0),
      I4 => s_axi_awlen(2),
      I5 => s_axi_awlen(3),
      O => \first_step_q[7]_i_2_n_0\
    );
\first_step_q[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => \first_step_q[8]_i_2_n_0\,
      O => first_step(8)
    );
\first_step_q[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14EAEA6262C8C840"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(3),
      I3 => s_axi_awlen(1),
      I4 => s_axi_awlen(0),
      I5 => s_axi_awlen(2),
      O => \first_step_q[8]_i_2_n_0\
    );
\first_step_q[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => \first_step_q[9]_i_2_n_0\,
      O => first_step(9)
    );
\first_step_q[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4AA2A2A228808080"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awlen(2),
      I3 => s_axi_awlen(0),
      I4 => s_axi_awlen(1),
      I5 => s_axi_awlen(3),
      O => \first_step_q[9]_i_2_n_0\
    );
\first_step_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \first_step_q[0]_i_1_n_0\,
      Q => first_step_q(0),
      R => \^sr\(0)
    );
\first_step_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(10),
      Q => first_step_q(10),
      R => \^sr\(0)
    );
\first_step_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(11),
      Q => first_step_q(11),
      R => \^sr\(0)
    );
\first_step_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \first_step_q[1]_i_1_n_0\,
      Q => first_step_q(1),
      R => \^sr\(0)
    );
\first_step_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \first_step_q[2]_i_1_n_0\,
      Q => first_step_q(2),
      R => \^sr\(0)
    );
\first_step_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \first_step_q[3]_i_1_n_0\,
      Q => first_step_q(3),
      R => \^sr\(0)
    );
\first_step_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(4),
      Q => first_step_q(4),
      R => \^sr\(0)
    );
\first_step_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(5),
      Q => first_step_q(5),
      R => \^sr\(0)
    );
\first_step_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(6),
      Q => first_step_q(6),
      R => \^sr\(0)
    );
\first_step_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(7),
      Q => first_step_q(7),
      R => \^sr\(0)
    );
\first_step_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(8),
      Q => first_step_q(8),
      R => \^sr\(0)
    );
\first_step_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(9),
      Q => first_step_q(9),
      R => \^sr\(0)
    );
incr_need_to_split: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => s_axi_awburst(1),
      I1 => s_axi_awburst(0),
      I2 => s_axi_awlen(5),
      I3 => s_axi_awlen(4),
      I4 => s_axi_awlen(6),
      I5 => s_axi_awlen(7),
      O => \incr_need_to_split__0\
    );
incr_need_to_split_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \incr_need_to_split__0\,
      Q => need_to_split_q,
      R => \^sr\(0)
    );
\m_axi_awaddr[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => next_mi_addr(0),
      I1 => size_mask_q(0),
      I2 => split_ongoing,
      I3 => access_is_incr_q,
      I4 => S_AXI_AADDR_Q(0),
      O => \^m_axi_awaddr\(0)
    );
\m_axi_awaddr[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(10),
      I1 => next_mi_addr(10),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(10)
    );
\m_axi_awaddr[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(11),
      I1 => next_mi_addr(11),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(11)
    );
\m_axi_awaddr[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(12),
      I1 => next_mi_addr(12),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(12)
    );
\m_axi_awaddr[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(13),
      I1 => next_mi_addr(13),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(13)
    );
\m_axi_awaddr[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(14),
      I1 => next_mi_addr(14),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(14)
    );
\m_axi_awaddr[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(15),
      I1 => next_mi_addr(15),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(15)
    );
\m_axi_awaddr[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(16),
      I1 => next_mi_addr(16),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(16)
    );
\m_axi_awaddr[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(17),
      I1 => next_mi_addr(17),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(17)
    );
\m_axi_awaddr[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(18),
      I1 => next_mi_addr(18),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(18)
    );
\m_axi_awaddr[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(19),
      I1 => next_mi_addr(19),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(19)
    );
\m_axi_awaddr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => next_mi_addr(1),
      I1 => size_mask_q(1),
      I2 => split_ongoing,
      I3 => access_is_incr_q,
      I4 => S_AXI_AADDR_Q(1),
      O => \^m_axi_awaddr\(1)
    );
\m_axi_awaddr[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(20),
      I1 => next_mi_addr(20),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(20)
    );
\m_axi_awaddr[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(21),
      I1 => next_mi_addr(21),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(21)
    );
\m_axi_awaddr[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(22),
      I1 => next_mi_addr(22),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(22)
    );
\m_axi_awaddr[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(23),
      I1 => next_mi_addr(23),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(23)
    );
\m_axi_awaddr[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(24),
      I1 => next_mi_addr(24),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(24)
    );
\m_axi_awaddr[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(25),
      I1 => next_mi_addr(25),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(25)
    );
\m_axi_awaddr[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(26),
      I1 => next_mi_addr(26),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(26)
    );
\m_axi_awaddr[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(27),
      I1 => next_mi_addr(27),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(27)
    );
\m_axi_awaddr[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(28),
      I1 => next_mi_addr(28),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(28)
    );
\m_axi_awaddr[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(29),
      I1 => next_mi_addr(29),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(29)
    );
\m_axi_awaddr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => next_mi_addr(2),
      I1 => size_mask_q(2),
      I2 => split_ongoing,
      I3 => access_is_incr_q,
      I4 => S_AXI_AADDR_Q(2),
      O => \^m_axi_awaddr\(2)
    );
\m_axi_awaddr[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(30),
      I1 => next_mi_addr(30),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(30)
    );
\m_axi_awaddr[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(31),
      I1 => next_mi_addr(31),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(31)
    );
\m_axi_awaddr[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => next_mi_addr(3),
      I1 => size_mask_q(3),
      I2 => split_ongoing,
      I3 => access_is_incr_q,
      I4 => S_AXI_AADDR_Q(3),
      O => \^m_axi_awaddr\(3)
    );
\m_axi_awaddr[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => next_mi_addr(4),
      I1 => size_mask_q(4),
      I2 => split_ongoing,
      I3 => access_is_incr_q,
      I4 => S_AXI_AADDR_Q(4),
      O => \^m_axi_awaddr\(4)
    );
\m_axi_awaddr[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => next_mi_addr(5),
      I1 => size_mask_q(5),
      I2 => split_ongoing,
      I3 => access_is_incr_q,
      I4 => S_AXI_AADDR_Q(5),
      O => \^m_axi_awaddr\(5)
    );
\m_axi_awaddr[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => next_mi_addr(6),
      I1 => size_mask_q(6),
      I2 => split_ongoing,
      I3 => access_is_incr_q,
      I4 => S_AXI_AADDR_Q(6),
      O => \^m_axi_awaddr\(6)
    );
\m_axi_awaddr[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(7),
      I1 => next_mi_addr(7),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(7)
    );
\m_axi_awaddr[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(8),
      I1 => next_mi_addr(8),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(8)
    );
\m_axi_awaddr[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(9),
      I1 => next_mi_addr(9),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_awaddr\(9)
    );
\m_axi_awlock[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \S_AXI_ALOCK_Q_reg_n_0_[0]\,
      I1 => need_to_split_q,
      O => m_axi_awlock(0)
    );
multiple_id_non_split_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00AE"
    )
        port map (
      I0 => multiple_id_non_split,
      I1 => multiple_id_non_split_i_2_n_0,
      I2 => \^cmd_push_block_reg_0\,
      I3 => split_in_progress,
      O => multiple_id_non_split_i_1_n_0
    );
multiple_id_non_split_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000511151110000"
    )
        port map (
      I0 => need_to_split_q,
      I1 => split_in_progress_reg_n_0,
      I2 => cmd_b_empty,
      I3 => cmd_empty,
      I4 => queue_id,
      I5 => \^din\(4),
      O => multiple_id_non_split_i_2_n_0
    );
multiple_id_non_split_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => multiple_id_non_split_i_1_n_0,
      Q => multiple_id_non_split,
      R => '0'
    );
\next_mi_addr[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_awaddr\(11),
      I1 => addr_step_q(11),
      I2 => \first_split__2\,
      I3 => first_step_q(11),
      O => \next_mi_addr[11]_i_2_n_0\
    );
\next_mi_addr[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_awaddr\(10),
      I1 => addr_step_q(10),
      I2 => \first_split__2\,
      I3 => first_step_q(10),
      O => \next_mi_addr[11]_i_3_n_0\
    );
\next_mi_addr[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_awaddr\(9),
      I1 => addr_step_q(9),
      I2 => \first_split__2\,
      I3 => first_step_q(9),
      O => \next_mi_addr[11]_i_4_n_0\
    );
\next_mi_addr[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_awaddr\(8),
      I1 => addr_step_q(8),
      I2 => \first_split__2\,
      I3 => first_step_q(8),
      O => \next_mi_addr[11]_i_5_n_0\
    );
\next_mi_addr[11]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => pushed_commands_reg(1),
      I1 => pushed_commands_reg(0),
      I2 => pushed_commands_reg(3),
      I3 => pushed_commands_reg(2),
      O => \first_split__2\
    );
\next_mi_addr[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(15),
      I1 => next_mi_addr(15),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_2_n_0\
    );
\next_mi_addr[15]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(14),
      I1 => next_mi_addr(14),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_3_n_0\
    );
\next_mi_addr[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(13),
      I1 => next_mi_addr(13),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_4_n_0\
    );
\next_mi_addr[15]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(12),
      I1 => next_mi_addr(12),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_5_n_0\
    );
\next_mi_addr[15]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(15),
      I1 => next_mi_addr(15),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_6_n_0\
    );
\next_mi_addr[15]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(14),
      I1 => next_mi_addr(14),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_7_n_0\
    );
\next_mi_addr[15]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(13),
      I1 => next_mi_addr(13),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_8_n_0\
    );
\next_mi_addr[15]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(12),
      I1 => next_mi_addr(12),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_9_n_0\
    );
\next_mi_addr[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(19),
      I1 => next_mi_addr(19),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[19]_i_2_n_0\
    );
\next_mi_addr[19]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(18),
      I1 => next_mi_addr(18),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[19]_i_3_n_0\
    );
\next_mi_addr[19]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(17),
      I1 => next_mi_addr(17),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[19]_i_4_n_0\
    );
\next_mi_addr[19]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(16),
      I1 => next_mi_addr(16),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[19]_i_5_n_0\
    );
\next_mi_addr[23]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(23),
      I1 => next_mi_addr(23),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[23]_i_2_n_0\
    );
\next_mi_addr[23]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(22),
      I1 => next_mi_addr(22),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[23]_i_3_n_0\
    );
\next_mi_addr[23]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(21),
      I1 => next_mi_addr(21),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[23]_i_4_n_0\
    );
\next_mi_addr[23]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(20),
      I1 => next_mi_addr(20),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[23]_i_5_n_0\
    );
\next_mi_addr[27]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(27),
      I1 => next_mi_addr(27),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[27]_i_2_n_0\
    );
\next_mi_addr[27]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(26),
      I1 => next_mi_addr(26),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[27]_i_3_n_0\
    );
\next_mi_addr[27]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(25),
      I1 => next_mi_addr(25),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[27]_i_4_n_0\
    );
\next_mi_addr[27]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(24),
      I1 => next_mi_addr(24),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[27]_i_5_n_0\
    );
\next_mi_addr[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(31),
      I1 => next_mi_addr(31),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[31]_i_2_n_0\
    );
\next_mi_addr[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(30),
      I1 => next_mi_addr(30),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[31]_i_3_n_0\
    );
\next_mi_addr[31]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(29),
      I1 => next_mi_addr(29),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[31]_i_4_n_0\
    );
\next_mi_addr[31]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => S_AXI_AADDR_Q(28),
      I1 => next_mi_addr(28),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[31]_i_5_n_0\
    );
\next_mi_addr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DDDE222E222E222"
    )
        port map (
      I0 => S_AXI_AADDR_Q(3),
      I1 => \M_AXI_AADDR_I1__0\,
      I2 => size_mask_q(3),
      I3 => next_mi_addr(3),
      I4 => \first_split__2\,
      I5 => first_step_q(3),
      O => \next_mi_addr[3]_i_2_n_0\
    );
\next_mi_addr[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DDDE222E222E222"
    )
        port map (
      I0 => S_AXI_AADDR_Q(2),
      I1 => \M_AXI_AADDR_I1__0\,
      I2 => size_mask_q(2),
      I3 => next_mi_addr(2),
      I4 => \first_split__2\,
      I5 => first_step_q(2),
      O => \next_mi_addr[3]_i_3_n_0\
    );
\next_mi_addr[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DDDE222E222E222"
    )
        port map (
      I0 => S_AXI_AADDR_Q(1),
      I1 => \M_AXI_AADDR_I1__0\,
      I2 => size_mask_q(1),
      I3 => next_mi_addr(1),
      I4 => \first_split__2\,
      I5 => first_step_q(1),
      O => \next_mi_addr[3]_i_4_n_0\
    );
\next_mi_addr[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DDDE222E222E222"
    )
        port map (
      I0 => S_AXI_AADDR_Q(0),
      I1 => \M_AXI_AADDR_I1__0\,
      I2 => size_mask_q(0),
      I3 => next_mi_addr(0),
      I4 => \first_split__2\,
      I5 => first_step_q(0),
      O => \next_mi_addr[3]_i_5_n_0\
    );
\next_mi_addr[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => split_ongoing,
      I1 => access_is_incr_q,
      O => \M_AXI_AADDR_I1__0\
    );
\next_mi_addr[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_awaddr\(7),
      I1 => addr_step_q(7),
      I2 => \first_split__2\,
      I3 => first_step_q(7),
      O => \next_mi_addr[7]_i_2_n_0\
    );
\next_mi_addr[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_awaddr\(6),
      I1 => addr_step_q(6),
      I2 => \first_split__2\,
      I3 => first_step_q(6),
      O => \next_mi_addr[7]_i_3_n_0\
    );
\next_mi_addr[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_awaddr\(5),
      I1 => addr_step_q(5),
      I2 => \first_split__2\,
      I3 => first_step_q(5),
      O => \next_mi_addr[7]_i_4_n_0\
    );
\next_mi_addr[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_awaddr\(4),
      I1 => size_mask_q(0),
      I2 => \first_split__2\,
      I3 => first_step_q(4),
      O => \next_mi_addr[7]_i_5_n_0\
    );
\next_mi_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(0),
      Q => next_mi_addr(0),
      R => \^sr\(0)
    );
\next_mi_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(10),
      Q => next_mi_addr(10),
      R => \^sr\(0)
    );
\next_mi_addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(11),
      Q => next_mi_addr(11),
      R => \^sr\(0)
    );
\next_mi_addr_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr_reg[7]_i_1_n_0\,
      CO(3) => \next_mi_addr_reg[11]_i_1_n_0\,
      CO(2) => \next_mi_addr_reg[11]_i_1_n_1\,
      CO(1) => \next_mi_addr_reg[11]_i_1_n_2\,
      CO(0) => \next_mi_addr_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^m_axi_awaddr\(11 downto 8),
      O(3 downto 0) => p_0_in(11 downto 8),
      S(3) => \next_mi_addr[11]_i_2_n_0\,
      S(2) => \next_mi_addr[11]_i_3_n_0\,
      S(1) => \next_mi_addr[11]_i_4_n_0\,
      S(0) => \next_mi_addr[11]_i_5_n_0\
    );
\next_mi_addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(12),
      Q => next_mi_addr(12),
      R => \^sr\(0)
    );
\next_mi_addr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(13),
      Q => next_mi_addr(13),
      R => \^sr\(0)
    );
\next_mi_addr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(14),
      Q => next_mi_addr(14),
      R => \^sr\(0)
    );
\next_mi_addr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(15),
      Q => next_mi_addr(15),
      R => \^sr\(0)
    );
\next_mi_addr_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr_reg[11]_i_1_n_0\,
      CO(3) => \next_mi_addr_reg[15]_i_1_n_0\,
      CO(2) => \next_mi_addr_reg[15]_i_1_n_1\,
      CO(1) => \next_mi_addr_reg[15]_i_1_n_2\,
      CO(0) => \next_mi_addr_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3) => \next_mi_addr[15]_i_2_n_0\,
      DI(2) => \next_mi_addr[15]_i_3_n_0\,
      DI(1) => \next_mi_addr[15]_i_4_n_0\,
      DI(0) => \next_mi_addr[15]_i_5_n_0\,
      O(3 downto 0) => p_0_in(15 downto 12),
      S(3) => \next_mi_addr[15]_i_6_n_0\,
      S(2) => \next_mi_addr[15]_i_7_n_0\,
      S(1) => \next_mi_addr[15]_i_8_n_0\,
      S(0) => \next_mi_addr[15]_i_9_n_0\
    );
\next_mi_addr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(16),
      Q => next_mi_addr(16),
      R => \^sr\(0)
    );
\next_mi_addr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(17),
      Q => next_mi_addr(17),
      R => \^sr\(0)
    );
\next_mi_addr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(18),
      Q => next_mi_addr(18),
      R => \^sr\(0)
    );
\next_mi_addr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(19),
      Q => next_mi_addr(19),
      R => \^sr\(0)
    );
\next_mi_addr_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr_reg[15]_i_1_n_0\,
      CO(3) => \next_mi_addr_reg[19]_i_1_n_0\,
      CO(2) => \next_mi_addr_reg[19]_i_1_n_1\,
      CO(1) => \next_mi_addr_reg[19]_i_1_n_2\,
      CO(0) => \next_mi_addr_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(19 downto 16),
      S(3) => \next_mi_addr[19]_i_2_n_0\,
      S(2) => \next_mi_addr[19]_i_3_n_0\,
      S(1) => \next_mi_addr[19]_i_4_n_0\,
      S(0) => \next_mi_addr[19]_i_5_n_0\
    );
\next_mi_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(1),
      Q => next_mi_addr(1),
      R => \^sr\(0)
    );
\next_mi_addr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(20),
      Q => next_mi_addr(20),
      R => \^sr\(0)
    );
\next_mi_addr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(21),
      Q => next_mi_addr(21),
      R => \^sr\(0)
    );
\next_mi_addr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(22),
      Q => next_mi_addr(22),
      R => \^sr\(0)
    );
\next_mi_addr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(23),
      Q => next_mi_addr(23),
      R => \^sr\(0)
    );
\next_mi_addr_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr_reg[19]_i_1_n_0\,
      CO(3) => \next_mi_addr_reg[23]_i_1_n_0\,
      CO(2) => \next_mi_addr_reg[23]_i_1_n_1\,
      CO(1) => \next_mi_addr_reg[23]_i_1_n_2\,
      CO(0) => \next_mi_addr_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(23 downto 20),
      S(3) => \next_mi_addr[23]_i_2_n_0\,
      S(2) => \next_mi_addr[23]_i_3_n_0\,
      S(1) => \next_mi_addr[23]_i_4_n_0\,
      S(0) => \next_mi_addr[23]_i_5_n_0\
    );
\next_mi_addr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(24),
      Q => next_mi_addr(24),
      R => \^sr\(0)
    );
\next_mi_addr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(25),
      Q => next_mi_addr(25),
      R => \^sr\(0)
    );
\next_mi_addr_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(26),
      Q => next_mi_addr(26),
      R => \^sr\(0)
    );
\next_mi_addr_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(27),
      Q => next_mi_addr(27),
      R => \^sr\(0)
    );
\next_mi_addr_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr_reg[23]_i_1_n_0\,
      CO(3) => \next_mi_addr_reg[27]_i_1_n_0\,
      CO(2) => \next_mi_addr_reg[27]_i_1_n_1\,
      CO(1) => \next_mi_addr_reg[27]_i_1_n_2\,
      CO(0) => \next_mi_addr_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(27 downto 24),
      S(3) => \next_mi_addr[27]_i_2_n_0\,
      S(2) => \next_mi_addr[27]_i_3_n_0\,
      S(1) => \next_mi_addr[27]_i_4_n_0\,
      S(0) => \next_mi_addr[27]_i_5_n_0\
    );
\next_mi_addr_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(28),
      Q => next_mi_addr(28),
      R => \^sr\(0)
    );
\next_mi_addr_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(29),
      Q => next_mi_addr(29),
      R => \^sr\(0)
    );
\next_mi_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(2),
      Q => next_mi_addr(2),
      R => \^sr\(0)
    );
\next_mi_addr_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(30),
      Q => next_mi_addr(30),
      R => \^sr\(0)
    );
\next_mi_addr_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(31),
      Q => next_mi_addr(31),
      R => \^sr\(0)
    );
\next_mi_addr_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr_reg[27]_i_1_n_0\,
      CO(3) => \NLW_next_mi_addr_reg[31]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \next_mi_addr_reg[31]_i_1_n_1\,
      CO(1) => \next_mi_addr_reg[31]_i_1_n_2\,
      CO(0) => \next_mi_addr_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(31 downto 28),
      S(3) => \next_mi_addr[31]_i_2_n_0\,
      S(2) => \next_mi_addr[31]_i_3_n_0\,
      S(1) => \next_mi_addr[31]_i_4_n_0\,
      S(0) => \next_mi_addr[31]_i_5_n_0\
    );
\next_mi_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(3),
      Q => next_mi_addr(3),
      R => \^sr\(0)
    );
\next_mi_addr_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \next_mi_addr_reg[3]_i_1_n_0\,
      CO(2) => \next_mi_addr_reg[3]_i_1_n_1\,
      CO(1) => \next_mi_addr_reg[3]_i_1_n_2\,
      CO(0) => \next_mi_addr_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^m_axi_awaddr\(3 downto 0),
      O(3 downto 0) => p_0_in(3 downto 0),
      S(3) => \next_mi_addr[3]_i_2_n_0\,
      S(2) => \next_mi_addr[3]_i_3_n_0\,
      S(1) => \next_mi_addr[3]_i_4_n_0\,
      S(0) => \next_mi_addr[3]_i_5_n_0\
    );
\next_mi_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(4),
      Q => next_mi_addr(4),
      R => \^sr\(0)
    );
\next_mi_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(5),
      Q => next_mi_addr(5),
      R => \^sr\(0)
    );
\next_mi_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(6),
      Q => next_mi_addr(6),
      R => \^sr\(0)
    );
\next_mi_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(7),
      Q => next_mi_addr(7),
      R => \^sr\(0)
    );
\next_mi_addr_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr_reg[3]_i_1_n_0\,
      CO(3) => \next_mi_addr_reg[7]_i_1_n_0\,
      CO(2) => \next_mi_addr_reg[7]_i_1_n_1\,
      CO(1) => \next_mi_addr_reg[7]_i_1_n_2\,
      CO(0) => \next_mi_addr_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^m_axi_awaddr\(7 downto 4),
      O(3 downto 0) => p_0_in(7 downto 4),
      S(3) => \next_mi_addr[7]_i_2_n_0\,
      S(2) => \next_mi_addr[7]_i_3_n_0\,
      S(1) => \next_mi_addr[7]_i_4_n_0\,
      S(0) => \next_mi_addr[7]_i_5_n_0\
    );
\next_mi_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(8),
      Q => next_mi_addr(8),
      R => \^sr\(0)
    );
\next_mi_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => p_0_in(9),
      Q => next_mi_addr(9),
      R => \^sr\(0)
    );
\num_transactions_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awlen(4),
      Q => num_transactions_q(0),
      R => \^sr\(0)
    );
\num_transactions_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awlen(5),
      Q => num_transactions_q(1),
      R => \^sr\(0)
    );
\num_transactions_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awlen(6),
      Q => num_transactions_q(2),
      R => \^sr\(0)
    );
\num_transactions_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_awlen(7),
      Q => num_transactions_q(3),
      R => \^sr\(0)
    );
\pushed_commands[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pushed_commands_reg(0),
      O => \p_0_in__0\(0)
    );
\pushed_commands[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pushed_commands_reg(0),
      I1 => pushed_commands_reg(1),
      O => \p_0_in__0\(1)
    );
\pushed_commands[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => pushed_commands_reg(1),
      I1 => pushed_commands_reg(0),
      I2 => pushed_commands_reg(2),
      O => \p_0_in__0\(2)
    );
\pushed_commands[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^e\(0),
      I1 => aresetn,
      O => \pushed_commands[3]_i_1_n_0\
    );
\pushed_commands[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => pushed_commands_reg(2),
      I1 => pushed_commands_reg(0),
      I2 => pushed_commands_reg(1),
      I3 => pushed_commands_reg(3),
      O => \p_0_in__0\(3)
    );
\pushed_commands_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \p_0_in__0\(0),
      Q => pushed_commands_reg(0),
      R => \pushed_commands[3]_i_1_n_0\
    );
\pushed_commands_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \p_0_in__0\(1),
      Q => pushed_commands_reg(1),
      R => \pushed_commands[3]_i_1_n_0\
    );
\pushed_commands_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \p_0_in__0\(2),
      Q => pushed_commands_reg(2),
      R => \pushed_commands[3]_i_1_n_0\
    );
\pushed_commands_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \p_0_in__0\(3),
      Q => pushed_commands_reg(3),
      R => \pushed_commands[3]_i_1_n_0\
    );
\queue_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \USE_B_CHANNEL.cmd_b_queue_n_21\,
      Q => queue_id,
      R => \^sr\(0)
    );
\size_mask_q[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      O => size_mask(0)
    );
\size_mask_q[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      O => size_mask(1)
    );
\size_mask_q[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      O => size_mask(2)
    );
\size_mask_q[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_awsize(2),
      O => size_mask(3)
    );
\size_mask_q[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => s_axi_awsize(2),
      I1 => s_axi_awsize(1),
      I2 => s_axi_awsize(0),
      O => size_mask(4)
    );
\size_mask_q[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(2),
      O => size_mask(5)
    );
\size_mask_q[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axi_awsize(1),
      I1 => s_axi_awsize(0),
      I2 => s_axi_awsize(2),
      O => size_mask(6)
    );
\size_mask_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => size_mask(0),
      Q => size_mask_q(0),
      R => \^sr\(0)
    );
\size_mask_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => size_mask(1),
      Q => size_mask_q(1),
      R => \^sr\(0)
    );
\size_mask_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => size_mask(2),
      Q => size_mask_q(2),
      R => \^sr\(0)
    );
\size_mask_q_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => '1',
      Q => size_mask_q(31),
      R => \^sr\(0)
    );
\size_mask_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => size_mask(3),
      Q => size_mask_q(3),
      R => \^sr\(0)
    );
\size_mask_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => size_mask(4),
      Q => size_mask_q(4),
      R => \^sr\(0)
    );
\size_mask_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => size_mask(5),
      Q => size_mask_q(5),
      R => \^sr\(0)
    );
\size_mask_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => size_mask(6),
      Q => size_mask_q(6),
      R => \^sr\(0)
    );
split_in_progress_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAEA"
    )
        port map (
      I0 => split_in_progress_reg_n_0,
      I1 => \cmd_id_check__3\,
      I2 => need_to_split_q,
      I3 => multiple_id_non_split,
      I4 => \^cmd_push_block_reg_0\,
      I5 => split_in_progress,
      O => split_in_progress_i_1_n_0
    );
split_in_progress_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F88F"
    )
        port map (
      I0 => cmd_b_empty,
      I1 => cmd_empty,
      I2 => queue_id,
      I3 => \^din\(4),
      O => \cmd_id_check__3\
    );
split_in_progress_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => split_in_progress_i_1_n_0,
      Q => split_in_progress_reg_n_0,
      R => '0'
    );
split_ongoing_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => cmd_b_split_i,
      Q => split_ongoing,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_a_axi3_conv__parameterized0\ is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \S_AXI_AID_Q_reg[0]_0\ : out STD_LOGIC;
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rlast : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arready : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    areset_d : in STD_LOGIC_VECTOR ( 1 downto 0 );
    command_ongoing_reg_0 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_a_axi3_conv__parameterized0\ : entity is "axi_protocol_converter_v2_1_22_a_axi3_conv";
end \colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_a_axi3_conv__parameterized0\;

architecture STRUCTURE of \colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_a_axi3_conv__parameterized0\ is
  signal \^e\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \M_AXI_AADDR_I1__0\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[0]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[10]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[11]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[12]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[13]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[14]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[15]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[16]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[17]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[18]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[19]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[1]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[20]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[21]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[22]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[23]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[24]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[25]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[26]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[27]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[28]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[29]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[2]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[30]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[31]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[3]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[4]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[5]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[6]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[7]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[8]\ : STD_LOGIC;
  signal \S_AXI_AADDR_Q_reg_n_0_[9]\ : STD_LOGIC;
  signal \^s_axi_aid_q_reg[0]_0\ : STD_LOGIC;
  signal S_AXI_ALEN_Q : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \S_AXI_ALOCK_Q_reg_n_0_[0]\ : STD_LOGIC;
  signal \USE_READ.USE_SPLIT_R.rd_cmd_ready\ : STD_LOGIC;
  signal \USE_R_CHANNEL.cmd_queue_n_10\ : STD_LOGIC;
  signal \USE_R_CHANNEL.cmd_queue_n_16\ : STD_LOGIC;
  signal \USE_R_CHANNEL.cmd_queue_n_17\ : STD_LOGIC;
  signal \USE_R_CHANNEL.cmd_queue_n_18\ : STD_LOGIC;
  signal \USE_R_CHANNEL.cmd_queue_n_19\ : STD_LOGIC;
  signal \USE_R_CHANNEL.cmd_queue_n_2\ : STD_LOGIC;
  signal \USE_R_CHANNEL.cmd_queue_n_5\ : STD_LOGIC;
  signal \USE_R_CHANNEL.cmd_queue_n_6\ : STD_LOGIC;
  signal \USE_R_CHANNEL.cmd_queue_n_7\ : STD_LOGIC;
  signal \USE_R_CHANNEL.cmd_queue_n_8\ : STD_LOGIC;
  signal \USE_R_CHANNEL.cmd_queue_n_9\ : STD_LOGIC;
  signal access_is_incr : STD_LOGIC;
  signal access_is_incr_q : STD_LOGIC;
  signal \addr_step_q[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \addr_step_q[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \addr_step_q[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \addr_step_q[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \addr_step_q[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \addr_step_q[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \addr_step_q[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \addr_step_q_reg_n_0_[10]\ : STD_LOGIC;
  signal \addr_step_q_reg_n_0_[11]\ : STD_LOGIC;
  signal \addr_step_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \addr_step_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \addr_step_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \addr_step_q_reg_n_0_[8]\ : STD_LOGIC;
  signal \addr_step_q_reg_n_0_[9]\ : STD_LOGIC;
  signal almost_empty : STD_LOGIC;
  signal \cmd_depth[0]_i_1__0_n_0\ : STD_LOGIC;
  signal cmd_depth_reg : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal cmd_empty : STD_LOGIC;
  signal cmd_empty_i_1_n_0 : STD_LOGIC;
  signal \cmd_id_check__2\ : STD_LOGIC;
  signal cmd_push_block : STD_LOGIC;
  signal cmd_split_i : STD_LOGIC;
  signal command_ongoing : STD_LOGIC;
  signal \first_split__2\ : STD_LOGIC;
  signal first_step : STD_LOGIC_VECTOR ( 11 downto 4 );
  signal \first_step_q[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \first_step_q[10]_i_2__0_n_0\ : STD_LOGIC;
  signal \first_step_q[11]_i_2__0_n_0\ : STD_LOGIC;
  signal \first_step_q[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \first_step_q[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \first_step_q[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \first_step_q[6]_i_2__0_n_0\ : STD_LOGIC;
  signal \first_step_q[7]_i_2__0_n_0\ : STD_LOGIC;
  signal \first_step_q[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \first_step_q[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \first_step_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \first_step_q_reg_n_0_[10]\ : STD_LOGIC;
  signal \first_step_q_reg_n_0_[11]\ : STD_LOGIC;
  signal \first_step_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \first_step_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \first_step_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \first_step_q_reg_n_0_[4]\ : STD_LOGIC;
  signal \first_step_q_reg_n_0_[5]\ : STD_LOGIC;
  signal \first_step_q_reg_n_0_[6]\ : STD_LOGIC;
  signal \first_step_q_reg_n_0_[7]\ : STD_LOGIC;
  signal \first_step_q_reg_n_0_[8]\ : STD_LOGIC;
  signal \first_step_q_reg_n_0_[9]\ : STD_LOGIC;
  signal \incr_need_to_split__0\ : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal multiple_id_non_split : STD_LOGIC;
  signal multiple_id_non_split0 : STD_LOGIC;
  signal multiple_id_non_split_i_1_n_0 : STD_LOGIC;
  signal need_to_split_q : STD_LOGIC;
  signal next_mi_addr : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \next_mi_addr[11]_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr[11]_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr[11]_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr[11]_i_5_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_3__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_4__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_5__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_6__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_7__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_8__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[15]_i_9__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[19]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[19]_i_3__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[19]_i_4__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[19]_i_5__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[23]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[23]_i_3__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[23]_i_4__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[23]_i_5__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[27]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[27]_i_3__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[27]_i_4__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[27]_i_5__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[31]_i_2__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[31]_i_3__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[31]_i_4__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[31]_i_5__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr[3]_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr[3]_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr[3]_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr[3]_i_5_n_0\ : STD_LOGIC;
  signal \next_mi_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \next_mi_addr[7]_i_3_n_0\ : STD_LOGIC;
  signal \next_mi_addr[7]_i_4_n_0\ : STD_LOGIC;
  signal \next_mi_addr[7]_i_5_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[11]_i_1__0_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[11]_i_1__0_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[11]_i_1__0_n_3\ : STD_LOGIC;
  signal \next_mi_addr_reg[11]_i_1__0_n_4\ : STD_LOGIC;
  signal \next_mi_addr_reg[11]_i_1__0_n_5\ : STD_LOGIC;
  signal \next_mi_addr_reg[11]_i_1__0_n_6\ : STD_LOGIC;
  signal \next_mi_addr_reg[11]_i_1__0_n_7\ : STD_LOGIC;
  signal \next_mi_addr_reg[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[15]_i_1__0_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[15]_i_1__0_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[15]_i_1__0_n_3\ : STD_LOGIC;
  signal \next_mi_addr_reg[15]_i_1__0_n_4\ : STD_LOGIC;
  signal \next_mi_addr_reg[15]_i_1__0_n_5\ : STD_LOGIC;
  signal \next_mi_addr_reg[15]_i_1__0_n_6\ : STD_LOGIC;
  signal \next_mi_addr_reg[15]_i_1__0_n_7\ : STD_LOGIC;
  signal \next_mi_addr_reg[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[19]_i_1__0_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[19]_i_1__0_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[19]_i_1__0_n_3\ : STD_LOGIC;
  signal \next_mi_addr_reg[19]_i_1__0_n_4\ : STD_LOGIC;
  signal \next_mi_addr_reg[19]_i_1__0_n_5\ : STD_LOGIC;
  signal \next_mi_addr_reg[19]_i_1__0_n_6\ : STD_LOGIC;
  signal \next_mi_addr_reg[19]_i_1__0_n_7\ : STD_LOGIC;
  signal \next_mi_addr_reg[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[23]_i_1__0_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[23]_i_1__0_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[23]_i_1__0_n_3\ : STD_LOGIC;
  signal \next_mi_addr_reg[23]_i_1__0_n_4\ : STD_LOGIC;
  signal \next_mi_addr_reg[23]_i_1__0_n_5\ : STD_LOGIC;
  signal \next_mi_addr_reg[23]_i_1__0_n_6\ : STD_LOGIC;
  signal \next_mi_addr_reg[23]_i_1__0_n_7\ : STD_LOGIC;
  signal \next_mi_addr_reg[27]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[27]_i_1__0_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[27]_i_1__0_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[27]_i_1__0_n_3\ : STD_LOGIC;
  signal \next_mi_addr_reg[27]_i_1__0_n_4\ : STD_LOGIC;
  signal \next_mi_addr_reg[27]_i_1__0_n_5\ : STD_LOGIC;
  signal \next_mi_addr_reg[27]_i_1__0_n_6\ : STD_LOGIC;
  signal \next_mi_addr_reg[27]_i_1__0_n_7\ : STD_LOGIC;
  signal \next_mi_addr_reg[31]_i_1__0_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[31]_i_1__0_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[31]_i_1__0_n_3\ : STD_LOGIC;
  signal \next_mi_addr_reg[31]_i_1__0_n_4\ : STD_LOGIC;
  signal \next_mi_addr_reg[31]_i_1__0_n_5\ : STD_LOGIC;
  signal \next_mi_addr_reg[31]_i_1__0_n_6\ : STD_LOGIC;
  signal \next_mi_addr_reg[31]_i_1__0_n_7\ : STD_LOGIC;
  signal \next_mi_addr_reg[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[3]_i_1__0_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[3]_i_1__0_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[3]_i_1__0_n_3\ : STD_LOGIC;
  signal \next_mi_addr_reg[3]_i_1__0_n_4\ : STD_LOGIC;
  signal \next_mi_addr_reg[3]_i_1__0_n_5\ : STD_LOGIC;
  signal \next_mi_addr_reg[3]_i_1__0_n_6\ : STD_LOGIC;
  signal \next_mi_addr_reg[3]_i_1__0_n_7\ : STD_LOGIC;
  signal \next_mi_addr_reg[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \next_mi_addr_reg[7]_i_1__0_n_1\ : STD_LOGIC;
  signal \next_mi_addr_reg[7]_i_1__0_n_2\ : STD_LOGIC;
  signal \next_mi_addr_reg[7]_i_1__0_n_3\ : STD_LOGIC;
  signal \next_mi_addr_reg[7]_i_1__0_n_4\ : STD_LOGIC;
  signal \next_mi_addr_reg[7]_i_1__0_n_5\ : STD_LOGIC;
  signal \next_mi_addr_reg[7]_i_1__0_n_6\ : STD_LOGIC;
  signal \next_mi_addr_reg[7]_i_1__0_n_7\ : STD_LOGIC;
  signal \num_transactions_q_reg_n_0_[0]\ : STD_LOGIC;
  signal \num_transactions_q_reg_n_0_[1]\ : STD_LOGIC;
  signal \num_transactions_q_reg_n_0_[2]\ : STD_LOGIC;
  signal \num_transactions_q_reg_n_0_[3]\ : STD_LOGIC;
  signal \p_0_in__1\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \pushed_commands[3]_i_1__0_n_0\ : STD_LOGIC;
  signal pushed_commands_reg : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal pushed_new_cmd : STD_LOGIC;
  signal \queue_id_reg_n_0_[0]\ : STD_LOGIC;
  signal size_mask_q : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \size_mask_q[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \size_mask_q[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \size_mask_q[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \size_mask_q[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \size_mask_q[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \size_mask_q[5]_i_1__0_n_0\ : STD_LOGIC;
  signal \size_mask_q[6]_i_1__0_n_0\ : STD_LOGIC;
  signal split_in_progress : STD_LOGIC;
  signal split_in_progress_i_1_n_0 : STD_LOGIC;
  signal split_in_progress_reg_n_0 : STD_LOGIC;
  signal split_ongoing : STD_LOGIC;
  signal \NLW_next_mi_addr_reg[31]_i_1__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \addr_step_q[10]_i_1__0\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \addr_step_q[11]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \addr_step_q[5]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \addr_step_q[6]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \addr_step_q[7]_i_1__0\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \addr_step_q[8]_i_1__0\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \addr_step_q[9]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \first_step_q[0]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \first_step_q[10]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \first_step_q[11]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \first_step_q[1]_i_1__0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \first_step_q[3]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \first_step_q[4]_i_1__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \first_step_q[6]_i_1__0\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \first_step_q[7]_i_1__0\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \first_step_q[8]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \first_step_q[9]_i_1__0\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_axi_araddr[12]_INST_0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \next_mi_addr[11]_i_6__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \next_mi_addr[3]_i_6__0\ : label is "soft_lutpair13";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[11]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[15]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[19]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[23]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[27]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[31]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[3]_i_1__0\ : label is 35;
  attribute ADDER_THRESHOLD of \next_mi_addr_reg[7]_i_1__0\ : label is 35;
  attribute SOFT_HLUTNM of \pushed_commands[1]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pushed_commands[2]_i_1__0\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \pushed_commands[3]_i_2__0\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \size_mask_q[0]_i_1__0\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \size_mask_q[1]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \size_mask_q[2]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \size_mask_q[3]_i_1__0\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \size_mask_q[4]_i_1__0\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \size_mask_q[5]_i_1__0\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \size_mask_q[6]_i_1__0\ : label is "soft_lutpair19";
begin
  E(0) <= \^e\(0);
  \S_AXI_AID_Q_reg[0]_0\ <= \^s_axi_aid_q_reg[0]_0\;
  m_axi_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
\S_AXI_AADDR_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(0),
      Q => \S_AXI_AADDR_Q_reg_n_0_[0]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(10),
      Q => \S_AXI_AADDR_Q_reg_n_0_[10]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(11),
      Q => \S_AXI_AADDR_Q_reg_n_0_[11]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(12),
      Q => \S_AXI_AADDR_Q_reg_n_0_[12]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(13),
      Q => \S_AXI_AADDR_Q_reg_n_0_[13]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(14),
      Q => \S_AXI_AADDR_Q_reg_n_0_[14]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(15),
      Q => \S_AXI_AADDR_Q_reg_n_0_[15]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(16),
      Q => \S_AXI_AADDR_Q_reg_n_0_[16]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(17),
      Q => \S_AXI_AADDR_Q_reg_n_0_[17]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(18),
      Q => \S_AXI_AADDR_Q_reg_n_0_[18]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(19),
      Q => \S_AXI_AADDR_Q_reg_n_0_[19]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(1),
      Q => \S_AXI_AADDR_Q_reg_n_0_[1]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(20),
      Q => \S_AXI_AADDR_Q_reg_n_0_[20]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(21),
      Q => \S_AXI_AADDR_Q_reg_n_0_[21]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(22),
      Q => \S_AXI_AADDR_Q_reg_n_0_[22]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(23),
      Q => \S_AXI_AADDR_Q_reg_n_0_[23]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(24),
      Q => \S_AXI_AADDR_Q_reg_n_0_[24]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(25),
      Q => \S_AXI_AADDR_Q_reg_n_0_[25]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(26),
      Q => \S_AXI_AADDR_Q_reg_n_0_[26]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(27),
      Q => \S_AXI_AADDR_Q_reg_n_0_[27]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(28),
      Q => \S_AXI_AADDR_Q_reg_n_0_[28]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(29),
      Q => \S_AXI_AADDR_Q_reg_n_0_[29]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(2),
      Q => \S_AXI_AADDR_Q_reg_n_0_[2]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(30),
      Q => \S_AXI_AADDR_Q_reg_n_0_[30]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(31),
      Q => \S_AXI_AADDR_Q_reg_n_0_[31]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(3),
      Q => \S_AXI_AADDR_Q_reg_n_0_[3]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(4),
      Q => \S_AXI_AADDR_Q_reg_n_0_[4]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(5),
      Q => \S_AXI_AADDR_Q_reg_n_0_[5]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(6),
      Q => \S_AXI_AADDR_Q_reg_n_0_[6]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(7),
      Q => \S_AXI_AADDR_Q_reg_n_0_[7]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(8),
      Q => \S_AXI_AADDR_Q_reg_n_0_[8]\,
      R => SR(0)
    );
\S_AXI_AADDR_Q_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_araddr(9),
      Q => \S_AXI_AADDR_Q_reg_n_0_[9]\,
      R => SR(0)
    );
\S_AXI_ABURST_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arburst(0),
      Q => m_axi_arburst(0),
      R => SR(0)
    );
\S_AXI_ABURST_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arburst(1),
      Q => m_axi_arburst(1),
      R => SR(0)
    );
\S_AXI_ACACHE_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arcache(0),
      Q => m_axi_arcache(0),
      R => SR(0)
    );
\S_AXI_ACACHE_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arcache(1),
      Q => m_axi_arcache(1),
      R => SR(0)
    );
\S_AXI_ACACHE_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arcache(2),
      Q => m_axi_arcache(2),
      R => SR(0)
    );
\S_AXI_ACACHE_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arcache(3),
      Q => m_axi_arcache(3),
      R => SR(0)
    );
\S_AXI_AID_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arid(0),
      Q => \^s_axi_aid_q_reg[0]_0\,
      R => SR(0)
    );
\S_AXI_ALEN_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arlen(0),
      Q => S_AXI_ALEN_Q(0),
      R => SR(0)
    );
\S_AXI_ALEN_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arlen(1),
      Q => S_AXI_ALEN_Q(1),
      R => SR(0)
    );
\S_AXI_ALEN_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arlen(2),
      Q => S_AXI_ALEN_Q(2),
      R => SR(0)
    );
\S_AXI_ALEN_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arlen(3),
      Q => S_AXI_ALEN_Q(3),
      R => SR(0)
    );
\S_AXI_ALOCK_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arlock(0),
      Q => \S_AXI_ALOCK_Q_reg_n_0_[0]\,
      R => SR(0)
    );
\S_AXI_APROT_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arprot(0),
      Q => m_axi_arprot(0),
      R => SR(0)
    );
\S_AXI_APROT_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arprot(1),
      Q => m_axi_arprot(1),
      R => SR(0)
    );
\S_AXI_APROT_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arprot(2),
      Q => m_axi_arprot(2),
      R => SR(0)
    );
\S_AXI_AQOS_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arqos(0),
      Q => m_axi_arqos(0),
      R => SR(0)
    );
\S_AXI_AQOS_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arqos(1),
      Q => m_axi_arqos(1),
      R => SR(0)
    );
\S_AXI_AQOS_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arqos(2),
      Q => m_axi_arqos(2),
      R => SR(0)
    );
\S_AXI_AQOS_Q_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arqos(3),
      Q => m_axi_arqos(3),
      R => SR(0)
    );
S_AXI_AREADY_I_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \USE_R_CHANNEL.cmd_queue_n_16\,
      Q => \^e\(0),
      R => SR(0)
    );
\S_AXI_ASIZE_Q_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arsize(0),
      Q => m_axi_arsize(0),
      R => SR(0)
    );
\S_AXI_ASIZE_Q_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arsize(1),
      Q => m_axi_arsize(1),
      R => SR(0)
    );
\S_AXI_ASIZE_Q_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arsize(2),
      Q => m_axi_arsize(2),
      R => SR(0)
    );
\USE_R_CHANNEL.cmd_queue\: entity work.\colordetect_auto_pc_1_axi_data_fifo_v2_1_21_axic_fifo__parameterized0\
     port map (
      D(4) => \USE_R_CHANNEL.cmd_queue_n_6\,
      D(3) => \USE_R_CHANNEL.cmd_queue_n_7\,
      D(2) => \USE_R_CHANNEL.cmd_queue_n_8\,
      D(1) => \USE_R_CHANNEL.cmd_queue_n_9\,
      D(0) => \USE_R_CHANNEL.cmd_queue_n_10\,
      E(0) => pushed_new_cmd,
      Q(5 downto 0) => cmd_depth_reg(5 downto 0),
      SR(0) => SR(0),
      \USE_READ.USE_SPLIT_R.rd_cmd_ready\ => \USE_READ.USE_SPLIT_R.rd_cmd_ready\,
      access_is_incr_q => access_is_incr_q,
      aclk => aclk,
      almost_empty => almost_empty,
      areset_d(1 downto 0) => areset_d(1 downto 0),
      aresetn => aresetn,
      cmd_empty => cmd_empty,
      cmd_push_block => cmd_push_block,
      cmd_push_block_reg => \USE_R_CHANNEL.cmd_queue_n_5\,
      cmd_push_block_reg_0 => split_in_progress_reg_n_0,
      command_ongoing => command_ongoing,
      command_ongoing_reg => \^e\(0),
      command_ongoing_reg_0 => command_ongoing_reg_0,
      din(0) => cmd_split_i,
      empty_fwft_i_reg(0) => \USE_R_CHANNEL.cmd_queue_n_19\,
      m_axi_arready => m_axi_arready,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      multiple_id_non_split => multiple_id_non_split,
      multiple_id_non_split0 => multiple_id_non_split0,
      need_to_split_q => need_to_split_q,
      \queue_id_reg[0]\ => \USE_R_CHANNEL.cmd_queue_n_17\,
      \queue_id_reg[0]_0\ => \^s_axi_aid_q_reg[0]_0\,
      \queue_id_reg[0]_1\ => \queue_id_reg_n_0_[0]\,
      ram_full_i_reg => \USE_R_CHANNEL.cmd_queue_n_2\,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arvalid_0 => \USE_R_CHANNEL.cmd_queue_n_16\,
      s_axi_arvalid_1 => \USE_R_CHANNEL.cmd_queue_n_18\,
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      split_in_progress => split_in_progress,
      split_ongoing_reg(3) => \num_transactions_q_reg_n_0_[3]\,
      split_ongoing_reg(2) => \num_transactions_q_reg_n_0_[2]\,
      split_ongoing_reg(1) => \num_transactions_q_reg_n_0_[1]\,
      split_ongoing_reg(0) => \num_transactions_q_reg_n_0_[0]\,
      split_ongoing_reg_0(3 downto 0) => pushed_commands_reg(3 downto 0)
    );
\access_is_incr_q_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_arburst(0),
      I1 => s_axi_arburst(1),
      O => access_is_incr
    );
access_is_incr_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => access_is_incr,
      Q => access_is_incr_q,
      R => SR(0)
    );
\addr_step_q[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      O => \addr_step_q[10]_i_1__0_n_0\
    );
\addr_step_q[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      O => \addr_step_q[11]_i_1__0_n_0\
    );
\addr_step_q[5]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      O => \addr_step_q[5]_i_1__0_n_0\
    );
\addr_step_q[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      O => \addr_step_q[6]_i_1__0_n_0\
    );
\addr_step_q[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      O => \addr_step_q[7]_i_1__0_n_0\
    );
\addr_step_q[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      O => \addr_step_q[8]_i_1__0_n_0\
    );
\addr_step_q[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_arsize(0),
      I1 => s_axi_arsize(2),
      I2 => s_axi_arsize(1),
      O => \addr_step_q[9]_i_1__0_n_0\
    );
\addr_step_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \addr_step_q[10]_i_1__0_n_0\,
      Q => \addr_step_q_reg_n_0_[10]\,
      R => SR(0)
    );
\addr_step_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \addr_step_q[11]_i_1__0_n_0\,
      Q => \addr_step_q_reg_n_0_[11]\,
      R => SR(0)
    );
\addr_step_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \addr_step_q[5]_i_1__0_n_0\,
      Q => \addr_step_q_reg_n_0_[5]\,
      R => SR(0)
    );
\addr_step_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \addr_step_q[6]_i_1__0_n_0\,
      Q => \addr_step_q_reg_n_0_[6]\,
      R => SR(0)
    );
\addr_step_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \addr_step_q[7]_i_1__0_n_0\,
      Q => \addr_step_q_reg_n_0_[7]\,
      R => SR(0)
    );
\addr_step_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \addr_step_q[8]_i_1__0_n_0\,
      Q => \addr_step_q_reg_n_0_[8]\,
      R => SR(0)
    );
\addr_step_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \addr_step_q[9]_i_1__0_n_0\,
      Q => \addr_step_q_reg_n_0_[9]\,
      R => SR(0)
    );
\cmd_depth[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cmd_depth_reg(0),
      O => \cmd_depth[0]_i_1__0_n_0\
    );
\cmd_depth_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \USE_R_CHANNEL.cmd_queue_n_19\,
      D => \cmd_depth[0]_i_1__0_n_0\,
      Q => cmd_depth_reg(0),
      R => SR(0)
    );
\cmd_depth_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \USE_R_CHANNEL.cmd_queue_n_19\,
      D => \USE_R_CHANNEL.cmd_queue_n_10\,
      Q => cmd_depth_reg(1),
      R => SR(0)
    );
\cmd_depth_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \USE_R_CHANNEL.cmd_queue_n_19\,
      D => \USE_R_CHANNEL.cmd_queue_n_9\,
      Q => cmd_depth_reg(2),
      R => SR(0)
    );
\cmd_depth_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \USE_R_CHANNEL.cmd_queue_n_19\,
      D => \USE_R_CHANNEL.cmd_queue_n_8\,
      Q => cmd_depth_reg(3),
      R => SR(0)
    );
\cmd_depth_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \USE_R_CHANNEL.cmd_queue_n_19\,
      D => \USE_R_CHANNEL.cmd_queue_n_7\,
      Q => cmd_depth_reg(4),
      R => SR(0)
    );
\cmd_depth_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \USE_R_CHANNEL.cmd_queue_n_19\,
      D => \USE_R_CHANNEL.cmd_queue_n_6\,
      Q => cmd_depth_reg(5),
      R => SR(0)
    );
cmd_empty_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BC80"
    )
        port map (
      I0 => almost_empty,
      I1 => \USE_READ.USE_SPLIT_R.rd_cmd_ready\,
      I2 => \USE_R_CHANNEL.cmd_queue_n_5\,
      I3 => cmd_empty,
      O => cmd_empty_i_1_n_0
    );
\cmd_empty_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000010"
    )
        port map (
      I0 => cmd_depth_reg(2),
      I1 => cmd_depth_reg(3),
      I2 => cmd_depth_reg(0),
      I3 => cmd_depth_reg(1),
      I4 => cmd_depth_reg(5),
      I5 => cmd_depth_reg(4),
      O => almost_empty
    );
cmd_empty_reg: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => cmd_empty_i_1_n_0,
      Q => cmd_empty,
      S => SR(0)
    );
cmd_push_block_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \USE_R_CHANNEL.cmd_queue_n_2\,
      Q => cmd_push_block,
      R => '0'
    );
command_ongoing_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \USE_R_CHANNEL.cmd_queue_n_18\,
      Q => command_ongoing,
      R => SR(0)
    );
\first_step_q[0]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arsize(2),
      O => \first_step_q[0]_i_1__0_n_0\
    );
\first_step_q[10]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => \first_step_q[10]_i_2__0_n_0\,
      O => first_step(10)
    );
\first_step_q[10]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAA800080000000"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arlen(2),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(1),
      I4 => s_axi_arlen(3),
      I5 => s_axi_arsize(0),
      O => \first_step_q[10]_i_2__0_n_0\
    );
\first_step_q[11]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => \first_step_q[11]_i_2__0_n_0\,
      O => first_step(11)
    );
\first_step_q[11]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arlen(3),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(0),
      I4 => s_axi_arlen(2),
      I5 => s_axi_arsize(0),
      O => \first_step_q[11]_i_2__0_n_0\
    );
\first_step_q[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000514"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(1),
      I4 => s_axi_arsize(2),
      O => \first_step_q[1]_i_1__0_n_0\
    );
\first_step_q[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000000F3C6A"
    )
        port map (
      I0 => s_axi_arlen(2),
      I1 => s_axi_arlen(1),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arsize(0),
      I4 => s_axi_arsize(1),
      I5 => s_axi_arsize(2),
      O => \first_step_q[2]_i_1__0_n_0\
    );
\first_step_q[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \first_step_q[7]_i_2__0_n_0\,
      I1 => s_axi_arsize(2),
      O => \first_step_q[3]_i_1__0_n_0\
    );
\first_step_q[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FF0100"
    )
        port map (
      I0 => s_axi_arlen(0),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(1),
      I3 => s_axi_arsize(2),
      I4 => \first_step_q[8]_i_2__0_n_0\,
      O => first_step(4)
    );
\first_step_q[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0036FFFF00360000"
    )
        port map (
      I0 => s_axi_arlen(1),
      I1 => s_axi_arlen(0),
      I2 => s_axi_arsize(0),
      I3 => s_axi_arsize(1),
      I4 => s_axi_arsize(2),
      I5 => \first_step_q[9]_i_2__0_n_0\,
      O => first_step(5)
    );
\first_step_q[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \first_step_q[6]_i_2__0_n_0\,
      I1 => s_axi_arsize(2),
      I2 => \first_step_q[10]_i_2__0_n_0\,
      O => first_step(6)
    );
\first_step_q[6]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07531642"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(0),
      I3 => s_axi_arlen(1),
      I4 => s_axi_arlen(2),
      O => \first_step_q[6]_i_2__0_n_0\
    );
\first_step_q[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \first_step_q[7]_i_2__0_n_0\,
      I1 => s_axi_arsize(2),
      I2 => \first_step_q[11]_i_2__0_n_0\,
      O => first_step(7)
    );
\first_step_q[7]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FD53B916EC42A8"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(1),
      I3 => s_axi_arlen(0),
      I4 => s_axi_arlen(2),
      I5 => s_axi_arlen(3),
      O => \first_step_q[7]_i_2__0_n_0\
    );
\first_step_q[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => \first_step_q[8]_i_2__0_n_0\,
      O => first_step(8)
    );
\first_step_q[8]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"14EAEA6262C8C840"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(3),
      I3 => s_axi_arlen(1),
      I4 => s_axi_arlen(0),
      I5 => s_axi_arlen(2),
      O => \first_step_q[8]_i_2__0_n_0\
    );
\first_step_q[9]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => \first_step_q[9]_i_2__0_n_0\,
      O => first_step(9)
    );
\first_step_q[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4AA2A2A228808080"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arlen(2),
      I3 => s_axi_arlen(0),
      I4 => s_axi_arlen(1),
      I5 => s_axi_arlen(3),
      O => \first_step_q[9]_i_2__0_n_0\
    );
\first_step_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \first_step_q[0]_i_1__0_n_0\,
      Q => \first_step_q_reg_n_0_[0]\,
      R => SR(0)
    );
\first_step_q_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(10),
      Q => \first_step_q_reg_n_0_[10]\,
      R => SR(0)
    );
\first_step_q_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(11),
      Q => \first_step_q_reg_n_0_[11]\,
      R => SR(0)
    );
\first_step_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \first_step_q[1]_i_1__0_n_0\,
      Q => \first_step_q_reg_n_0_[1]\,
      R => SR(0)
    );
\first_step_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \first_step_q[2]_i_1__0_n_0\,
      Q => \first_step_q_reg_n_0_[2]\,
      R => SR(0)
    );
\first_step_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \first_step_q[3]_i_1__0_n_0\,
      Q => \first_step_q_reg_n_0_[3]\,
      R => SR(0)
    );
\first_step_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(4),
      Q => \first_step_q_reg_n_0_[4]\,
      R => SR(0)
    );
\first_step_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(5),
      Q => \first_step_q_reg_n_0_[5]\,
      R => SR(0)
    );
\first_step_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(6),
      Q => \first_step_q_reg_n_0_[6]\,
      R => SR(0)
    );
\first_step_q_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(7),
      Q => \first_step_q_reg_n_0_[7]\,
      R => SR(0)
    );
\first_step_q_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(8),
      Q => \first_step_q_reg_n_0_[8]\,
      R => SR(0)
    );
\first_step_q_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => first_step(9),
      Q => \first_step_q_reg_n_0_[9]\,
      R => SR(0)
    );
incr_need_to_split: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4444444444444440"
    )
        port map (
      I0 => s_axi_arburst(1),
      I1 => s_axi_arburst(0),
      I2 => s_axi_arlen(5),
      I3 => s_axi_arlen(4),
      I4 => s_axi_arlen(6),
      I5 => s_axi_arlen(7),
      O => \incr_need_to_split__0\
    );
incr_need_to_split_q_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \incr_need_to_split__0\,
      Q => need_to_split_q,
      R => SR(0)
    );
\m_axi_araddr[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => next_mi_addr(0),
      I1 => size_mask_q(0),
      I2 => split_ongoing,
      I3 => access_is_incr_q,
      I4 => \S_AXI_AADDR_Q_reg_n_0_[0]\,
      O => \^m_axi_araddr\(0)
    );
\m_axi_araddr[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[10]\,
      I1 => next_mi_addr(10),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(10)
    );
\m_axi_araddr[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[11]\,
      I1 => next_mi_addr(11),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(11)
    );
\m_axi_araddr[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[12]\,
      I1 => next_mi_addr(12),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(12)
    );
\m_axi_araddr[13]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[13]\,
      I1 => next_mi_addr(13),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(13)
    );
\m_axi_araddr[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[14]\,
      I1 => next_mi_addr(14),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(14)
    );
\m_axi_araddr[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[15]\,
      I1 => next_mi_addr(15),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(15)
    );
\m_axi_araddr[16]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[16]\,
      I1 => next_mi_addr(16),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(16)
    );
\m_axi_araddr[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[17]\,
      I1 => next_mi_addr(17),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(17)
    );
\m_axi_araddr[18]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[18]\,
      I1 => next_mi_addr(18),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(18)
    );
\m_axi_araddr[19]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[19]\,
      I1 => next_mi_addr(19),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(19)
    );
\m_axi_araddr[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => next_mi_addr(1),
      I1 => size_mask_q(1),
      I2 => split_ongoing,
      I3 => access_is_incr_q,
      I4 => \S_AXI_AADDR_Q_reg_n_0_[1]\,
      O => \^m_axi_araddr\(1)
    );
\m_axi_araddr[20]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[20]\,
      I1 => next_mi_addr(20),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(20)
    );
\m_axi_araddr[21]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[21]\,
      I1 => next_mi_addr(21),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(21)
    );
\m_axi_araddr[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[22]\,
      I1 => next_mi_addr(22),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(22)
    );
\m_axi_araddr[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[23]\,
      I1 => next_mi_addr(23),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(23)
    );
\m_axi_araddr[24]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[24]\,
      I1 => next_mi_addr(24),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(24)
    );
\m_axi_araddr[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[25]\,
      I1 => next_mi_addr(25),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(25)
    );
\m_axi_araddr[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[26]\,
      I1 => next_mi_addr(26),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(26)
    );
\m_axi_araddr[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[27]\,
      I1 => next_mi_addr(27),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(27)
    );
\m_axi_araddr[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[28]\,
      I1 => next_mi_addr(28),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(28)
    );
\m_axi_araddr[29]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[29]\,
      I1 => next_mi_addr(29),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(29)
    );
\m_axi_araddr[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => next_mi_addr(2),
      I1 => size_mask_q(2),
      I2 => split_ongoing,
      I3 => access_is_incr_q,
      I4 => \S_AXI_AADDR_Q_reg_n_0_[2]\,
      O => \^m_axi_araddr\(2)
    );
\m_axi_araddr[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[30]\,
      I1 => next_mi_addr(30),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(30)
    );
\m_axi_araddr[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[31]\,
      I1 => next_mi_addr(31),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(31)
    );
\m_axi_araddr[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => next_mi_addr(3),
      I1 => size_mask_q(3),
      I2 => split_ongoing,
      I3 => access_is_incr_q,
      I4 => \S_AXI_AADDR_Q_reg_n_0_[3]\,
      O => \^m_axi_araddr\(3)
    );
\m_axi_araddr[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => next_mi_addr(4),
      I1 => size_mask_q(4),
      I2 => split_ongoing,
      I3 => access_is_incr_q,
      I4 => \S_AXI_AADDR_Q_reg_n_0_[4]\,
      O => \^m_axi_araddr\(4)
    );
\m_axi_araddr[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => next_mi_addr(5),
      I1 => size_mask_q(5),
      I2 => split_ongoing,
      I3 => access_is_incr_q,
      I4 => \S_AXI_AADDR_Q_reg_n_0_[5]\,
      O => \^m_axi_araddr\(5)
    );
\m_axi_araddr[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FFF8000"
    )
        port map (
      I0 => next_mi_addr(6),
      I1 => size_mask_q(6),
      I2 => split_ongoing,
      I3 => access_is_incr_q,
      I4 => \S_AXI_AADDR_Q_reg_n_0_[6]\,
      O => \^m_axi_araddr\(6)
    );
\m_axi_araddr[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[7]\,
      I1 => next_mi_addr(7),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(7)
    );
\m_axi_araddr[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[8]\,
      I1 => next_mi_addr(8),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(8)
    );
\m_axi_araddr[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[9]\,
      I1 => next_mi_addr(9),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \^m_axi_araddr\(9)
    );
\m_axi_arlen[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => pushed_commands_reg(1),
      I1 => pushed_commands_reg(0),
      I2 => pushed_commands_reg(3),
      I3 => pushed_commands_reg(2),
      I4 => need_to_split_q,
      I5 => S_AXI_ALEN_Q(0),
      O => m_axi_arlen(0)
    );
\m_axi_arlen[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => pushed_commands_reg(1),
      I1 => pushed_commands_reg(0),
      I2 => pushed_commands_reg(3),
      I3 => pushed_commands_reg(2),
      I4 => need_to_split_q,
      I5 => S_AXI_ALEN_Q(1),
      O => m_axi_arlen(1)
    );
\m_axi_arlen[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => pushed_commands_reg(1),
      I1 => pushed_commands_reg(0),
      I2 => pushed_commands_reg(3),
      I3 => pushed_commands_reg(2),
      I4 => need_to_split_q,
      I5 => S_AXI_ALEN_Q(2),
      O => m_axi_arlen(2)
    );
\m_axi_arlen[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFE0000"
    )
        port map (
      I0 => pushed_commands_reg(1),
      I1 => pushed_commands_reg(0),
      I2 => pushed_commands_reg(3),
      I3 => pushed_commands_reg(2),
      I4 => need_to_split_q,
      I5 => S_AXI_ALEN_Q(3),
      O => m_axi_arlen(3)
    );
\m_axi_arlock[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \S_AXI_ALOCK_Q_reg_n_0_[0]\,
      I1 => need_to_split_q,
      O => m_axi_arlock(0)
    );
multiple_id_non_split_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000EEE00000000"
    )
        port map (
      I0 => multiple_id_non_split,
      I1 => multiple_id_non_split0,
      I2 => almost_empty,
      I3 => \USE_READ.USE_SPLIT_R.rd_cmd_ready\,
      I4 => cmd_empty,
      I5 => aresetn,
      O => multiple_id_non_split_i_1_n_0
    );
multiple_id_non_split_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => multiple_id_non_split_i_1_n_0,
      Q => multiple_id_non_split,
      R => '0'
    );
\next_mi_addr[11]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_araddr\(11),
      I1 => \addr_step_q_reg_n_0_[11]\,
      I2 => \first_split__2\,
      I3 => \first_step_q_reg_n_0_[11]\,
      O => \next_mi_addr[11]_i_2_n_0\
    );
\next_mi_addr[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_araddr\(10),
      I1 => \addr_step_q_reg_n_0_[10]\,
      I2 => \first_split__2\,
      I3 => \first_step_q_reg_n_0_[10]\,
      O => \next_mi_addr[11]_i_3_n_0\
    );
\next_mi_addr[11]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_araddr\(9),
      I1 => \addr_step_q_reg_n_0_[9]\,
      I2 => \first_split__2\,
      I3 => \first_step_q_reg_n_0_[9]\,
      O => \next_mi_addr[11]_i_4_n_0\
    );
\next_mi_addr[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_araddr\(8),
      I1 => \addr_step_q_reg_n_0_[8]\,
      I2 => \first_split__2\,
      I3 => \first_step_q_reg_n_0_[8]\,
      O => \next_mi_addr[11]_i_5_n_0\
    );
\next_mi_addr[11]_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => pushed_commands_reg(1),
      I1 => pushed_commands_reg(0),
      I2 => pushed_commands_reg(3),
      I3 => pushed_commands_reg(2),
      O => \first_split__2\
    );
\next_mi_addr[15]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[15]\,
      I1 => next_mi_addr(15),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_2__0_n_0\
    );
\next_mi_addr[15]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[14]\,
      I1 => next_mi_addr(14),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_3__0_n_0\
    );
\next_mi_addr[15]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[13]\,
      I1 => next_mi_addr(13),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_4__0_n_0\
    );
\next_mi_addr[15]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[12]\,
      I1 => next_mi_addr(12),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_5__0_n_0\
    );
\next_mi_addr[15]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[15]\,
      I1 => next_mi_addr(15),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_6__0_n_0\
    );
\next_mi_addr[15]_i_7__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[14]\,
      I1 => next_mi_addr(14),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_7__0_n_0\
    );
\next_mi_addr[15]_i_8__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[13]\,
      I1 => next_mi_addr(13),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_8__0_n_0\
    );
\next_mi_addr[15]_i_9__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[12]\,
      I1 => next_mi_addr(12),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[15]_i_9__0_n_0\
    );
\next_mi_addr[19]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[19]\,
      I1 => next_mi_addr(19),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[19]_i_2__0_n_0\
    );
\next_mi_addr[19]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[18]\,
      I1 => next_mi_addr(18),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[19]_i_3__0_n_0\
    );
\next_mi_addr[19]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[17]\,
      I1 => next_mi_addr(17),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[19]_i_4__0_n_0\
    );
\next_mi_addr[19]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[16]\,
      I1 => next_mi_addr(16),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[19]_i_5__0_n_0\
    );
\next_mi_addr[23]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[23]\,
      I1 => next_mi_addr(23),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[23]_i_2__0_n_0\
    );
\next_mi_addr[23]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[22]\,
      I1 => next_mi_addr(22),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[23]_i_3__0_n_0\
    );
\next_mi_addr[23]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[21]\,
      I1 => next_mi_addr(21),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[23]_i_4__0_n_0\
    );
\next_mi_addr[23]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[20]\,
      I1 => next_mi_addr(20),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[23]_i_5__0_n_0\
    );
\next_mi_addr[27]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[27]\,
      I1 => next_mi_addr(27),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[27]_i_2__0_n_0\
    );
\next_mi_addr[27]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[26]\,
      I1 => next_mi_addr(26),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[27]_i_3__0_n_0\
    );
\next_mi_addr[27]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[25]\,
      I1 => next_mi_addr(25),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[27]_i_4__0_n_0\
    );
\next_mi_addr[27]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[24]\,
      I1 => next_mi_addr(24),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[27]_i_5__0_n_0\
    );
\next_mi_addr[31]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[31]\,
      I1 => next_mi_addr(31),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[31]_i_2__0_n_0\
    );
\next_mi_addr[31]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[30]\,
      I1 => next_mi_addr(30),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[31]_i_3__0_n_0\
    );
\next_mi_addr[31]_i_4__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[29]\,
      I1 => next_mi_addr(29),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[31]_i_4__0_n_0\
    );
\next_mi_addr[31]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CAAA0AAA"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[28]\,
      I1 => next_mi_addr(28),
      I2 => access_is_incr_q,
      I3 => split_ongoing,
      I4 => size_mask_q(31),
      O => \next_mi_addr[31]_i_5__0_n_0\
    );
\next_mi_addr[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DDDE222E222E222"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[3]\,
      I1 => \M_AXI_AADDR_I1__0\,
      I2 => size_mask_q(3),
      I3 => next_mi_addr(3),
      I4 => \first_split__2\,
      I5 => \first_step_q_reg_n_0_[3]\,
      O => \next_mi_addr[3]_i_2_n_0\
    );
\next_mi_addr[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DDDE222E222E222"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[2]\,
      I1 => \M_AXI_AADDR_I1__0\,
      I2 => size_mask_q(2),
      I3 => next_mi_addr(2),
      I4 => \first_split__2\,
      I5 => \first_step_q_reg_n_0_[2]\,
      O => \next_mi_addr[3]_i_3_n_0\
    );
\next_mi_addr[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DDDE222E222E222"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[1]\,
      I1 => \M_AXI_AADDR_I1__0\,
      I2 => size_mask_q(1),
      I3 => next_mi_addr(1),
      I4 => \first_split__2\,
      I5 => \first_step_q_reg_n_0_[1]\,
      O => \next_mi_addr[3]_i_4_n_0\
    );
\next_mi_addr[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DDDE222E222E222"
    )
        port map (
      I0 => \S_AXI_AADDR_Q_reg_n_0_[0]\,
      I1 => \M_AXI_AADDR_I1__0\,
      I2 => size_mask_q(0),
      I3 => next_mi_addr(0),
      I4 => \first_split__2\,
      I5 => \first_step_q_reg_n_0_[0]\,
      O => \next_mi_addr[3]_i_5_n_0\
    );
\next_mi_addr[3]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => split_ongoing,
      I1 => access_is_incr_q,
      O => \M_AXI_AADDR_I1__0\
    );
\next_mi_addr[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_araddr\(7),
      I1 => \addr_step_q_reg_n_0_[7]\,
      I2 => \first_split__2\,
      I3 => \first_step_q_reg_n_0_[7]\,
      O => \next_mi_addr[7]_i_2_n_0\
    );
\next_mi_addr[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_araddr\(6),
      I1 => \addr_step_q_reg_n_0_[6]\,
      I2 => \first_split__2\,
      I3 => \first_step_q_reg_n_0_[6]\,
      O => \next_mi_addr[7]_i_3_n_0\
    );
\next_mi_addr[7]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_araddr\(5),
      I1 => \addr_step_q_reg_n_0_[5]\,
      I2 => \first_split__2\,
      I3 => \first_step_q_reg_n_0_[5]\,
      O => \next_mi_addr[7]_i_4_n_0\
    );
\next_mi_addr[7]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"56A6"
    )
        port map (
      I0 => \^m_axi_araddr\(4),
      I1 => size_mask_q(0),
      I2 => \first_split__2\,
      I3 => \first_step_q_reg_n_0_[4]\,
      O => \next_mi_addr[7]_i_5_n_0\
    );
\next_mi_addr_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[3]_i_1__0_n_7\,
      Q => next_mi_addr(0),
      R => SR(0)
    );
\next_mi_addr_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[11]_i_1__0_n_5\,
      Q => next_mi_addr(10),
      R => SR(0)
    );
\next_mi_addr_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[11]_i_1__0_n_4\,
      Q => next_mi_addr(11),
      R => SR(0)
    );
\next_mi_addr_reg[11]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr_reg[7]_i_1__0_n_0\,
      CO(3) => \next_mi_addr_reg[11]_i_1__0_n_0\,
      CO(2) => \next_mi_addr_reg[11]_i_1__0_n_1\,
      CO(1) => \next_mi_addr_reg[11]_i_1__0_n_2\,
      CO(0) => \next_mi_addr_reg[11]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^m_axi_araddr\(11 downto 8),
      O(3) => \next_mi_addr_reg[11]_i_1__0_n_4\,
      O(2) => \next_mi_addr_reg[11]_i_1__0_n_5\,
      O(1) => \next_mi_addr_reg[11]_i_1__0_n_6\,
      O(0) => \next_mi_addr_reg[11]_i_1__0_n_7\,
      S(3) => \next_mi_addr[11]_i_2_n_0\,
      S(2) => \next_mi_addr[11]_i_3_n_0\,
      S(1) => \next_mi_addr[11]_i_4_n_0\,
      S(0) => \next_mi_addr[11]_i_5_n_0\
    );
\next_mi_addr_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[15]_i_1__0_n_7\,
      Q => next_mi_addr(12),
      R => SR(0)
    );
\next_mi_addr_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[15]_i_1__0_n_6\,
      Q => next_mi_addr(13),
      R => SR(0)
    );
\next_mi_addr_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[15]_i_1__0_n_5\,
      Q => next_mi_addr(14),
      R => SR(0)
    );
\next_mi_addr_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[15]_i_1__0_n_4\,
      Q => next_mi_addr(15),
      R => SR(0)
    );
\next_mi_addr_reg[15]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr_reg[11]_i_1__0_n_0\,
      CO(3) => \next_mi_addr_reg[15]_i_1__0_n_0\,
      CO(2) => \next_mi_addr_reg[15]_i_1__0_n_1\,
      CO(1) => \next_mi_addr_reg[15]_i_1__0_n_2\,
      CO(0) => \next_mi_addr_reg[15]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3) => \next_mi_addr[15]_i_2__0_n_0\,
      DI(2) => \next_mi_addr[15]_i_3__0_n_0\,
      DI(1) => \next_mi_addr[15]_i_4__0_n_0\,
      DI(0) => \next_mi_addr[15]_i_5__0_n_0\,
      O(3) => \next_mi_addr_reg[15]_i_1__0_n_4\,
      O(2) => \next_mi_addr_reg[15]_i_1__0_n_5\,
      O(1) => \next_mi_addr_reg[15]_i_1__0_n_6\,
      O(0) => \next_mi_addr_reg[15]_i_1__0_n_7\,
      S(3) => \next_mi_addr[15]_i_6__0_n_0\,
      S(2) => \next_mi_addr[15]_i_7__0_n_0\,
      S(1) => \next_mi_addr[15]_i_8__0_n_0\,
      S(0) => \next_mi_addr[15]_i_9__0_n_0\
    );
\next_mi_addr_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[19]_i_1__0_n_7\,
      Q => next_mi_addr(16),
      R => SR(0)
    );
\next_mi_addr_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[19]_i_1__0_n_6\,
      Q => next_mi_addr(17),
      R => SR(0)
    );
\next_mi_addr_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[19]_i_1__0_n_5\,
      Q => next_mi_addr(18),
      R => SR(0)
    );
\next_mi_addr_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[19]_i_1__0_n_4\,
      Q => next_mi_addr(19),
      R => SR(0)
    );
\next_mi_addr_reg[19]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr_reg[15]_i_1__0_n_0\,
      CO(3) => \next_mi_addr_reg[19]_i_1__0_n_0\,
      CO(2) => \next_mi_addr_reg[19]_i_1__0_n_1\,
      CO(1) => \next_mi_addr_reg[19]_i_1__0_n_2\,
      CO(0) => \next_mi_addr_reg[19]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \next_mi_addr_reg[19]_i_1__0_n_4\,
      O(2) => \next_mi_addr_reg[19]_i_1__0_n_5\,
      O(1) => \next_mi_addr_reg[19]_i_1__0_n_6\,
      O(0) => \next_mi_addr_reg[19]_i_1__0_n_7\,
      S(3) => \next_mi_addr[19]_i_2__0_n_0\,
      S(2) => \next_mi_addr[19]_i_3__0_n_0\,
      S(1) => \next_mi_addr[19]_i_4__0_n_0\,
      S(0) => \next_mi_addr[19]_i_5__0_n_0\
    );
\next_mi_addr_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[3]_i_1__0_n_6\,
      Q => next_mi_addr(1),
      R => SR(0)
    );
\next_mi_addr_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[23]_i_1__0_n_7\,
      Q => next_mi_addr(20),
      R => SR(0)
    );
\next_mi_addr_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[23]_i_1__0_n_6\,
      Q => next_mi_addr(21),
      R => SR(0)
    );
\next_mi_addr_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[23]_i_1__0_n_5\,
      Q => next_mi_addr(22),
      R => SR(0)
    );
\next_mi_addr_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[23]_i_1__0_n_4\,
      Q => next_mi_addr(23),
      R => SR(0)
    );
\next_mi_addr_reg[23]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr_reg[19]_i_1__0_n_0\,
      CO(3) => \next_mi_addr_reg[23]_i_1__0_n_0\,
      CO(2) => \next_mi_addr_reg[23]_i_1__0_n_1\,
      CO(1) => \next_mi_addr_reg[23]_i_1__0_n_2\,
      CO(0) => \next_mi_addr_reg[23]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \next_mi_addr_reg[23]_i_1__0_n_4\,
      O(2) => \next_mi_addr_reg[23]_i_1__0_n_5\,
      O(1) => \next_mi_addr_reg[23]_i_1__0_n_6\,
      O(0) => \next_mi_addr_reg[23]_i_1__0_n_7\,
      S(3) => \next_mi_addr[23]_i_2__0_n_0\,
      S(2) => \next_mi_addr[23]_i_3__0_n_0\,
      S(1) => \next_mi_addr[23]_i_4__0_n_0\,
      S(0) => \next_mi_addr[23]_i_5__0_n_0\
    );
\next_mi_addr_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[27]_i_1__0_n_7\,
      Q => next_mi_addr(24),
      R => SR(0)
    );
\next_mi_addr_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[27]_i_1__0_n_6\,
      Q => next_mi_addr(25),
      R => SR(0)
    );
\next_mi_addr_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[27]_i_1__0_n_5\,
      Q => next_mi_addr(26),
      R => SR(0)
    );
\next_mi_addr_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[27]_i_1__0_n_4\,
      Q => next_mi_addr(27),
      R => SR(0)
    );
\next_mi_addr_reg[27]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr_reg[23]_i_1__0_n_0\,
      CO(3) => \next_mi_addr_reg[27]_i_1__0_n_0\,
      CO(2) => \next_mi_addr_reg[27]_i_1__0_n_1\,
      CO(1) => \next_mi_addr_reg[27]_i_1__0_n_2\,
      CO(0) => \next_mi_addr_reg[27]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \next_mi_addr_reg[27]_i_1__0_n_4\,
      O(2) => \next_mi_addr_reg[27]_i_1__0_n_5\,
      O(1) => \next_mi_addr_reg[27]_i_1__0_n_6\,
      O(0) => \next_mi_addr_reg[27]_i_1__0_n_7\,
      S(3) => \next_mi_addr[27]_i_2__0_n_0\,
      S(2) => \next_mi_addr[27]_i_3__0_n_0\,
      S(1) => \next_mi_addr[27]_i_4__0_n_0\,
      S(0) => \next_mi_addr[27]_i_5__0_n_0\
    );
\next_mi_addr_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[31]_i_1__0_n_7\,
      Q => next_mi_addr(28),
      R => SR(0)
    );
\next_mi_addr_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[31]_i_1__0_n_6\,
      Q => next_mi_addr(29),
      R => SR(0)
    );
\next_mi_addr_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[3]_i_1__0_n_5\,
      Q => next_mi_addr(2),
      R => SR(0)
    );
\next_mi_addr_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[31]_i_1__0_n_5\,
      Q => next_mi_addr(30),
      R => SR(0)
    );
\next_mi_addr_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[31]_i_1__0_n_4\,
      Q => next_mi_addr(31),
      R => SR(0)
    );
\next_mi_addr_reg[31]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr_reg[27]_i_1__0_n_0\,
      CO(3) => \NLW_next_mi_addr_reg[31]_i_1__0_CO_UNCONNECTED\(3),
      CO(2) => \next_mi_addr_reg[31]_i_1__0_n_1\,
      CO(1) => \next_mi_addr_reg[31]_i_1__0_n_2\,
      CO(0) => \next_mi_addr_reg[31]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \next_mi_addr_reg[31]_i_1__0_n_4\,
      O(2) => \next_mi_addr_reg[31]_i_1__0_n_5\,
      O(1) => \next_mi_addr_reg[31]_i_1__0_n_6\,
      O(0) => \next_mi_addr_reg[31]_i_1__0_n_7\,
      S(3) => \next_mi_addr[31]_i_2__0_n_0\,
      S(2) => \next_mi_addr[31]_i_3__0_n_0\,
      S(1) => \next_mi_addr[31]_i_4__0_n_0\,
      S(0) => \next_mi_addr[31]_i_5__0_n_0\
    );
\next_mi_addr_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[3]_i_1__0_n_4\,
      Q => next_mi_addr(3),
      R => SR(0)
    );
\next_mi_addr_reg[3]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \next_mi_addr_reg[3]_i_1__0_n_0\,
      CO(2) => \next_mi_addr_reg[3]_i_1__0_n_1\,
      CO(1) => \next_mi_addr_reg[3]_i_1__0_n_2\,
      CO(0) => \next_mi_addr_reg[3]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^m_axi_araddr\(3 downto 0),
      O(3) => \next_mi_addr_reg[3]_i_1__0_n_4\,
      O(2) => \next_mi_addr_reg[3]_i_1__0_n_5\,
      O(1) => \next_mi_addr_reg[3]_i_1__0_n_6\,
      O(0) => \next_mi_addr_reg[3]_i_1__0_n_7\,
      S(3) => \next_mi_addr[3]_i_2_n_0\,
      S(2) => \next_mi_addr[3]_i_3_n_0\,
      S(1) => \next_mi_addr[3]_i_4_n_0\,
      S(0) => \next_mi_addr[3]_i_5_n_0\
    );
\next_mi_addr_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[7]_i_1__0_n_7\,
      Q => next_mi_addr(4),
      R => SR(0)
    );
\next_mi_addr_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[7]_i_1__0_n_6\,
      Q => next_mi_addr(5),
      R => SR(0)
    );
\next_mi_addr_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[7]_i_1__0_n_5\,
      Q => next_mi_addr(6),
      R => SR(0)
    );
\next_mi_addr_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[7]_i_1__0_n_4\,
      Q => next_mi_addr(7),
      R => SR(0)
    );
\next_mi_addr_reg[7]_i_1__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \next_mi_addr_reg[3]_i_1__0_n_0\,
      CO(3) => \next_mi_addr_reg[7]_i_1__0_n_0\,
      CO(2) => \next_mi_addr_reg[7]_i_1__0_n_1\,
      CO(1) => \next_mi_addr_reg[7]_i_1__0_n_2\,
      CO(0) => \next_mi_addr_reg[7]_i_1__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => \^m_axi_araddr\(7 downto 4),
      O(3) => \next_mi_addr_reg[7]_i_1__0_n_4\,
      O(2) => \next_mi_addr_reg[7]_i_1__0_n_5\,
      O(1) => \next_mi_addr_reg[7]_i_1__0_n_6\,
      O(0) => \next_mi_addr_reg[7]_i_1__0_n_7\,
      S(3) => \next_mi_addr[7]_i_2_n_0\,
      S(2) => \next_mi_addr[7]_i_3_n_0\,
      S(1) => \next_mi_addr[7]_i_4_n_0\,
      S(0) => \next_mi_addr[7]_i_5_n_0\
    );
\next_mi_addr_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[11]_i_1__0_n_7\,
      Q => next_mi_addr(8),
      R => SR(0)
    );
\next_mi_addr_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \next_mi_addr_reg[11]_i_1__0_n_6\,
      Q => next_mi_addr(9),
      R => SR(0)
    );
\num_transactions_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arlen(4),
      Q => \num_transactions_q_reg_n_0_[0]\,
      R => SR(0)
    );
\num_transactions_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arlen(5),
      Q => \num_transactions_q_reg_n_0_[1]\,
      R => SR(0)
    );
\num_transactions_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arlen(6),
      Q => \num_transactions_q_reg_n_0_[2]\,
      R => SR(0)
    );
\num_transactions_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => s_axi_arlen(7),
      Q => \num_transactions_q_reg_n_0_[3]\,
      R => SR(0)
    );
\pushed_commands[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => pushed_commands_reg(0),
      O => \p_0_in__1\(0)
    );
\pushed_commands[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => pushed_commands_reg(0),
      I1 => pushed_commands_reg(1),
      O => \p_0_in__1\(1)
    );
\pushed_commands[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => pushed_commands_reg(1),
      I1 => pushed_commands_reg(0),
      I2 => pushed_commands_reg(2),
      O => \p_0_in__1\(2)
    );
\pushed_commands[3]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^e\(0),
      I1 => aresetn,
      O => \pushed_commands[3]_i_1__0_n_0\
    );
\pushed_commands[3]_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => pushed_commands_reg(2),
      I1 => pushed_commands_reg(0),
      I2 => pushed_commands_reg(1),
      I3 => pushed_commands_reg(3),
      O => \p_0_in__1\(3)
    );
\pushed_commands_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \p_0_in__1\(0),
      Q => pushed_commands_reg(0),
      R => \pushed_commands[3]_i_1__0_n_0\
    );
\pushed_commands_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \p_0_in__1\(1),
      Q => pushed_commands_reg(1),
      R => \pushed_commands[3]_i_1__0_n_0\
    );
\pushed_commands_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \p_0_in__1\(2),
      Q => pushed_commands_reg(2),
      R => \pushed_commands[3]_i_1__0_n_0\
    );
\pushed_commands_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => \p_0_in__1\(3),
      Q => pushed_commands_reg(3),
      R => \pushed_commands[3]_i_1__0_n_0\
    );
\queue_id_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \USE_R_CHANNEL.cmd_queue_n_17\,
      Q => \queue_id_reg_n_0_[0]\,
      R => SR(0)
    );
\size_mask_q[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      O => \size_mask_q[0]_i_1__0_n_0\
    );
\size_mask_q[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      O => \size_mask_q[1]_i_1__0_n_0\
    );
\size_mask_q[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"15"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      O => \size_mask_q[2]_i_1__0_n_0\
    );
\size_mask_q[3]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_arsize(2),
      O => \size_mask_q[3]_i_1__0_n_0\
    );
\size_mask_q[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => s_axi_arsize(2),
      I1 => s_axi_arsize(1),
      I2 => s_axi_arsize(0),
      O => \size_mask_q[4]_i_1__0_n_0\
    );
\size_mask_q[5]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(2),
      O => \size_mask_q[5]_i_1__0_n_0\
    );
\size_mask_q[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axi_arsize(1),
      I1 => s_axi_arsize(0),
      I2 => s_axi_arsize(2),
      O => \size_mask_q[6]_i_1__0_n_0\
    );
\size_mask_q_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \size_mask_q[0]_i_1__0_n_0\,
      Q => size_mask_q(0),
      R => SR(0)
    );
\size_mask_q_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \size_mask_q[1]_i_1__0_n_0\,
      Q => size_mask_q(1),
      R => SR(0)
    );
\size_mask_q_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \size_mask_q[2]_i_1__0_n_0\,
      Q => size_mask_q(2),
      R => SR(0)
    );
\size_mask_q_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => '1',
      Q => size_mask_q(31),
      R => SR(0)
    );
\size_mask_q_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \size_mask_q[3]_i_1__0_n_0\,
      Q => size_mask_q(3),
      R => SR(0)
    );
\size_mask_q_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \size_mask_q[4]_i_1__0_n_0\,
      Q => size_mask_q(4),
      R => SR(0)
    );
\size_mask_q_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \size_mask_q[5]_i_1__0_n_0\,
      Q => size_mask_q(5),
      R => SR(0)
    );
\size_mask_q_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => \^e\(0),
      D => \size_mask_q[6]_i_1__0_n_0\,
      Q => size_mask_q(6),
      R => SR(0)
    );
split_in_progress_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAAAAEA"
    )
        port map (
      I0 => split_in_progress_reg_n_0,
      I1 => \cmd_id_check__2\,
      I2 => need_to_split_q,
      I3 => multiple_id_non_split,
      I4 => \USE_R_CHANNEL.cmd_queue_n_5\,
      I5 => split_in_progress,
      O => split_in_progress_i_1_n_0
    );
\split_in_progress_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F9"
    )
        port map (
      I0 => \queue_id_reg_n_0_[0]\,
      I1 => \^s_axi_aid_q_reg[0]_0\,
      I2 => cmd_empty,
      O => \cmd_id_check__2\
    );
split_in_progress_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => split_in_progress_i_1_n_0,
      Q => split_in_progress_reg_n_0,
      R => '0'
    );
split_ongoing_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => pushed_new_cmd,
      D => cmd_split_i,
      Q => split_ongoing,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi3_conv is
  port (
    ram_full_i_reg : out STD_LOGIC;
    S_AXI_AREADY_I_reg : out STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXI_AWID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    S_AXI_AREADY_I_reg_0 : out STD_LOGIC;
    M_AXI_ARID : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    empty_fwft_i_reg : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wlast : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rlast : out STD_LOGIC;
    m_axi_rready : out STD_LOGIC;
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aresetn : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awready : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_rlast : in STD_LOGIC;
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC
  );
end colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi3_conv;

architecture STRUCTURE of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi3_conv is
  signal \USE_BURSTS.cmd_queue/inst/empty\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_b_repeat\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \USE_WRITE.wr_cmd_b_split\ : STD_LOGIC;
  signal \USE_WRITE.wr_cmd_length\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \USE_WRITE.wr_cmd_ready\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_21\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_54\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_57\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_58\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_59\ : STD_LOGIC;
  signal \USE_WRITE.write_addr_inst_n_6\ : STD_LOGIC;
  signal \USE_WRITE.write_data_inst_n_4\ : STD_LOGIC;
  signal \USE_WRITE.write_data_inst_n_6\ : STD_LOGIC;
  signal areset_d : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^empty_fwft_i_reg\ : STD_LOGIC;
  signal first_mi_word : STD_LOGIC;
  signal last_word : STD_LOGIC;
  signal length_counter_1_reg : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  empty_fwft_i_reg <= \^empty_fwft_i_reg\;
\USE_READ.USE_SPLIT_R.read_addr_inst\: entity work.\colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_a_axi3_conv__parameterized0\
     port map (
      E(0) => S_AXI_AREADY_I_reg_0,
      SR(0) => \USE_WRITE.write_addr_inst_n_6\,
      \S_AXI_AID_Q_reg[0]_0\ => M_AXI_ARID(0),
      aclk => aclk,
      areset_d(1 downto 0) => areset_d(1 downto 0),
      aresetn => aresetn,
      command_ongoing_reg_0 => \USE_WRITE.write_addr_inst_n_59\,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arlen(3 downto 0) => m_axi_arlen(3 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid
    );
\USE_WRITE.USE_SPLIT_W.write_resp_inst\: entity work.colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_b_downsizer
     port map (
      E(0) => m_axi_bready,
      SR(0) => \USE_WRITE.write_addr_inst_n_6\,
      aclk => aclk,
      dout(4) => \USE_WRITE.wr_cmd_b_split\,
      dout(3 downto 0) => \USE_WRITE.wr_cmd_b_repeat\(3 downto 0),
      last_word => last_word,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid
    );
\USE_WRITE.write_addr_inst\: entity work.colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_a_axi3_conv
     port map (
      E(0) => S_AXI_AREADY_I_reg,
      SR(0) => \USE_WRITE.write_addr_inst_n_6\,
      \USE_WRITE.wr_cmd_ready\ => \USE_WRITE.wr_cmd_ready\,
      aclk => aclk,
      areset_d(1 downto 0) => areset_d(1 downto 0),
      \areset_d_reg[0]_0\ => \USE_WRITE.write_addr_inst_n_59\,
      aresetn => aresetn,
      \cmd_depth_reg[5]_0\(0) => \USE_WRITE.write_data_inst_n_6\,
      cmd_push_block_reg_0 => \USE_WRITE.write_addr_inst_n_21\,
      din(4) => M_AXI_AWID(0),
      din(3 downto 0) => m_axi_awlen(3 downto 0),
      dout(4) => m_axi_wid(0),
      dout(3 downto 0) => \USE_WRITE.wr_cmd_length\(3 downto 0),
      empty => \USE_BURSTS.cmd_queue/inst/empty\,
      empty_fwft_i_reg => \^empty_fwft_i_reg\,
      first_mi_word => first_mi_word,
      first_mi_word_reg => \USE_WRITE.write_addr_inst_n_58\,
      \goreg_dm.dout_i_reg[1]\ => \USE_WRITE.write_addr_inst_n_54\,
      \goreg_dm.dout_i_reg[2]\ => \USE_WRITE.write_addr_inst_n_57\,
      \goreg_dm.dout_i_reg[4]\(4) => \USE_WRITE.wr_cmd_b_split\,
      \goreg_dm.dout_i_reg[4]\(3 downto 0) => \USE_WRITE.wr_cmd_b_repeat\(3 downto 0),
      last_word => last_word,
      length_counter_1_reg(1 downto 0) => length_counter_1_reg(1 downto 0),
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_wlast => \USE_WRITE.write_data_inst_n_4\,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      ram_full_i_reg => ram_full_i_reg,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_wvalid => s_axi_wvalid
    );
\USE_WRITE.write_data_inst\: entity work.colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_w_axi3_conv
     port map (
      SR(0) => \USE_WRITE.write_addr_inst_n_6\,
      \USE_WRITE.wr_cmd_ready\ => \USE_WRITE.wr_cmd_ready\,
      aclk => aclk,
      \cmd_depth_reg[5]\ => \USE_WRITE.write_addr_inst_n_58\,
      \cmd_depth_reg[5]_0\ => \USE_WRITE.write_addr_inst_n_21\,
      dout(3 downto 0) => \USE_WRITE.wr_cmd_length\(3 downto 0),
      empty => \USE_BURSTS.cmd_queue/inst/empty\,
      first_mi_word => first_mi_word,
      first_mi_word_reg_0 => \USE_WRITE.write_data_inst_n_4\,
      \length_counter_1_reg[1]_0\(1 downto 0) => length_counter_1_reg(1 downto 0),
      \length_counter_1_reg[1]_1\ => \USE_WRITE.write_addr_inst_n_54\,
      \length_counter_1_reg[2]_0\ => \^empty_fwft_i_reg\,
      m_axi_wlast => m_axi_wlast,
      m_axi_wlast_0 => \USE_WRITE.write_addr_inst_n_57\,
      m_axi_wready => m_axi_wready,
      m_axi_wready_0(0) => \USE_WRITE.write_data_inst_n_6\,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is "zynq";
  attribute C_IGNORE_ID : integer;
  attribute C_IGNORE_ID of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 0;
  attribute C_M_AXI_PROTOCOL : integer;
  attribute C_M_AXI_PROTOCOL of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 1;
  attribute C_S_AXI_PROTOCOL : integer;
  attribute C_S_AXI_PROTOCOL of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 0;
  attribute C_TRANSLATION_MODE : integer;
  attribute C_TRANSLATION_MODE of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 2;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is "3'b011";
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is "2'b11";
  attribute P_INCR : string;
  attribute P_INCR of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is "2'b01";
  attribute P_PROTECTION : integer;
  attribute P_PROTECTION of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is 1;
  attribute P_SLVERR : string;
  attribute P_SLVERR of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter : entity is "2'b10";
end colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter;

architecture STRUCTURE of colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_arlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_awlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_bid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_rdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^m_axi_rid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_rresp\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 7 downto 0 );
begin
  \^m_axi_bid\(0) <= m_axi_bid(0);
  \^m_axi_rdata\(63 downto 0) <= m_axi_rdata(63 downto 0);
  \^m_axi_rid\(0) <= m_axi_rid(0);
  \^m_axi_rresp\(1 downto 0) <= m_axi_rresp(1 downto 0);
  \^s_axi_wdata\(63 downto 0) <= s_axi_wdata(63 downto 0);
  \^s_axi_wstrb\(7 downto 0) <= s_axi_wstrb(7 downto 0);
  m_axi_arlock(1) <= \<const0>\;
  m_axi_arlock(0) <= \^m_axi_arlock\(0);
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awlock(1) <= \<const0>\;
  m_axi_awlock(0) <= \^m_axi_awlock\(0);
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_wdata(63 downto 0) <= \^s_axi_wdata\(63 downto 0);
  m_axi_wstrb(7 downto 0) <= \^s_axi_wstrb\(7 downto 0);
  m_axi_wuser(0) <= \<const0>\;
  s_axi_bid(0) <= \^m_axi_bid\(0);
  s_axi_buser(0) <= \<const0>\;
  s_axi_rdata(63 downto 0) <= \^m_axi_rdata\(63 downto 0);
  s_axi_rid(0) <= \^m_axi_rid\(0);
  s_axi_rresp(1 downto 0) <= \^m_axi_rresp\(1 downto 0);
  s_axi_ruser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_axi4_axi3.axi3_conv_inst\: entity work.colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi3_conv
     port map (
      M_AXI_ARID(0) => m_axi_arid(0),
      M_AXI_AWID(0) => m_axi_awid(0),
      S_AXI_AREADY_I_reg => s_axi_awready,
      S_AXI_AREADY_I_reg_0 => s_axi_arready,
      aclk => aclk,
      aresetn => aresetn,
      empty_fwft_i_reg => s_axi_wready,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arlen(3 downto 0) => m_axi_arlen(3 downto 0),
      m_axi_arlock(0) => \^m_axi_arlock\(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awlen(3 downto 0) => m_axi_awlen(3 downto 0),
      m_axi_awlock(0) => \^m_axi_awlock\(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wid(0) => m_axi_wid(0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wvalid => m_axi_wvalid,
      ram_full_i_reg => m_axi_awvalid,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity colordetect_auto_pc_1 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of colordetect_auto_pc_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of colordetect_auto_pc_1 : entity is "colordetect_auto_pc_3,axi_protocol_converter_v2_1_22_axi_protocol_converter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of colordetect_auto_pc_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of colordetect_auto_pc_1 : entity is "axi_protocol_converter_v2_1_22_axi_protocol_converter,Vivado 2020.2.2";
end colordetect_auto_pc_1;

architecture STRUCTURE of colordetect_auto_pc_1 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_arlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_awlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_arlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awlock_UNCONNECTED : STD_LOGIC_VECTOR ( 1 to 1 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_READ : integer;
  attribute C_AXI_SUPPORTS_READ of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_SUPPORTS_WRITE : integer;
  attribute C_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "zynq";
  attribute C_IGNORE_ID : integer;
  attribute C_IGNORE_ID of inst : label is 0;
  attribute C_M_AXI_PROTOCOL : integer;
  attribute C_M_AXI_PROTOCOL of inst : label is 1;
  attribute C_S_AXI_PROTOCOL : integer;
  attribute C_S_AXI_PROTOCOL of inst : label is 0;
  attribute C_TRANSLATION_MODE : integer;
  attribute C_TRANSLATION_MODE of inst : label is 2;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of inst : label is "3'b011";
  attribute P_CONVERSION : integer;
  attribute P_CONVERSION of inst : label is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of inst : label is "2'b11";
  attribute P_INCR : string;
  attribute P_INCR of inst : label is "2'b01";
  attribute P_PROTECTION : integer;
  attribute P_PROTECTION of inst : label is 1;
  attribute P_SLVERR : string;
  attribute P_SLVERR of inst : label is "2'b10";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN colordetect_processing_system7_0_0_FCLK_CLK0, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 16, PHASE 0.000, CLK_DOMAIN colordetect_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 1, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 128, PHASE 0.000, CLK_DOMAIN colordetect_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BID";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RID";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WID";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREGION";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awregion : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREGION";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  m_axi_arlock(1) <= \<const0>\;
  m_axi_arlock(0) <= \^m_axi_arlock\(0);
  m_axi_awlock(1) <= \<const0>\;
  m_axi_awlock(0) <= \^m_axi_awlock\(0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.colordetect_auto_pc_1_axi_protocol_converter_v2_1_22_axi_protocol_converter
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(31 downto 0) => m_axi_araddr(31 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(0) => m_axi_arid(0),
      m_axi_arlen(3 downto 0) => m_axi_arlen(3 downto 0),
      m_axi_arlock(1) => NLW_inst_m_axi_arlock_UNCONNECTED(1),
      m_axi_arlock(0) => \^m_axi_arlock\(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arregion(3 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(3 downto 0),
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(31 downto 0) => m_axi_awaddr(31 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(0) => m_axi_awid(0),
      m_axi_awlen(3 downto 0) => m_axi_awlen(3 downto 0),
      m_axi_awlock(1) => NLW_inst_m_axi_awlock_UNCONNECTED(1),
      m_axi_awlock(0) => \^m_axi_awlock\(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awregion(3 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(3 downto 0),
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(0) => m_axi_bid(0),
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(0) => m_axi_rid(0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wid(0) => m_axi_wid(0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(0) => s_axi_arid(0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arregion(3 downto 0) => B"0000",
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(0) => s_axi_awid(0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awregion(3 downto 0) => B"0000",
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(0) => s_axi_bid(0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(0) => s_axi_rid(0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wid(0) => '0',
      s_axi_wlast => '0',
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
