-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Sun Nov 17 12:54:02 2019
-- Host        : DESKTOP-T9GPCN4 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/EGO1/EGO1_lianxi/VGA_3/VGA_3.srcs/sources_1/ip/vga_0/vga_0_sim_netlist.vhdl
-- Design      : vga_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vga_0_vga is
  port (
    vga_h_cnt : out STD_LOGIC_VECTOR ( 9 downto 0 );
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    vga_v_cnt : out STD_LOGIC_VECTOR ( 8 downto 0 );
    vga_valid : out STD_LOGIC;
    vga_pclk : in STD_LOGIC;
    vga_rst : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of vga_0_vga : entity is "vga";
end vga_0_vga;

architecture STRUCTURE of vga_0_vga is
  signal hsync_i_1_n_0 : STD_LOGIC;
  signal hsync_i_2_n_0 : STD_LOGIC;
  signal hsync_i_3_n_0 : STD_LOGIC;
  signal line_cnt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \line_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[1]_i_3_n_0\ : STD_LOGIC;
  signal \line_cnt[1]_i_4_n_0\ : STD_LOGIC;
  signal \line_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[3]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \line_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \line_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \line_cnt[9]_i_4_n_0\ : STD_LOGIC;
  signal line_cnt_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal pixel_cnt : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \pixel_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \pixel_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal vga_valid_INST_0_i_1_n_0 : STD_LOGIC;
  signal vsync_i_1_n_0 : STD_LOGIC;
  signal vsync_i_2_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of hsync_i_2 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of hsync_i_3 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \line_cnt[1]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \line_cnt[1]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \line_cnt[5]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \line_cnt[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \line_cnt[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \line_cnt[8]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \line_cnt[9]_i_3\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \pixel_cnt[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pixel_cnt[3]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \pixel_cnt[4]_i_2\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \pixel_cnt[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pixel_cnt[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \pixel_cnt[9]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \vga_h_cnt[0]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \vga_h_cnt[1]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \vga_h_cnt[2]_INST_0\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \vga_h_cnt[3]_INST_0\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \vga_h_cnt[4]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \vga_h_cnt[5]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \vga_h_cnt[6]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \vga_h_cnt[8]_INST_0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \vga_h_cnt[9]_INST_0\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \vga_v_cnt[5]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vga_v_cnt[6]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \vga_v_cnt[7]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \vga_v_cnt[8]_INST_0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of vga_valid_INST_0_i_1 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of vsync_i_2 : label is "soft_lutpair6";
begin
hsync_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFFFFFFFFBF"
    )
        port map (
      I0 => hsync_i_2_n_0,
      I1 => pixel_cnt(7),
      I2 => pixel_cnt(5),
      I3 => pixel_cnt(6),
      I4 => pixel_cnt(4),
      I5 => hsync_i_3_n_0,
      O => hsync_i_1_n_0
    );
hsync_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => pixel_cnt(8),
      I1 => pixel_cnt(9),
      O => hsync_i_2_n_0
    );
hsync_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => pixel_cnt(2),
      I1 => pixel_cnt(0),
      I2 => pixel_cnt(1),
      I3 => pixel_cnt(3),
      O => hsync_i_3_n_0
    );
hsync_reg: unisim.vcomponents.FDPE
     port map (
      C => vga_pclk,
      CE => '1',
      D => hsync_i_1_n_0,
      PRE => vga_rst,
      Q => vga_hsync
    );
\line_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000057775555"
    )
        port map (
      I0 => line_cnt(9),
      I1 => \line_cnt[1]_i_4_n_0\,
      I2 => line_cnt(2),
      I3 => line_cnt(3),
      I4 => \line_cnt[1]_i_2_n_0\,
      I5 => line_cnt(0),
      O => \line_cnt[0]_i_1_n_0\
    );
\line_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000008FF08FF0000"
    )
        port map (
      I0 => \line_cnt[1]_i_2_n_0\,
      I1 => \line_cnt[1]_i_3_n_0\,
      I2 => \line_cnt[1]_i_4_n_0\,
      I3 => line_cnt(9),
      I4 => line_cnt(0),
      I5 => line_cnt(1),
      O => \line_cnt[1]_i_1_n_0\
    );
\line_cnt[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => line_cnt(6),
      I1 => line_cnt(5),
      I2 => line_cnt(4),
      O => \line_cnt[1]_i_2_n_0\
    );
\line_cnt[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => line_cnt(2),
      I1 => line_cnt(3),
      O => \line_cnt[1]_i_3_n_0\
    );
\line_cnt[1]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => line_cnt(7),
      I1 => line_cnt(8),
      O => \line_cnt[1]_i_4_n_0\
    );
\line_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FF00000000AAAA"
    )
        port map (
      I0 => \line_cnt[3]_i_2_n_0\,
      I1 => line_cnt(3),
      I2 => vsync_i_2_n_0,
      I3 => line_cnt(9),
      I4 => \line_cnt[2]_i_2_n_0\,
      I5 => line_cnt(2),
      O => \line_cnt[2]_i_1_n_0\
    );
\line_cnt[2]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => line_cnt(0),
      I1 => line_cnt(1),
      O => \line_cnt[2]_i_2_n_0\
    );
\line_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0CC050D050D050D0"
    )
        port map (
      I0 => line_cnt(9),
      I1 => \line_cnt[3]_i_2_n_0\,
      I2 => line_cnt(3),
      I3 => line_cnt(2),
      I4 => line_cnt(1),
      I5 => line_cnt(0),
      O => \line_cnt[3]_i_1_n_0\
    );
\line_cnt[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001FFFFFFFF"
    )
        port map (
      I0 => line_cnt(7),
      I1 => line_cnt(8),
      I2 => line_cnt(6),
      I3 => line_cnt(5),
      I4 => line_cnt(4),
      I5 => line_cnt(9),
      O => \line_cnt[3]_i_2_n_0\
    );
\line_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007FFF8000"
    )
        port map (
      I0 => line_cnt(1),
      I1 => line_cnt(0),
      I2 => line_cnt(3),
      I3 => line_cnt(2),
      I4 => line_cnt(4),
      I5 => line_cnt(9),
      O => \line_cnt[4]_i_1_n_0\
    );
\line_cnt[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => line_cnt(5),
      I1 => \line_cnt[8]_i_2_n_0\,
      I2 => line_cnt(9),
      O => \line_cnt[5]_i_1_n_0\
    );
\line_cnt[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00D2"
    )
        port map (
      I0 => line_cnt(5),
      I1 => \line_cnt[8]_i_2_n_0\,
      I2 => line_cnt(6),
      I3 => line_cnt(9),
      O => \line_cnt[6]_i_1_n_0\
    );
\line_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F708"
    )
        port map (
      I0 => line_cnt(5),
      I1 => line_cnt(6),
      I2 => \line_cnt[8]_i_2_n_0\,
      I3 => line_cnt(7),
      I4 => line_cnt(9),
      O => \line_cnt[7]_i_1_n_0\
    );
\line_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2333333310000000"
    )
        port map (
      I0 => \line_cnt[8]_i_2_n_0\,
      I1 => line_cnt(9),
      I2 => line_cnt(7),
      I3 => line_cnt(5),
      I4 => line_cnt(6),
      I5 => line_cnt(8),
      O => \line_cnt[8]_i_1_n_0\
    );
\line_cnt[8]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => line_cnt(2),
      I1 => line_cnt(3),
      I2 => line_cnt(0),
      I3 => line_cnt(1),
      I4 => line_cnt(4),
      O => \line_cnt[8]_i_2_n_0\
    );
\line_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000008"
    )
        port map (
      I0 => pixel_cnt(8),
      I1 => pixel_cnt(9),
      I2 => pixel_cnt(7),
      I3 => pixel_cnt(6),
      I4 => pixel_cnt(5),
      I5 => \pixel_cnt[9]_i_2_n_0\,
      O => line_cnt_0
    );
\line_cnt[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1500FFFF15001500"
    )
        port map (
      I0 => vsync_i_2_n_0,
      I1 => line_cnt(3),
      I2 => line_cnt(2),
      I3 => line_cnt(9),
      I4 => \line_cnt[9]_i_3_n_0\,
      I5 => \line_cnt[9]_i_4_n_0\,
      O => \line_cnt[9]_i_2_n_0\
    );
\line_cnt[9]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => line_cnt(7),
      I1 => line_cnt(5),
      I2 => line_cnt(6),
      I3 => line_cnt(8),
      O => \line_cnt[9]_i_3_n_0\
    );
\line_cnt[9]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => line_cnt(4),
      I1 => line_cnt(1),
      I2 => line_cnt(0),
      I3 => line_cnt(3),
      I4 => line_cnt(2),
      I5 => line_cnt(9),
      O => \line_cnt[9]_i_4_n_0\
    );
\line_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => line_cnt_0,
      CLR => vga_rst,
      D => \line_cnt[0]_i_1_n_0\,
      Q => line_cnt(0)
    );
\line_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => line_cnt_0,
      CLR => vga_rst,
      D => \line_cnt[1]_i_1_n_0\,
      Q => line_cnt(1)
    );
\line_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => line_cnt_0,
      CLR => vga_rst,
      D => \line_cnt[2]_i_1_n_0\,
      Q => line_cnt(2)
    );
\line_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => line_cnt_0,
      CLR => vga_rst,
      D => \line_cnt[3]_i_1_n_0\,
      Q => line_cnt(3)
    );
\line_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => line_cnt_0,
      CLR => vga_rst,
      D => \line_cnt[4]_i_1_n_0\,
      Q => line_cnt(4)
    );
\line_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => line_cnt_0,
      CLR => vga_rst,
      D => \line_cnt[5]_i_1_n_0\,
      Q => line_cnt(5)
    );
\line_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => line_cnt_0,
      CLR => vga_rst,
      D => \line_cnt[6]_i_1_n_0\,
      Q => line_cnt(6)
    );
\line_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => line_cnt_0,
      CLR => vga_rst,
      D => \line_cnt[7]_i_1_n_0\,
      Q => line_cnt(7)
    );
\line_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => line_cnt_0,
      CLR => vga_rst,
      D => \line_cnt[8]_i_1_n_0\,
      Q => line_cnt(8)
    );
\line_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => line_cnt_0,
      CLR => vga_rst,
      D => \line_cnt[9]_i_2_n_0\,
      Q => line_cnt(9)
    );
\pixel_cnt[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000007777777F"
    )
        port map (
      I0 => pixel_cnt(8),
      I1 => pixel_cnt(9),
      I2 => pixel_cnt(7),
      I3 => pixel_cnt(6),
      I4 => pixel_cnt(5),
      I5 => pixel_cnt(0),
      O => p_0_in(0)
    );
\pixel_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \pixel_cnt[4]_i_2_n_0\,
      I1 => pixel_cnt(0),
      I2 => pixel_cnt(1),
      O => p_0_in(1)
    );
\pixel_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A80"
    )
        port map (
      I0 => \pixel_cnt[4]_i_2_n_0\,
      I1 => pixel_cnt(1),
      I2 => pixel_cnt(0),
      I3 => pixel_cnt(2),
      O => p_0_in(2)
    );
\pixel_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2AAA8000"
    )
        port map (
      I0 => \pixel_cnt[4]_i_2_n_0\,
      I1 => pixel_cnt(2),
      I2 => pixel_cnt(0),
      I3 => pixel_cnt(1),
      I4 => pixel_cnt(3),
      O => p_0_in(3)
    );
\pixel_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2AAAAAAA80000000"
    )
        port map (
      I0 => \pixel_cnt[4]_i_2_n_0\,
      I1 => pixel_cnt(3),
      I2 => pixel_cnt(1),
      I3 => pixel_cnt(0),
      I4 => pixel_cnt(2),
      I5 => pixel_cnt(4),
      O => p_0_in(4)
    );
\pixel_cnt[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01FFFFFF"
    )
        port map (
      I0 => pixel_cnt(5),
      I1 => pixel_cnt(6),
      I2 => pixel_cnt(7),
      I3 => pixel_cnt(9),
      I4 => pixel_cnt(8),
      O => \pixel_cnt[4]_i_2_n_0\
    );
\pixel_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2A15"
    )
        port map (
      I0 => \pixel_cnt[9]_i_2_n_0\,
      I1 => pixel_cnt(9),
      I2 => pixel_cnt(8),
      I3 => pixel_cnt(5),
      O => p_0_in(5)
    );
\pixel_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0BBB0444"
    )
        port map (
      I0 => \pixel_cnt[9]_i_2_n_0\,
      I1 => pixel_cnt(5),
      I2 => pixel_cnt(9),
      I3 => pixel_cnt(8),
      I4 => pixel_cnt(6),
      O => p_0_in(6)
    );
\pixel_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00DFDFDF00202020"
    )
        port map (
      I0 => pixel_cnt(5),
      I1 => \pixel_cnt[9]_i_2_n_0\,
      I2 => pixel_cnt(6),
      I3 => pixel_cnt(9),
      I4 => pixel_cnt(8),
      I5 => pixel_cnt(7),
      O => p_0_in(7)
    );
\pixel_cnt[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"515555750C000000"
    )
        port map (
      I0 => pixel_cnt(9),
      I1 => pixel_cnt(6),
      I2 => \pixel_cnt[9]_i_2_n_0\,
      I3 => pixel_cnt(7),
      I4 => pixel_cnt(5),
      I5 => pixel_cnt(8),
      O => p_0_in(8)
    );
\pixel_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00100800FFFF0000"
    )
        port map (
      I0 => pixel_cnt(5),
      I1 => pixel_cnt(7),
      I2 => \pixel_cnt[9]_i_2_n_0\,
      I3 => pixel_cnt(6),
      I4 => pixel_cnt(9),
      I5 => pixel_cnt(8),
      O => p_0_in(9)
    );
\pixel_cnt[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFFFFFF"
    )
        port map (
      I0 => pixel_cnt(3),
      I1 => pixel_cnt(1),
      I2 => pixel_cnt(0),
      I3 => pixel_cnt(2),
      I4 => pixel_cnt(4),
      O => \pixel_cnt[9]_i_2_n_0\
    );
\pixel_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => p_0_in(0),
      Q => pixel_cnt(0)
    );
\pixel_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => p_0_in(1),
      Q => pixel_cnt(1)
    );
\pixel_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => p_0_in(2),
      Q => pixel_cnt(2)
    );
\pixel_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => p_0_in(3),
      Q => pixel_cnt(3)
    );
\pixel_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => p_0_in(4),
      Q => pixel_cnt(4)
    );
\pixel_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => p_0_in(5),
      Q => pixel_cnt(5)
    );
\pixel_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => p_0_in(6),
      Q => pixel_cnt(6)
    );
\pixel_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => p_0_in(7),
      Q => pixel_cnt(7)
    );
\pixel_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => p_0_in(8),
      Q => pixel_cnt(8)
    );
\pixel_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => vga_pclk,
      CE => '1',
      CLR => vga_rst,
      D => p_0_in(9),
      Q => pixel_cnt(9)
    );
\vga_h_cnt[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => pixel_cnt(9),
      I1 => pixel_cnt(7),
      I2 => pixel_cnt(8),
      I3 => pixel_cnt(0),
      O => vga_h_cnt(0)
    );
\vga_h_cnt[1]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => pixel_cnt(9),
      I1 => pixel_cnt(7),
      I2 => pixel_cnt(8),
      I3 => pixel_cnt(1),
      O => vga_h_cnt(1)
    );
\vga_h_cnt[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => pixel_cnt(9),
      I1 => pixel_cnt(7),
      I2 => pixel_cnt(8),
      I3 => pixel_cnt(2),
      O => vga_h_cnt(2)
    );
\vga_h_cnt[3]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => pixel_cnt(9),
      I1 => pixel_cnt(7),
      I2 => pixel_cnt(8),
      I3 => pixel_cnt(3),
      O => vga_h_cnt(3)
    );
\vga_h_cnt[4]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => pixel_cnt(9),
      I1 => pixel_cnt(7),
      I2 => pixel_cnt(8),
      I3 => pixel_cnt(4),
      O => vga_h_cnt(4)
    );
\vga_h_cnt[5]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => pixel_cnt(9),
      I1 => pixel_cnt(7),
      I2 => pixel_cnt(8),
      I3 => pixel_cnt(5),
      O => vga_h_cnt(5)
    );
\vga_h_cnt[6]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"5700"
    )
        port map (
      I0 => pixel_cnt(9),
      I1 => pixel_cnt(7),
      I2 => pixel_cnt(8),
      I3 => pixel_cnt(6),
      O => vga_h_cnt(6)
    );
\vga_h_cnt[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => pixel_cnt(9),
      I1 => pixel_cnt(7),
      O => vga_h_cnt(7)
    );
\vga_h_cnt[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => pixel_cnt(9),
      I1 => pixel_cnt(8),
      O => vga_h_cnt(8)
    );
\vga_h_cnt[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => pixel_cnt(9),
      I1 => pixel_cnt(8),
      I2 => pixel_cnt(7),
      O => vga_h_cnt(9)
    );
\vga_v_cnt[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555500000000"
    )
        port map (
      I0 => line_cnt(9),
      I1 => line_cnt(7),
      I2 => line_cnt(5),
      I3 => line_cnt(6),
      I4 => line_cnt(8),
      I5 => line_cnt(0),
      O => vga_v_cnt(0)
    );
\vga_v_cnt[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555500000000"
    )
        port map (
      I0 => line_cnt(9),
      I1 => line_cnt(7),
      I2 => line_cnt(5),
      I3 => line_cnt(6),
      I4 => line_cnt(8),
      I5 => line_cnt(1),
      O => vga_v_cnt(1)
    );
\vga_v_cnt[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555500000000"
    )
        port map (
      I0 => line_cnt(9),
      I1 => line_cnt(7),
      I2 => line_cnt(5),
      I3 => line_cnt(6),
      I4 => line_cnt(8),
      I5 => line_cnt(2),
      O => vga_v_cnt(2)
    );
\vga_v_cnt[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555500000000"
    )
        port map (
      I0 => line_cnt(9),
      I1 => line_cnt(7),
      I2 => line_cnt(5),
      I3 => line_cnt(6),
      I4 => line_cnt(8),
      I5 => line_cnt(3),
      O => vga_v_cnt(3)
    );
\vga_v_cnt[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1555555500000000"
    )
        port map (
      I0 => line_cnt(9),
      I1 => line_cnt(7),
      I2 => line_cnt(5),
      I3 => line_cnt(6),
      I4 => line_cnt(8),
      I5 => line_cnt(4),
      O => vga_v_cnt(4)
    );
\vga_v_cnt[5]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444444"
    )
        port map (
      I0 => line_cnt(9),
      I1 => line_cnt(5),
      I2 => line_cnt(6),
      I3 => line_cnt(7),
      I4 => line_cnt(8),
      O => vga_v_cnt(5)
    );
\vga_v_cnt[6]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F00"
    )
        port map (
      I0 => line_cnt(5),
      I1 => line_cnt(7),
      I2 => line_cnt(8),
      I3 => line_cnt(6),
      I4 => line_cnt(9),
      O => vga_v_cnt(6)
    );
\vga_v_cnt[7]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00007F00"
    )
        port map (
      I0 => line_cnt(5),
      I1 => line_cnt(6),
      I2 => line_cnt(8),
      I3 => line_cnt(7),
      I4 => line_cnt(9),
      O => vga_v_cnt(7)
    );
\vga_v_cnt[8]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444444"
    )
        port map (
      I0 => line_cnt(9),
      I1 => line_cnt(8),
      I2 => line_cnt(7),
      I3 => line_cnt(5),
      I4 => line_cnt(6),
      O => vga_v_cnt(8)
    );
vga_valid_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0444444444444444"
    )
        port map (
      I0 => line_cnt(9),
      I1 => vga_valid_INST_0_i_1_n_0,
      I2 => line_cnt(8),
      I3 => line_cnt(6),
      I4 => line_cnt(5),
      I5 => line_cnt(7),
      O => vga_valid
    );
vga_valid_INST_0_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"1F"
    )
        port map (
      I0 => pixel_cnt(8),
      I1 => pixel_cnt(7),
      I2 => pixel_cnt(9),
      O => vga_valid_INST_0_i_1_n_0
    );
vsync_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFEFAFAF"
    )
        port map (
      I0 => vsync_i_2_n_0,
      I1 => line_cnt(1),
      I2 => line_cnt(9),
      I3 => line_cnt(2),
      I4 => line_cnt(3),
      O => vsync_i_1_n_0
    );
vsync_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => line_cnt(4),
      I1 => line_cnt(7),
      I2 => line_cnt(8),
      I3 => line_cnt(6),
      I4 => line_cnt(5),
      O => vsync_i_2_n_0
    );
vsync_reg: unisim.vcomponents.FDPE
     port map (
      C => vga_pclk,
      CE => '1',
      D => vsync_i_1_n_0,
      PRE => vga_rst,
      Q => vga_vsync
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity vga_0 is
  port (
    vga_pclk : in STD_LOGIC;
    vga_rst : in STD_LOGIC;
    vga_hsync : out STD_LOGIC;
    vga_vsync : out STD_LOGIC;
    vga_valid : out STD_LOGIC;
    vga_h_cnt : out STD_LOGIC_VECTOR ( 11 downto 0 );
    vga_v_cnt : out STD_LOGIC_VECTOR ( 10 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of vga_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of vga_0 : entity is "vga_0,vga,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of vga_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of vga_0 : entity is "vga,Vivado 2017.4";
end vga_0;

architecture STRUCTURE of vga_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^vga_h_cnt\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \^vga_v_cnt\ : STD_LOGIC_VECTOR ( 8 downto 0 );
begin
  vga_h_cnt(11) <= \<const0>\;
  vga_h_cnt(10) <= \<const0>\;
  vga_h_cnt(9 downto 0) <= \^vga_h_cnt\(9 downto 0);
  vga_v_cnt(10) <= \<const0>\;
  vga_v_cnt(9) <= \<const0>\;
  vga_v_cnt(8 downto 0) <= \^vga_v_cnt\(8 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.vga_0_vga
     port map (
      vga_h_cnt(9 downto 0) => \^vga_h_cnt\(9 downto 0),
      vga_hsync => vga_hsync,
      vga_pclk => vga_pclk,
      vga_rst => vga_rst,
      vga_v_cnt(8 downto 0) => \^vga_v_cnt\(8 downto 0),
      vga_valid => vga_valid,
      vga_vsync => vga_vsync
    );
end STRUCTURE;
