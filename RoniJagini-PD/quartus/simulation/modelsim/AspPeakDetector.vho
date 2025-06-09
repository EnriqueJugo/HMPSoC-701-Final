-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "06/10/2025 09:51:54"

-- 
-- Device: Altera 5CGXFC7D6F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	PD_ASP IS
    PORT (
	clock : IN std_logic;
	\send.data\ : OUT std_logic_vector(31 DOWNTO 0);
	\send.addr\ : OUT std_logic_vector(7 DOWNTO 0);
	\recv.data\ : IN std_logic_vector(31 DOWNTO 0);
	\recv.addr\ : IN std_logic_vector(7 DOWNTO 0)
	);
END PD_ASP;

-- Design Ports Information
-- send.data[0]	=>  Location: PIN_AC22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[2]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[3]	=>  Location: PIN_AA18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[4]	=>  Location: PIN_AK25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[5]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[6]	=>  Location: PIN_AD19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[7]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[8]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[9]	=>  Location: PIN_AE20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[10]	=>  Location: PIN_AG23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[11]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[12]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[13]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[14]	=>  Location: PIN_AJ25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[15]	=>  Location: PIN_AH22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[16]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[17]	=>  Location: PIN_AG6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[18]	=>  Location: PIN_AH27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[19]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[20]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[21]	=>  Location: PIN_AD17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[22]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[23]	=>  Location: PIN_K27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[24]	=>  Location: PIN_AG8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[25]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[26]	=>  Location: PIN_AK23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[27]	=>  Location: PIN_A23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[28]	=>  Location: PIN_R25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[29]	=>  Location: PIN_AJ17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[30]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.data[31]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[0]	=>  Location: PIN_V29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[1]	=>  Location: PIN_T23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[2]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[3]	=>  Location: PIN_V24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[4]	=>  Location: PIN_H27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[6]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- send.addr[7]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[0]	=>  Location: PIN_W30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[1]	=>  Location: PIN_F26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[2]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[4]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[5]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[6]	=>  Location: PIN_L28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.addr[7]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[28]	=>  Location: PIN_AK27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[29]	=>  Location: PIN_AK28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[30]	=>  Location: PIN_AG21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[31]	=>  Location: PIN_AJ27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[24]	=>  Location: PIN_AA21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[27]	=>  Location: PIN_AG18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[26]	=>  Location: PIN_AJ23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[25]	=>  Location: PIN_AH24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[23]	=>  Location: PIN_AJ24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[22]	=>  Location: PIN_AG19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[21]	=>  Location: PIN_AD24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[20]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[19]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[18]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[17]	=>  Location: PIN_AD23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[16]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[15]	=>  Location: PIN_AF23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[14]	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[11]	=>  Location: PIN_AG24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[10]	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[13]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[12]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[9]	=>  Location: PIN_W24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[8]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[7]	=>  Location: PIN_AD20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[6]	=>  Location: PIN_AG22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[1]	=>  Location: PIN_AK26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[0]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[3]	=>  Location: PIN_AF21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[2]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[5]	=>  Location: PIN_AH25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- recv.data[4]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF PD_ASP IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL \ww_send.data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ww_send.addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_recv.data\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \ww_recv.addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \recv.addr[0]~input_o\ : std_logic;
SIGNAL \recv.addr[1]~input_o\ : std_logic;
SIGNAL \recv.addr[2]~input_o\ : std_logic;
SIGNAL \recv.addr[3]~input_o\ : std_logic;
SIGNAL \recv.addr[4]~input_o\ : std_logic;
SIGNAL \recv.addr[5]~input_o\ : std_logic;
SIGNAL \recv.addr[6]~input_o\ : std_logic;
SIGNAL \recv.addr[7]~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \Add0~1_sumout\ : std_logic;
SIGNAL \recv.data[23]~input_o\ : std_logic;
SIGNAL \recv.data[29]~input_o\ : std_logic;
SIGNAL \recv.data[31]~input_o\ : std_logic;
SIGNAL \recv.data[28]~input_o\ : std_logic;
SIGNAL \recv.data[30]~input_o\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \recv.data[26]~input_o\ : std_logic;
SIGNAL \recv.data[25]~input_o\ : std_logic;
SIGNAL \recv.data[27]~input_o\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \recv.data[24]~input_o\ : std_logic;
SIGNAL \recv.data[22]~input_o\ : std_logic;
SIGNAL \LessThan2~1_combout\ : std_logic;
SIGNAL \LessThan2~2_combout\ : std_logic;
SIGNAL \LessThan2~27_combout\ : std_logic;
SIGNAL \LessThan2~28_combout\ : std_logic;
SIGNAL \LessThan2~26_combout\ : std_logic;
SIGNAL \LessThan2~29_combout\ : std_logic;
SIGNAL \recv.data[3]~input_o\ : std_logic;
SIGNAL \recv.data[2]~input_o\ : std_logic;
SIGNAL \LessThan2~8_combout\ : std_logic;
SIGNAL \recv.data[5]~input_o\ : std_logic;
SIGNAL \recv.data[4]~input_o\ : std_logic;
SIGNAL \LessThan2~10_combout\ : std_logic;
SIGNAL \recv.data[7]~input_o\ : std_logic;
SIGNAL \recv.data[6]~input_o\ : std_logic;
SIGNAL \LessThan2~6_combout\ : std_logic;
SIGNAL \recv.data[8]~input_o\ : std_logic;
SIGNAL \recv.data[9]~input_o\ : std_logic;
SIGNAL \LessThan2~5_combout\ : std_logic;
SIGNAL \recv.data[1]~input_o\ : std_logic;
SIGNAL \recv.data[0]~input_o\ : std_logic;
SIGNAL \LessThan2~7_combout\ : std_logic;
SIGNAL \LessThan2~9_combout\ : std_logic;
SIGNAL \LessThan2~11_combout\ : std_logic;
SIGNAL \LessThan2~12_combout\ : std_logic;
SIGNAL \LessThan2~13_combout\ : std_logic;
SIGNAL \LessThan2~14_combout\ : std_logic;
SIGNAL \LessThan2~15_combout\ : std_logic;
SIGNAL \recv.data[18]~input_o\ : std_logic;
SIGNAL \recv.data[19]~input_o\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \recv.data[14]~input_o\ : std_logic;
SIGNAL \recv.data[15]~input_o\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \recv.data[16]~input_o\ : std_logic;
SIGNAL \recv.data[17]~input_o\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \recv.data[20]~input_o\ : std_logic;
SIGNAL \recv.data[21]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \recv.data[10]~input_o\ : std_logic;
SIGNAL \recv.data[11]~input_o\ : std_logic;
SIGNAL \correlation[11]~feeder_combout\ : std_logic;
SIGNAL \last_correlation[11]~feeder_combout\ : std_logic;
SIGNAL \LessThan2~16_combout\ : std_logic;
SIGNAL \recv.data[12]~input_o\ : std_logic;
SIGNAL \recv.data[13]~input_o\ : std_logic;
SIGNAL \correlation[13]~feeder_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan2~17_combout\ : std_logic;
SIGNAL \LessThan2~23_combout\ : std_logic;
SIGNAL \LessThan2~22_combout\ : std_logic;
SIGNAL \LessThan2~24_combout\ : std_logic;
SIGNAL \LessThan2~3_combout\ : std_logic;
SIGNAL \LessThan2~4_combout\ : std_logic;
SIGNAL \LessThan2~20_combout\ : std_logic;
SIGNAL \LessThan2~19_combout\ : std_logic;
SIGNAL \LessThan2~18_combout\ : std_logic;
SIGNAL \LessThan2~21_combout\ : std_logic;
SIGNAL \LessThan2~25_combout\ : std_logic;
SIGNAL \LessThan2~30_combout\ : std_logic;
SIGNAL \LessThan0~22_combout\ : std_logic;
SIGNAL \LessThan0~23_combout\ : std_logic;
SIGNAL \LessThan0~24_combout\ : std_logic;
SIGNAL \LessThan0~19_combout\ : std_logic;
SIGNAL \LessThan0~18_combout\ : std_logic;
SIGNAL \LessThan0~20_combout\ : std_logic;
SIGNAL \LessThan0~11_combout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \LessThan0~12_combout\ : std_logic;
SIGNAL \LessThan0~13_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \LessThan0~16_combout\ : std_logic;
SIGNAL \LessThan0~15_combout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \LessThan0~17_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \LessThan0~21_combout\ : std_logic;
SIGNAL \LessThan0~25_combout\ : std_logic;
SIGNAL \next_state.idle~0_combout\ : std_logic;
SIGNAL \next_state.idle~q\ : std_logic;
SIGNAL \state.idle~feeder_combout\ : std_logic;
SIGNAL \state.idle~q\ : std_logic;
SIGNAL \next_state~8_combout\ : std_logic;
SIGNAL \next_state~9_combout\ : std_logic;
SIGNAL \next_state~11_combout\ : std_logic;
SIGNAL \next_state.negative_slope~q\ : std_logic;
SIGNAL \state.negative_slope~q\ : std_logic;
SIGNAL \next_state~10_combout\ : std_logic;
SIGNAL \next_state.positive_slope~q\ : std_logic;
SIGNAL \state.positive_slope~q\ : std_logic;
SIGNAL \send.data[0]~1_combout\ : std_logic;
SIGNAL \counter[0]~0_combout\ : std_logic;
SIGNAL \send.data[0]~reg0feeder_combout\ : std_logic;
SIGNAL \send.data[0]~0_combout\ : std_logic;
SIGNAL \send.data[0]~reg0_q\ : std_logic;
SIGNAL \Add0~2\ : std_logic;
SIGNAL \Add0~5_sumout\ : std_logic;
SIGNAL \send.data[1]~reg0_q\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~9_sumout\ : std_logic;
SIGNAL \send.data[2]~reg0_q\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~13_sumout\ : std_logic;
SIGNAL \send.data[3]~reg0_q\ : std_logic;
SIGNAL \Add0~14\ : std_logic;
SIGNAL \Add0~17_sumout\ : std_logic;
SIGNAL \send.data[4]~reg0_q\ : std_logic;
SIGNAL \Add0~18\ : std_logic;
SIGNAL \Add0~21_sumout\ : std_logic;
SIGNAL \send.data[5]~reg0_q\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~25_sumout\ : std_logic;
SIGNAL \send.data[6]~reg0_q\ : std_logic;
SIGNAL \Add0~26\ : std_logic;
SIGNAL \Add0~29_sumout\ : std_logic;
SIGNAL \send.data[7]~reg0_q\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~33_sumout\ : std_logic;
SIGNAL \send.data[8]~reg0_q\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~37_sumout\ : std_logic;
SIGNAL \send.data[9]~reg0_q\ : std_logic;
SIGNAL \Add0~38\ : std_logic;
SIGNAL \Add0~41_sumout\ : std_logic;
SIGNAL \send.data[10]~reg0_q\ : std_logic;
SIGNAL \Add0~42\ : std_logic;
SIGNAL \Add0~45_sumout\ : std_logic;
SIGNAL \send.data[11]~reg0_q\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~49_sumout\ : std_logic;
SIGNAL \send.data[12]~reg0_q\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~53_sumout\ : std_logic;
SIGNAL \send.data[13]~reg0feeder_combout\ : std_logic;
SIGNAL \send.data[13]~reg0_q\ : std_logic;
SIGNAL \Add0~54\ : std_logic;
SIGNAL \Add0~57_sumout\ : std_logic;
SIGNAL \send.data[14]~reg0_q\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~61_sumout\ : std_logic;
SIGNAL \send.data[15]~reg0_q\ : std_logic;
SIGNAL counter : std_logic_vector(15 DOWNTO 0);
SIGNAL last_correlation : std_logic_vector(27 DOWNTO 0);
SIGNAL correlation : std_logic_vector(27 DOWNTO 0);
SIGNAL ALT_INV_counter : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_recv.data[13]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[11]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[31]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[30]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[29]~input_o\ : std_logic;
SIGNAL \ALT_INV_recv.data[28]~input_o\ : std_logic;
SIGNAL \ALT_INV_next_state.negative_slope~q\ : std_logic;
SIGNAL \ALT_INV_next_state~9_combout\ : std_logic;
SIGNAL \ALT_INV_next_state~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~25_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~24_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~23_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~22_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~21_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~19_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~10_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \ALT_INV_state.negative_slope~q\ : std_logic;
SIGNAL \ALT_INV_LessThan2~30_combout\ : std_logic;
SIGNAL \ALT_INV_next_state.idle~q\ : std_logic;
SIGNAL \ALT_INV_next_state.positive_slope~q\ : std_logic;
SIGNAL \ALT_INV_state.idle~q\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~29_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~28_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~27_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~26_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~25_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~24_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~23_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~22_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~21_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~20_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~19_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~18_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~17_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~16_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~15_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~14_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~13_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~12_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~11_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~10_combout\ : std_logic;
SIGNAL ALT_INV_correlation : std_logic_vector(27 DOWNTO 0);
SIGNAL ALT_INV_last_correlation : std_logic_vector(27 DOWNTO 0);
SIGNAL \ALT_INV_LessThan2~9_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~8_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~7_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~6_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~5_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~4_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~3_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan2~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.positive_slope~q\ : std_logic;

BEGIN

ww_clock <= clock;
\send.data\ <= \ww_send.data\;
\send.addr\ <= \ww_send.addr\;
\ww_recv.data\ <= \recv.data\;
\ww_recv.addr\ <= \recv.addr\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
ALT_INV_counter(0) <= NOT counter(0);
\ALT_INV_recv.data[13]~input_o\ <= NOT \recv.data[13]~input_o\;
\ALT_INV_recv.data[11]~input_o\ <= NOT \recv.data[11]~input_o\;
\ALT_INV_recv.data[31]~input_o\ <= NOT \recv.data[31]~input_o\;
\ALT_INV_recv.data[30]~input_o\ <= NOT \recv.data[30]~input_o\;
\ALT_INV_recv.data[29]~input_o\ <= NOT \recv.data[29]~input_o\;
\ALT_INV_recv.data[28]~input_o\ <= NOT \recv.data[28]~input_o\;
\ALT_INV_next_state.negative_slope~q\ <= NOT \next_state.negative_slope~q\;
\ALT_INV_next_state~9_combout\ <= NOT \next_state~9_combout\;
\ALT_INV_next_state~8_combout\ <= NOT \next_state~8_combout\;
\ALT_INV_LessThan0~25_combout\ <= NOT \LessThan0~25_combout\;
\ALT_INV_LessThan0~24_combout\ <= NOT \LessThan0~24_combout\;
\ALT_INV_LessThan0~23_combout\ <= NOT \LessThan0~23_combout\;
\ALT_INV_LessThan0~22_combout\ <= NOT \LessThan0~22_combout\;
\ALT_INV_LessThan0~21_combout\ <= NOT \LessThan0~21_combout\;
\ALT_INV_LessThan0~20_combout\ <= NOT \LessThan0~20_combout\;
\ALT_INV_LessThan0~19_combout\ <= NOT \LessThan0~19_combout\;
\ALT_INV_LessThan0~18_combout\ <= NOT \LessThan0~18_combout\;
\ALT_INV_LessThan0~17_combout\ <= NOT \LessThan0~17_combout\;
\ALT_INV_LessThan0~16_combout\ <= NOT \LessThan0~16_combout\;
\ALT_INV_LessThan0~15_combout\ <= NOT \LessThan0~15_combout\;
\ALT_INV_LessThan0~14_combout\ <= NOT \LessThan0~14_combout\;
\ALT_INV_LessThan0~13_combout\ <= NOT \LessThan0~13_combout\;
\ALT_INV_LessThan0~12_combout\ <= NOT \LessThan0~12_combout\;
\ALT_INV_LessThan0~11_combout\ <= NOT \LessThan0~11_combout\;
\ALT_INV_LessThan0~10_combout\ <= NOT \LessThan0~10_combout\;
\ALT_INV_LessThan0~9_combout\ <= NOT \LessThan0~9_combout\;
\ALT_INV_LessThan0~8_combout\ <= NOT \LessThan0~8_combout\;
\ALT_INV_LessThan0~7_combout\ <= NOT \LessThan0~7_combout\;
\ALT_INV_LessThan0~6_combout\ <= NOT \LessThan0~6_combout\;
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;
\ALT_INV_state.negative_slope~q\ <= NOT \state.negative_slope~q\;
\ALT_INV_LessThan2~30_combout\ <= NOT \LessThan2~30_combout\;
\ALT_INV_next_state.idle~q\ <= NOT \next_state.idle~q\;
\ALT_INV_next_state.positive_slope~q\ <= NOT \next_state.positive_slope~q\;
\ALT_INV_state.idle~q\ <= NOT \state.idle~q\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;
\ALT_INV_LessThan2~29_combout\ <= NOT \LessThan2~29_combout\;
\ALT_INV_LessThan2~28_combout\ <= NOT \LessThan2~28_combout\;
\ALT_INV_LessThan2~27_combout\ <= NOT \LessThan2~27_combout\;
\ALT_INV_LessThan2~26_combout\ <= NOT \LessThan2~26_combout\;
\ALT_INV_LessThan2~25_combout\ <= NOT \LessThan2~25_combout\;
\ALT_INV_LessThan2~24_combout\ <= NOT \LessThan2~24_combout\;
\ALT_INV_LessThan2~23_combout\ <= NOT \LessThan2~23_combout\;
\ALT_INV_LessThan2~22_combout\ <= NOT \LessThan2~22_combout\;
\ALT_INV_LessThan2~21_combout\ <= NOT \LessThan2~21_combout\;
\ALT_INV_LessThan2~20_combout\ <= NOT \LessThan2~20_combout\;
\ALT_INV_LessThan2~19_combout\ <= NOT \LessThan2~19_combout\;
\ALT_INV_LessThan2~18_combout\ <= NOT \LessThan2~18_combout\;
\ALT_INV_LessThan2~17_combout\ <= NOT \LessThan2~17_combout\;
\ALT_INV_LessThan2~16_combout\ <= NOT \LessThan2~16_combout\;
\ALT_INV_LessThan2~15_combout\ <= NOT \LessThan2~15_combout\;
\ALT_INV_LessThan2~14_combout\ <= NOT \LessThan2~14_combout\;
\ALT_INV_LessThan2~13_combout\ <= NOT \LessThan2~13_combout\;
\ALT_INV_LessThan2~12_combout\ <= NOT \LessThan2~12_combout\;
\ALT_INV_LessThan2~11_combout\ <= NOT \LessThan2~11_combout\;
\ALT_INV_LessThan2~10_combout\ <= NOT \LessThan2~10_combout\;
ALT_INV_correlation(4) <= NOT correlation(4);
ALT_INV_last_correlation(4) <= NOT last_correlation(4);
ALT_INV_correlation(5) <= NOT correlation(5);
ALT_INV_last_correlation(5) <= NOT last_correlation(5);
\ALT_INV_LessThan2~9_combout\ <= NOT \LessThan2~9_combout\;
\ALT_INV_LessThan2~8_combout\ <= NOT \LessThan2~8_combout\;
ALT_INV_correlation(2) <= NOT correlation(2);
ALT_INV_last_correlation(2) <= NOT last_correlation(2);
ALT_INV_correlation(3) <= NOT correlation(3);
ALT_INV_last_correlation(3) <= NOT last_correlation(3);
\ALT_INV_LessThan2~7_combout\ <= NOT \LessThan2~7_combout\;
ALT_INV_correlation(0) <= NOT correlation(0);
ALT_INV_last_correlation(0) <= NOT last_correlation(0);
ALT_INV_correlation(1) <= NOT correlation(1);
ALT_INV_last_correlation(1) <= NOT last_correlation(1);
\ALT_INV_LessThan2~6_combout\ <= NOT \LessThan2~6_combout\;
ALT_INV_correlation(6) <= NOT correlation(6);
ALT_INV_last_correlation(6) <= NOT last_correlation(6);
ALT_INV_correlation(7) <= NOT correlation(7);
ALT_INV_last_correlation(7) <= NOT last_correlation(7);
\ALT_INV_LessThan2~5_combout\ <= NOT \LessThan2~5_combout\;
ALT_INV_correlation(8) <= NOT correlation(8);
ALT_INV_last_correlation(8) <= NOT last_correlation(8);
ALT_INV_correlation(9) <= NOT correlation(9);
ALT_INV_last_correlation(9) <= NOT last_correlation(9);
\ALT_INV_LessThan2~4_combout\ <= NOT \LessThan2~4_combout\;
\ALT_INV_LessThan0~4_combout\ <= NOT \LessThan0~4_combout\;
ALT_INV_correlation(12) <= NOT correlation(12);
ALT_INV_last_correlation(12) <= NOT last_correlation(12);
ALT_INV_correlation(13) <= NOT correlation(13);
ALT_INV_last_correlation(13) <= NOT last_correlation(13);
\ALT_INV_LessThan2~3_combout\ <= NOT \LessThan2~3_combout\;
ALT_INV_correlation(10) <= NOT correlation(10);
ALT_INV_last_correlation(10) <= NOT last_correlation(10);
ALT_INV_correlation(11) <= NOT correlation(11);
ALT_INV_last_correlation(11) <= NOT last_correlation(11);
\ALT_INV_LessThan0~3_combout\ <= NOT \LessThan0~3_combout\;
ALT_INV_correlation(14) <= NOT correlation(14);
ALT_INV_last_correlation(14) <= NOT last_correlation(14);
ALT_INV_correlation(15) <= NOT correlation(15);
ALT_INV_last_correlation(15) <= NOT last_correlation(15);
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
ALT_INV_correlation(16) <= NOT correlation(16);
ALT_INV_last_correlation(16) <= NOT last_correlation(16);
ALT_INV_correlation(17) <= NOT correlation(17);
ALT_INV_last_correlation(17) <= NOT last_correlation(17);
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
ALT_INV_correlation(18) <= NOT correlation(18);
ALT_INV_last_correlation(18) <= NOT last_correlation(18);
ALT_INV_correlation(19) <= NOT correlation(19);
ALT_INV_last_correlation(19) <= NOT last_correlation(19);
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
ALT_INV_correlation(20) <= NOT correlation(20);
ALT_INV_last_correlation(20) <= NOT last_correlation(20);
ALT_INV_correlation(21) <= NOT correlation(21);
ALT_INV_last_correlation(21) <= NOT last_correlation(21);
\ALT_INV_LessThan2~2_combout\ <= NOT \LessThan2~2_combout\;
\ALT_INV_LessThan2~1_combout\ <= NOT \LessThan2~1_combout\;
ALT_INV_correlation(22) <= NOT correlation(22);
ALT_INV_last_correlation(22) <= NOT last_correlation(22);
ALT_INV_correlation(23) <= NOT correlation(23);
ALT_INV_last_correlation(23) <= NOT last_correlation(23);
\ALT_INV_LessThan2~0_combout\ <= NOT \LessThan2~0_combout\;
ALT_INV_correlation(25) <= NOT correlation(25);
ALT_INV_last_correlation(25) <= NOT last_correlation(25);
ALT_INV_correlation(26) <= NOT correlation(26);
ALT_INV_last_correlation(26) <= NOT last_correlation(26);
ALT_INV_correlation(27) <= NOT correlation(27);
ALT_INV_last_correlation(27) <= NOT last_correlation(27);
ALT_INV_correlation(24) <= NOT correlation(24);
ALT_INV_last_correlation(24) <= NOT last_correlation(24);
\ALT_INV_state.positive_slope~q\ <= NOT \state.positive_slope~q\;
ALT_INV_counter(15) <= NOT counter(15);
ALT_INV_counter(14) <= NOT counter(14);
ALT_INV_counter(13) <= NOT counter(13);
ALT_INV_counter(12) <= NOT counter(12);
ALT_INV_counter(11) <= NOT counter(11);
ALT_INV_counter(10) <= NOT counter(10);
ALT_INV_counter(9) <= NOT counter(9);
ALT_INV_counter(8) <= NOT counter(8);
ALT_INV_counter(7) <= NOT counter(7);
ALT_INV_counter(6) <= NOT counter(6);
ALT_INV_counter(5) <= NOT counter(5);
ALT_INV_counter(4) <= NOT counter(4);
ALT_INV_counter(3) <= NOT counter(3);
ALT_INV_counter(2) <= NOT counter(2);
ALT_INV_counter(1) <= NOT counter(1);

-- Location: IOOBUF_X88_Y0_N20
\send.data[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(0));

-- Location: IOOBUF_X89_Y8_N56
\send.data[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(1));

-- Location: IOOBUF_X89_Y9_N22
\send.data[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(2));

-- Location: IOOBUF_X72_Y0_N2
\send.data[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(3));

-- Location: IOOBUF_X76_Y0_N53
\send.data[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(4));

-- Location: IOOBUF_X89_Y8_N39
\send.data[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(5));

-- Location: IOOBUF_X78_Y0_N2
\send.data[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(6));

-- Location: IOOBUF_X86_Y0_N36
\send.data[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[7]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(7));

-- Location: IOOBUF_X89_Y9_N56
\send.data[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[8]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(8));

-- Location: IOOBUF_X78_Y0_N19
\send.data[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[9]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(9));

-- Location: IOOBUF_X88_Y0_N37
\send.data[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[10]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(10));

-- Location: IOOBUF_X76_Y0_N2
\send.data[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[11]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(11));

-- Location: IOOBUF_X76_Y0_N19
\send.data[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[12]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(12));

-- Location: IOOBUF_X89_Y6_N5
\send.data[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[13]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(13));

-- Location: IOOBUF_X76_Y0_N36
\send.data[14]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[14]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(14));

-- Location: IOOBUF_X88_Y0_N54
\send.data[15]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \send.data[15]~reg0_q\,
	devoe => ww_devoe,
	o => \ww_send.data\(15));

-- Location: IOOBUF_X88_Y81_N3
\send.data[16]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.data\(16));

-- Location: IOOBUF_X10_Y0_N42
\send.data[17]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.data\(17));

-- Location: IOOBUF_X89_Y16_N39
\send.data[18]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.data\(18));

-- Location: IOOBUF_X52_Y81_N19
\send.data[19]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.data\(19));

-- Location: IOOBUF_X40_Y81_N53
\send.data[20]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.data\(20));

-- Location: IOOBUF_X54_Y0_N2
\send.data[21]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.data\(21));

-- Location: IOOBUF_X38_Y81_N19
\send.data[22]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.data\(22));

-- Location: IOOBUF_X89_Y58_N5
\send.data[23]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.data\(23));

-- Location: IOOBUF_X12_Y0_N53
\send.data[24]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.data\(24));

-- Location: IOOBUF_X54_Y81_N36
\send.data[25]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.data\(25));

-- Location: IOOBUF_X72_Y0_N53
\send.data[26]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.data\(26));

-- Location: IOOBUF_X70_Y81_N53
\send.data[27]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.data\(27));

-- Location: IOOBUF_X89_Y45_N22
\send.data[28]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.data\(28));

-- Location: IOOBUF_X60_Y0_N36
\send.data[29]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.data\(29));

-- Location: IOOBUF_X68_Y81_N36
\send.data[30]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.data\(30));

-- Location: IOOBUF_X40_Y81_N19
\send.data[31]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ww_send.data\(31));

-- Location: IOOBUF_X89_Y37_N39
\send.addr[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ww_send.addr\(0));

-- Location: IOOBUF_X89_Y42_N45
\send.addr[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.addr\(1));

-- Location: IOOBUF_X12_Y0_N36
\send.addr[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \ww_send.addr\(2));

-- Location: IOOBUF_X89_Y20_N45
\send.addr[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.addr\(3));

-- Location: IOOBUF_X89_Y60_N39
\send.addr[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.addr\(4));

-- Location: IOOBUF_X52_Y81_N36
\send.addr[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.addr\(5));

-- Location: IOOBUF_X22_Y81_N2
\send.addr[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.addr\(6));

-- Location: IOOBUF_X24_Y0_N2
\send.addr[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \ww_send.addr\(7));

-- Location: IOIBUF_X40_Y0_N18
\clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G6
\clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clock~input_o\,
	outclk => \clock~inputCLKENA0_outclk\);

-- Location: LABCELL_X79_Y3_N0
\Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~1_sumout\ = SUM(( counter(0) ) + ( VCC ) + ( !VCC ))
-- \Add0~2\ = CARRY(( counter(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(0),
	cin => GND,
	sumout => \Add0~1_sumout\,
	cout => \Add0~2\);

-- Location: IOIBUF_X74_Y0_N92
\recv.data[23]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(23),
	o => \recv.data[23]~input_o\);

-- Location: IOIBUF_X82_Y0_N92
\recv.data[29]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(29),
	o => \recv.data[29]~input_o\);

-- Location: IOIBUF_X80_Y0_N35
\recv.data[31]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(31),
	o => \recv.data[31]~input_o\);

-- Location: IOIBUF_X82_Y0_N75
\recv.data[28]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(28),
	o => \recv.data[28]~input_o\);

-- Location: IOIBUF_X82_Y0_N58
\recv.data[30]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(30),
	o => \recv.data[30]~input_o\);

-- Location: LABCELL_X81_Y3_N36
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( !\recv.data[28]~input_o\ & ( !\recv.data[30]~input_o\ & ( (!\recv.data[29]~input_o\ & \recv.data[31]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[29]~input_o\,
	datab => \ALT_INV_recv.data[31]~input_o\,
	datae => \ALT_INV_recv.data[28]~input_o\,
	dataf => \ALT_INV_recv.data[30]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: FF_X80_Y3_N8
\correlation[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[23]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(23));

-- Location: FF_X80_Y3_N20
\last_correlation[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(23),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(23));

-- Location: IOIBUF_X72_Y0_N35
\recv.data[26]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(26),
	o => \recv.data[26]~input_o\);

-- Location: FF_X80_Y3_N41
\correlation[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[26]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(26));

-- Location: FF_X80_Y3_N56
\last_correlation[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(26),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(26));

-- Location: IOIBUF_X74_Y0_N75
\recv.data[25]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(25),
	o => \recv.data[25]~input_o\);

-- Location: FF_X80_Y3_N14
\correlation[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[25]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(25));

-- Location: FF_X80_Y3_N44
\last_correlation[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(25),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(25));

-- Location: IOIBUF_X74_Y0_N41
\recv.data[27]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(27),
	o => \recv.data[27]~input_o\);

-- Location: FF_X80_Y3_N29
\correlation[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[27]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(27));

-- Location: FF_X80_Y3_N59
\last_correlation[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(27),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(27));

-- Location: LABCELL_X80_Y3_N15
\LessThan2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ( last_correlation(27) & ( correlation(26) & ( (last_correlation(26) & (correlation(27) & (!correlation(25) $ (last_correlation(25))))) ) ) ) # ( !last_correlation(27) & ( correlation(26) & ( (last_correlation(26) & 
-- (!correlation(27) & (!correlation(25) $ (last_correlation(25))))) ) ) ) # ( last_correlation(27) & ( !correlation(26) & ( (!last_correlation(26) & (correlation(27) & (!correlation(25) $ (last_correlation(25))))) ) ) ) # ( !last_correlation(27) & ( 
-- !correlation(26) & ( (!last_correlation(26) & (!correlation(27) & (!correlation(25) $ (last_correlation(25))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001000000000000000001000001001000001000000000000000001000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_correlation(26),
	datab => ALT_INV_correlation(25),
	datac => ALT_INV_last_correlation(25),
	datad => ALT_INV_correlation(27),
	datae => ALT_INV_last_correlation(27),
	dataf => ALT_INV_correlation(26),
	combout => \LessThan2~0_combout\);

-- Location: IOIBUF_X80_Y0_N1
\recv.data[24]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(24),
	o => \recv.data[24]~input_o\);

-- Location: FF_X80_Y3_N5
\correlation[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[24]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(24));

-- Location: FF_X80_Y3_N50
\last_correlation[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(24),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(24));

-- Location: IOIBUF_X74_Y0_N58
\recv.data[22]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(22),
	o => \recv.data[22]~input_o\);

-- Location: FF_X80_Y3_N26
\correlation[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[22]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(22));

-- Location: FF_X80_Y3_N11
\last_correlation[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(22),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(22));

-- Location: LABCELL_X80_Y3_N33
\LessThan2~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~1_combout\ = ( correlation(22) & ( !last_correlation(22) ) ) # ( !correlation(22) & ( last_correlation(22) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_last_correlation(22),
	dataf => ALT_INV_correlation(22),
	combout => \LessThan2~1_combout\);

-- Location: LABCELL_X80_Y3_N51
\LessThan2~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~2_combout\ = ( correlation(24) & ( !\LessThan2~1_combout\ & ( (\LessThan2~0_combout\ & (last_correlation(24) & (!last_correlation(23) $ (correlation(23))))) ) ) ) # ( !correlation(24) & ( !\LessThan2~1_combout\ & ( (\LessThan2~0_combout\ & 
-- (!last_correlation(24) & (!last_correlation(23) $ (correlation(23))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000100000000000000000010000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_correlation(23),
	datab => \ALT_INV_LessThan2~0_combout\,
	datac => ALT_INV_correlation(23),
	datad => ALT_INV_last_correlation(24),
	datae => ALT_INV_correlation(24),
	dataf => \ALT_INV_LessThan2~1_combout\,
	combout => \LessThan2~2_combout\);

-- Location: LABCELL_X80_Y3_N36
\LessThan2~27\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~27_combout\ = ( last_correlation(27) & ( last_correlation(25) & ( (!correlation(27)) # ((!last_correlation(26) & (!correlation(25) & !correlation(26))) # (last_correlation(26) & ((!correlation(25)) # (!correlation(26))))) ) ) ) # ( 
-- !last_correlation(27) & ( last_correlation(25) & ( (!correlation(27) & ((!last_correlation(26) & (!correlation(25) & !correlation(26))) # (last_correlation(26) & ((!correlation(25)) # (!correlation(26)))))) ) ) ) # ( last_correlation(27) & ( 
-- !last_correlation(25) & ( (!correlation(27)) # ((last_correlation(26) & !correlation(26))) ) ) ) # ( !last_correlation(27) & ( !last_correlation(25) & ( (last_correlation(26) & (!correlation(27) & !correlation(26))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000000000000111101011111000011010000010000001111110111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_correlation(26),
	datab => ALT_INV_correlation(25),
	datac => ALT_INV_correlation(27),
	datad => ALT_INV_correlation(26),
	datae => ALT_INV_last_correlation(27),
	dataf => ALT_INV_last_correlation(25),
	combout => \LessThan2~27_combout\);

-- Location: LABCELL_X80_Y3_N0
\LessThan2~28\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~28_combout\ = ( !\LessThan2~27_combout\ & ( \LessThan2~0_combout\ & ( (!last_correlation(24) & (((!last_correlation(23)) # (correlation(24))) # (correlation(23)))) # (last_correlation(24) & (correlation(24) & ((!last_correlation(23)) # 
-- (correlation(23))))) ) ) ) # ( !\LessThan2~27_combout\ & ( !\LessThan2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000010101111001010110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_correlation(24),
	datab => ALT_INV_correlation(23),
	datac => ALT_INV_correlation(24),
	datad => ALT_INV_last_correlation(23),
	datae => \ALT_INV_LessThan2~27_combout\,
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \LessThan2~28_combout\);

-- Location: LABCELL_X80_Y3_N9
\LessThan2~26\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~26_combout\ = ( correlation(24) & ( \LessThan2~0_combout\ & ( (last_correlation(24) & (!last_correlation(23) $ (correlation(23)))) ) ) ) # ( !correlation(24) & ( \LessThan2~0_combout\ & ( (!last_correlation(24) & (!last_correlation(23) $ 
-- (correlation(23)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010011001000000000000000010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_correlation(23),
	datab => ALT_INV_correlation(23),
	datad => ALT_INV_last_correlation(24),
	datae => ALT_INV_correlation(24),
	dataf => \ALT_INV_LessThan2~0_combout\,
	combout => \LessThan2~26_combout\);

-- Location: LABCELL_X80_Y3_N21
\LessThan2~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~29_combout\ = ( \LessThan2~28_combout\ & ( \LessThan2~26_combout\ & ( (!last_correlation(22)) # (correlation(22)) ) ) ) # ( \LessThan2~28_combout\ & ( !\LessThan2~26_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_correlation(22),
	datac => ALT_INV_last_correlation(22),
	datae => \ALT_INV_LessThan2~28_combout\,
	dataf => \ALT_INV_LessThan2~26_combout\,
	combout => \LessThan2~29_combout\);

-- Location: IOIBUF_X86_Y0_N1
\recv.data[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(3),
	o => \recv.data[3]~input_o\);

-- Location: FF_X83_Y3_N29
\correlation[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[3]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(3));

-- Location: FF_X83_Y3_N17
\last_correlation[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(3),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(3));

-- Location: IOIBUF_X89_Y8_N4
\recv.data[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(2),
	o => \recv.data[2]~input_o\);

-- Location: FF_X83_Y3_N59
\correlation[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[2]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(2));

-- Location: FF_X82_Y3_N53
\last_correlation[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(2),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(2));

-- Location: LABCELL_X83_Y3_N27
\LessThan2~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~8_combout\ = ( last_correlation(2) & ( (correlation(2) & (!last_correlation(3) $ (correlation(3)))) ) ) # ( !last_correlation(2) & ( (!correlation(2) & (!last_correlation(3) $ (correlation(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_last_correlation(3),
	datac => ALT_INV_correlation(2),
	datad => ALT_INV_correlation(3),
	dataf => ALT_INV_last_correlation(2),
	combout => \LessThan2~8_combout\);

-- Location: IOIBUF_X78_Y0_N52
\recv.data[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(5),
	o => \recv.data[5]~input_o\);

-- Location: FF_X82_Y3_N29
\correlation[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[5]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(5));

-- Location: FF_X82_Y3_N17
\last_correlation[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(5),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(5));

-- Location: IOIBUF_X82_Y0_N41
\recv.data[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(4),
	o => \recv.data[4]~input_o\);

-- Location: FF_X82_Y3_N50
\correlation[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[4]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(4));

-- Location: FF_X82_Y3_N56
\last_correlation[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(4),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(4));

-- Location: MLABCELL_X82_Y3_N18
\LessThan2~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~10_combout\ = ( correlation(4) & ( (last_correlation(4) & (!last_correlation(5) $ (correlation(5)))) ) ) # ( !correlation(4) & ( (!last_correlation(4) & (!last_correlation(5) $ (correlation(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_last_correlation(5),
	datac => ALT_INV_last_correlation(4),
	datad => ALT_INV_correlation(5),
	dataf => ALT_INV_correlation(4),
	combout => \LessThan2~10_combout\);

-- Location: IOIBUF_X84_Y0_N18
\recv.data[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(7),
	o => \recv.data[7]~input_o\);

-- Location: FF_X83_Y3_N14
\correlation[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[7]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(7));

-- Location: FF_X83_Y3_N56
\last_correlation[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(7),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(7));

-- Location: IOIBUF_X86_Y0_N18
\recv.data[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(6),
	o => \recv.data[6]~input_o\);

-- Location: FF_X83_Y3_N8
\correlation[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[6]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(6));

-- Location: FF_X83_Y3_N41
\last_correlation[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(6),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(6));

-- Location: LABCELL_X83_Y3_N6
\LessThan2~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~6_combout\ = ( last_correlation(6) & ( (correlation(6) & (!correlation(7) $ (last_correlation(7)))) ) ) # ( !last_correlation(6) & ( (!correlation(6) & (!correlation(7) $ (last_correlation(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001100000000110000110000000000000000110000110000000011000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_correlation(7),
	datac => ALT_INV_last_correlation(7),
	datad => ALT_INV_correlation(6),
	dataf => ALT_INV_last_correlation(6),
	combout => \LessThan2~6_combout\);

-- Location: IOIBUF_X84_Y0_N35
\recv.data[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(8),
	o => \recv.data[8]~input_o\);

-- Location: FF_X84_Y3_N50
\correlation[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[8]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(8));

-- Location: FF_X84_Y3_N35
\last_correlation[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(8),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(8));

-- Location: IOIBUF_X89_Y8_N21
\recv.data[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(9),
	o => \recv.data[9]~input_o\);

-- Location: FF_X84_Y3_N17
\correlation[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[9]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(9));

-- Location: FF_X84_Y3_N20
\last_correlation[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(9),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(9));

-- Location: MLABCELL_X84_Y3_N48
\LessThan2~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~5_combout\ = ( correlation(9) & ( (last_correlation(9) & (!last_correlation(8) $ (correlation(8)))) ) ) # ( !correlation(9) & ( (!last_correlation(9) & (!last_correlation(8) $ (correlation(8)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_correlation(8),
	datac => ALT_INV_last_correlation(9),
	datad => ALT_INV_correlation(8),
	dataf => ALT_INV_correlation(9),
	combout => \LessThan2~5_combout\);

-- Location: IOIBUF_X80_Y0_N52
\recv.data[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(1),
	o => \recv.data[1]~input_o\);

-- Location: FF_X82_Y3_N23
\correlation[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[1]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(1));

-- Location: FF_X82_Y3_N11
\last_correlation[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(1),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(1));

-- Location: IOIBUF_X84_Y0_N52
\recv.data[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(0),
	o => \recv.data[0]~input_o\);

-- Location: FF_X82_Y3_N8
\correlation[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[0]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(0));

-- Location: FF_X82_Y3_N20
\last_correlation[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(0),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(0));

-- Location: MLABCELL_X82_Y3_N6
\LessThan2~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~7_combout\ = ( correlation(1) & ( (last_correlation(1) & (last_correlation(0) & !correlation(0))) ) ) # ( !correlation(1) & ( ((last_correlation(0) & !correlation(0))) # (last_correlation(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100110011001111110011001100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_last_correlation(1),
	datac => ALT_INV_last_correlation(0),
	datad => ALT_INV_correlation(0),
	dataf => ALT_INV_correlation(1),
	combout => \LessThan2~7_combout\);

-- Location: LABCELL_X83_Y3_N24
\LessThan2~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~9_combout\ = ( correlation(3) & ( (last_correlation(2) & (last_correlation(3) & !correlation(2))) ) ) # ( !correlation(3) & ( ((last_correlation(2) & !correlation(2))) # (last_correlation(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111001101110011011100110111001100010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_correlation(2),
	datab => ALT_INV_last_correlation(3),
	datac => ALT_INV_correlation(2),
	dataf => ALT_INV_correlation(3),
	combout => \LessThan2~9_combout\);

-- Location: LABCELL_X83_Y3_N51
\LessThan2~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~11_combout\ = ( \LessThan2~7_combout\ & ( \LessThan2~9_combout\ & ( (\LessThan2~10_combout\ & (\LessThan2~6_combout\ & \LessThan2~5_combout\)) ) ) ) # ( !\LessThan2~7_combout\ & ( \LessThan2~9_combout\ & ( (\LessThan2~10_combout\ & 
-- (\LessThan2~6_combout\ & \LessThan2~5_combout\)) ) ) ) # ( \LessThan2~7_combout\ & ( !\LessThan2~9_combout\ & ( (\LessThan2~8_combout\ & (\LessThan2~10_combout\ & (\LessThan2~6_combout\ & \LessThan2~5_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~8_combout\,
	datab => \ALT_INV_LessThan2~10_combout\,
	datac => \ALT_INV_LessThan2~6_combout\,
	datad => \ALT_INV_LessThan2~5_combout\,
	datae => \ALT_INV_LessThan2~7_combout\,
	dataf => \ALT_INV_LessThan2~9_combout\,
	combout => \LessThan2~11_combout\);

-- Location: LABCELL_X83_Y3_N39
\LessThan2~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~12_combout\ = ( last_correlation(6) & ( (!last_correlation(7) & (!correlation(7) & !correlation(6))) # (last_correlation(7) & ((!correlation(7)) # (!correlation(6)))) ) ) # ( !last_correlation(6) & ( (last_correlation(7) & !correlation(7)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110101010100001111010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_correlation(7),
	datac => ALT_INV_correlation(7),
	datad => ALT_INV_correlation(6),
	dataf => ALT_INV_last_correlation(6),
	combout => \LessThan2~12_combout\);

-- Location: MLABCELL_X82_Y3_N9
\LessThan2~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~13_combout\ = ( correlation(4) & ( (!correlation(5) & last_correlation(5)) ) ) # ( !correlation(4) & ( (!correlation(5) & ((last_correlation(4)) # (last_correlation(5)))) # (correlation(5) & (last_correlation(5) & last_correlation(4))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101010101111000010101010111100001010000010100000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_correlation(5),
	datac => ALT_INV_last_correlation(5),
	datad => ALT_INV_last_correlation(4),
	dataf => ALT_INV_correlation(4),
	combout => \LessThan2~13_combout\);

-- Location: MLABCELL_X84_Y3_N18
\LessThan2~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~14_combout\ = ( last_correlation(8) & ( (!correlation(8) & ((!correlation(9)) # (last_correlation(9)))) # (correlation(8) & (last_correlation(9) & !correlation(9))) ) ) # ( !last_correlation(8) & ( (last_correlation(9) & !correlation(9)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000010101111000010101010111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_correlation(8),
	datac => ALT_INV_last_correlation(9),
	datad => ALT_INV_correlation(9),
	dataf => ALT_INV_last_correlation(8),
	combout => \LessThan2~14_combout\);

-- Location: LABCELL_X83_Y3_N57
\LessThan2~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~15_combout\ = ( \LessThan2~5_combout\ & ( !\LessThan2~14_combout\ & ( (!\LessThan2~12_combout\ & ((!\LessThan2~13_combout\) # (!\LessThan2~6_combout\))) ) ) ) # ( !\LessThan2~5_combout\ & ( !\LessThan2~14_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111110011001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan2~12_combout\,
	datac => \ALT_INV_LessThan2~13_combout\,
	datad => \ALT_INV_LessThan2~6_combout\,
	datae => \ALT_INV_LessThan2~5_combout\,
	dataf => \ALT_INV_LessThan2~14_combout\,
	combout => \LessThan2~15_combout\);

-- Location: IOIBUF_X89_Y4_N61
\recv.data[18]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(18),
	o => \recv.data[18]~input_o\);

-- Location: FF_X84_Y3_N38
\correlation[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[18]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(18));

-- Location: FF_X84_Y3_N59
\last_correlation[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(18),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(18));

-- Location: IOIBUF_X89_Y6_N21
\recv.data[19]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(19),
	o => \recv.data[19]~input_o\);

-- Location: FF_X84_Y3_N23
\correlation[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[19]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(19));

-- Location: FF_X84_Y3_N53
\last_correlation[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(19),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(19));

-- Location: MLABCELL_X84_Y3_N9
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( correlation(19) & ( last_correlation(19) & ( !last_correlation(18) $ (correlation(18)) ) ) ) # ( !correlation(19) & ( !last_correlation(19) & ( !last_correlation(18) $ (correlation(18)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111000000000000000000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_last_correlation(18),
	datad => ALT_INV_correlation(18),
	datae => ALT_INV_correlation(19),
	dataf => ALT_INV_last_correlation(19),
	combout => \LessThan0~1_combout\);

-- Location: IOIBUF_X84_Y0_N1
\recv.data[14]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(14),
	o => \recv.data[14]~input_o\);

-- Location: FF_X83_Y3_N23
\correlation[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[14]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(14));

-- Location: FF_X83_Y3_N38
\last_correlation[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(14),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(14));

-- Location: IOIBUF_X86_Y0_N52
\recv.data[15]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(15),
	o => \recv.data[15]~input_o\);

-- Location: FF_X83_Y3_N26
\correlation[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[15]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(15));

-- Location: FF_X83_Y3_N11
\last_correlation[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(15),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(15));

-- Location: LABCELL_X83_Y3_N36
\LessThan0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = ( last_correlation(15) & ( (correlation(15) & (!last_correlation(14) $ (correlation(14)))) ) ) # ( !last_correlation(15) & ( (!correlation(15) & (!last_correlation(14) $ (correlation(14)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000110000110000000011000000001100000000110000110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_last_correlation(14),
	datac => ALT_INV_correlation(15),
	datad => ALT_INV_correlation(14),
	dataf => ALT_INV_last_correlation(15),
	combout => \LessThan0~3_combout\);

-- Location: IOIBUF_X89_Y6_N55
\recv.data[16]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(16),
	o => \recv.data[16]~input_o\);

-- Location: FF_X84_Y3_N41
\correlation[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[16]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(16));

-- Location: IOIBUF_X89_Y4_N78
\recv.data[17]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(17),
	o => \recv.data[17]~input_o\);

-- Location: FF_X84_Y3_N11
\correlation[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[17]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(17));

-- Location: FF_X84_Y3_N2
\last_correlation[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(17),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(17));

-- Location: FF_X85_Y3_N53
\last_correlation[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(16),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(16));

-- Location: MLABCELL_X84_Y3_N33
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( last_correlation(17) & ( last_correlation(16) & ( (correlation(16) & correlation(17)) ) ) ) # ( !last_correlation(17) & ( last_correlation(16) & ( (correlation(16) & !correlation(17)) ) ) ) # ( last_correlation(17) & ( 
-- !last_correlation(16) & ( (!correlation(16) & correlation(17)) ) ) ) # ( !last_correlation(17) & ( !last_correlation(16) & ( (!correlation(16) & !correlation(17)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000011000000000011000000110000110000001100000000001100000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_correlation(16),
	datac => ALT_INV_correlation(17),
	datae => ALT_INV_last_correlation(17),
	dataf => ALT_INV_last_correlation(16),
	combout => \LessThan0~2_combout\);

-- Location: IOIBUF_X89_Y4_N44
\recv.data[20]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(20),
	o => \recv.data[20]~input_o\);

-- Location: FF_X84_Y3_N14
\correlation[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[20]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(20));

-- Location: FF_X84_Y3_N8
\last_correlation[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(20),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(20));

-- Location: IOIBUF_X89_Y6_N38
\recv.data[21]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(21),
	o => \recv.data[21]~input_o\);

-- Location: FF_X84_Y3_N32
\correlation[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[21]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(21));

-- Location: FF_X84_Y3_N5
\last_correlation[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(21),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(21));

-- Location: MLABCELL_X84_Y3_N42
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( correlation(20) & ( (last_correlation(20) & (!correlation(21) $ (last_correlation(21)))) ) ) # ( !correlation(20) & ( (!last_correlation(20) & (!correlation(21) $ (last_correlation(21)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100000000001100110000000000110000110000000000110011000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_last_correlation(20),
	datac => ALT_INV_correlation(21),
	datad => ALT_INV_last_correlation(21),
	dataf => ALT_INV_correlation(20),
	combout => \LessThan0~0_combout\);

-- Location: IOIBUF_X80_Y0_N18
\recv.data[10]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(10),
	o => \recv.data[10]~input_o\);

-- Location: FF_X81_Y3_N11
\correlation[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[10]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(10));

-- Location: FF_X81_Y3_N38
\last_correlation[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(10),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(10));

-- Location: IOIBUF_X78_Y0_N35
\recv.data[11]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(11),
	o => \recv.data[11]~input_o\);

-- Location: LABCELL_X81_Y3_N42
\correlation[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[11]~feeder_combout\ = ( \recv.data[11]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_recv.data[11]~input_o\,
	combout => \correlation[11]~feeder_combout\);

-- Location: FF_X81_Y3_N44
\correlation[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[11]~feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(11));

-- Location: LABCELL_X81_Y3_N0
\last_correlation[11]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \last_correlation[11]~feeder_combout\ = ( correlation(11) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_correlation(11),
	combout => \last_correlation[11]~feeder_combout\);

-- Location: FF_X81_Y3_N2
\last_correlation[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \last_correlation[11]~feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(11));

-- Location: LABCELL_X81_Y3_N54
\LessThan2~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~16_combout\ = ( last_correlation(11) & ( correlation(11) & ( !last_correlation(10) $ (correlation(10)) ) ) ) # ( !last_correlation(11) & ( !correlation(11) & ( !last_correlation(10) $ (correlation(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000001111000000000000000000000000000000001111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_last_correlation(10),
	datad => ALT_INV_correlation(10),
	datae => ALT_INV_last_correlation(11),
	dataf => ALT_INV_correlation(11),
	combout => \LessThan2~16_combout\);

-- Location: IOIBUF_X89_Y4_N95
\recv.data[12]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(12),
	o => \recv.data[12]~input_o\);

-- Location: FF_X84_Y3_N47
\correlation[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \recv.data[12]~input_o\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(12));

-- Location: FF_X84_Y3_N56
\last_correlation[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(12),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(12));

-- Location: IOIBUF_X88_Y0_N2
\recv.data[13]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.data\(13),
	o => \recv.data[13]~input_o\);

-- Location: LABCELL_X85_Y3_N18
\correlation[13]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \correlation[13]~feeder_combout\ = ( \recv.data[13]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_recv.data[13]~input_o\,
	combout => \correlation[13]~feeder_combout\);

-- Location: FF_X85_Y3_N20
\correlation[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \correlation[13]~feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => correlation(13));

-- Location: FF_X84_Y3_N44
\last_correlation[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => correlation(13),
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => last_correlation(13));

-- Location: MLABCELL_X84_Y3_N45
\LessThan0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = ( correlation(13) & ( (last_correlation(13) & (!last_correlation(12) $ (correlation(12)))) ) ) # ( !correlation(13) & ( (!last_correlation(13) & (!last_correlation(12) $ (correlation(12)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000001010000101000000101000000001010000001010000101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_correlation(12),
	datac => ALT_INV_last_correlation(13),
	datad => ALT_INV_correlation(12),
	dataf => ALT_INV_correlation(13),
	combout => \LessThan0~4_combout\);

-- Location: LABCELL_X83_Y3_N3
\LessThan2~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~17_combout\ = ( \LessThan2~16_combout\ & ( \LessThan0~4_combout\ & ( (\LessThan0~1_combout\ & (\LessThan0~3_combout\ & (\LessThan0~2_combout\ & \LessThan0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => \ALT_INV_LessThan2~16_combout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan2~17_combout\);

-- Location: MLABCELL_X84_Y3_N54
\LessThan2~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~23_combout\ = ( !correlation(12) & ( correlation(13) & ( (last_correlation(12) & last_correlation(13)) ) ) ) # ( correlation(12) & ( !correlation(13) & ( last_correlation(13) ) ) ) # ( !correlation(12) & ( !correlation(13) & ( 
-- (last_correlation(13)) # (last_correlation(12)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111111111000000001111111100000000000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_last_correlation(12),
	datad => ALT_INV_last_correlation(13),
	datae => ALT_INV_correlation(12),
	dataf => ALT_INV_correlation(13),
	combout => \LessThan2~23_combout\);

-- Location: LABCELL_X83_Y3_N9
\LessThan2~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~22_combout\ = ( last_correlation(14) & ( (!correlation(14) & ((!correlation(15)) # (last_correlation(15)))) # (correlation(14) & (last_correlation(15) & !correlation(15))) ) ) # ( !last_correlation(14) & ( (last_correlation(15) & 
-- !correlation(15)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000010101111000010101010111100001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_correlation(14),
	datac => ALT_INV_last_correlation(15),
	datad => ALT_INV_correlation(15),
	dataf => ALT_INV_last_correlation(14),
	combout => \LessThan2~22_combout\);

-- Location: LABCELL_X83_Y3_N42
\LessThan2~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~24_combout\ = ( \LessThan2~23_combout\ & ( \LessThan2~22_combout\ & ( (\LessThan0~1_combout\ & (\LessThan0~0_combout\ & \LessThan0~2_combout\)) ) ) ) # ( !\LessThan2~23_combout\ & ( \LessThan2~22_combout\ & ( (\LessThan0~1_combout\ & 
-- (\LessThan0~0_combout\ & \LessThan0~2_combout\)) ) ) ) # ( \LessThan2~23_combout\ & ( !\LessThan2~22_combout\ & ( (\LessThan0~1_combout\ & (\LessThan0~3_combout\ & (\LessThan0~0_combout\ & \LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan0~2_combout\,
	datae => \ALT_INV_LessThan2~23_combout\,
	dataf => \ALT_INV_LessThan2~22_combout\,
	combout => \LessThan2~24_combout\);

-- Location: LABCELL_X81_Y3_N15
\LessThan2~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~3_combout\ = ( last_correlation(11) & ( correlation(11) & ( (!correlation(10) & last_correlation(10)) ) ) ) # ( last_correlation(11) & ( !correlation(11) ) ) # ( !last_correlation(11) & ( !correlation(11) & ( (!correlation(10) & 
-- last_correlation(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000111111111111111100000000000000000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_correlation(10),
	datad => ALT_INV_last_correlation(10),
	datae => ALT_INV_last_correlation(11),
	dataf => ALT_INV_correlation(11),
	combout => \LessThan2~3_combout\);

-- Location: LABCELL_X83_Y3_N0
\LessThan2~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~4_combout\ = ( \LessThan2~3_combout\ & ( \LessThan0~4_combout\ & ( (\LessThan0~1_combout\ & (\LessThan0~3_combout\ & (\LessThan0~0_combout\ & \LessThan0~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan0~2_combout\,
	datae => \ALT_INV_LessThan2~3_combout\,
	dataf => \ALT_INV_LessThan0~4_combout\,
	combout => \LessThan2~4_combout\);

-- Location: MLABCELL_X84_Y3_N3
\LessThan2~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~20_combout\ = ( correlation(20) & ( (last_correlation(21) & !correlation(21)) ) ) # ( !correlation(20) & ( (!last_correlation(21) & (last_correlation(20) & !correlation(21))) # (last_correlation(21) & ((!correlation(21)) # 
-- (last_correlation(20)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111100000101010111110000010101010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_correlation(21),
	datac => ALT_INV_last_correlation(20),
	datad => ALT_INV_correlation(21),
	dataf => ALT_INV_correlation(20),
	combout => \LessThan2~20_combout\);

-- Location: MLABCELL_X84_Y3_N0
\LessThan2~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~19_combout\ = ( last_correlation(16) & ( (!correlation(16) & ((!correlation(17)) # (last_correlation(17)))) # (correlation(16) & (last_correlation(17) & !correlation(17))) ) ) # ( !last_correlation(16) & ( (last_correlation(17) & 
-- !correlation(17)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000011001111000011001100111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_correlation(16),
	datac => ALT_INV_last_correlation(17),
	datad => ALT_INV_correlation(17),
	dataf => ALT_INV_last_correlation(16),
	combout => \LessThan2~19_combout\);

-- Location: MLABCELL_X84_Y3_N51
\LessThan2~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~18_combout\ = ( correlation(18) & ( (last_correlation(19) & !correlation(19)) ) ) # ( !correlation(18) & ( (!last_correlation(18) & (last_correlation(19) & !correlation(19))) # (last_correlation(18) & ((!correlation(19)) # 
-- (last_correlation(19)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100000011001111110000001100001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_last_correlation(18),
	datac => ALT_INV_last_correlation(19),
	datad => ALT_INV_correlation(19),
	dataf => ALT_INV_correlation(18),
	combout => \LessThan2~18_combout\);

-- Location: MLABCELL_X84_Y3_N24
\LessThan2~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~21_combout\ = ( \LessThan2~18_combout\ & ( (!\LessThan0~0_combout\ & !\LessThan2~20_combout\) ) ) # ( !\LessThan2~18_combout\ & ( (!\LessThan2~20_combout\ & ((!\LessThan0~1_combout\) # ((!\LessThan0~0_combout\) # (!\LessThan2~19_combout\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001110000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_LessThan2~20_combout\,
	datad => \ALT_INV_LessThan2~19_combout\,
	dataf => \ALT_INV_LessThan2~18_combout\,
	combout => \LessThan2~21_combout\);

-- Location: LABCELL_X83_Y3_N30
\LessThan2~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~25_combout\ = ( !\LessThan2~4_combout\ & ( \LessThan2~21_combout\ & ( (!\LessThan2~24_combout\ & ((!\LessThan2~17_combout\) # ((!\LessThan2~11_combout\ & \LessThan2~15_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110010000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~11_combout\,
	datab => \ALT_INV_LessThan2~15_combout\,
	datac => \ALT_INV_LessThan2~17_combout\,
	datad => \ALT_INV_LessThan2~24_combout\,
	datae => \ALT_INV_LessThan2~4_combout\,
	dataf => \ALT_INV_LessThan2~21_combout\,
	combout => \LessThan2~25_combout\);

-- Location: MLABCELL_X82_Y3_N24
\LessThan2~30\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan2~30_combout\ = ( \LessThan2~25_combout\ & ( \LessThan2~29_combout\ ) ) # ( !\LessThan2~25_combout\ & ( (\LessThan2~29_combout\ & !\LessThan2~2_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan2~29_combout\,
	datad => \ALT_INV_LessThan2~2_combout\,
	dataf => \ALT_INV_LessThan2~25_combout\,
	combout => \LessThan2~30_combout\);

-- Location: LABCELL_X80_Y3_N54
\LessThan0~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~22_combout\ = ( last_correlation(27) & ( correlation(26) & ( (correlation(27) & ((!last_correlation(26)) # ((correlation(25) & !last_correlation(25))))) ) ) ) # ( !last_correlation(27) & ( correlation(26) & ( ((!last_correlation(26)) # 
-- ((correlation(25) & !last_correlation(25)))) # (correlation(27)) ) ) ) # ( last_correlation(27) & ( !correlation(26) & ( (correlation(27) & (correlation(25) & (!last_correlation(26) & !last_correlation(25)))) ) ) ) # ( !last_correlation(27) & ( 
-- !correlation(26) & ( ((correlation(25) & (!last_correlation(26) & !last_correlation(25)))) # (correlation(27)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111010101010101000100000000000011110111111101010101000101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_correlation(27),
	datab => ALT_INV_correlation(25),
	datac => ALT_INV_last_correlation(26),
	datad => ALT_INV_last_correlation(25),
	datae => ALT_INV_last_correlation(27),
	dataf => ALT_INV_correlation(26),
	combout => \LessThan0~22_combout\);

-- Location: LABCELL_X80_Y3_N45
\LessThan0~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~23_combout\ = ( !\LessThan0~22_combout\ & ( last_correlation(24) & ( ((!\LessThan2~0_combout\) # ((!correlation(23)) # (!correlation(24)))) # (last_correlation(23)) ) ) ) # ( !\LessThan0~22_combout\ & ( !last_correlation(24) & ( 
-- (!\LessThan2~0_combout\) # ((!correlation(24) & ((!correlation(23)) # (last_correlation(23))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111001100000000000000000011111111111111010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_correlation(23),
	datab => \ALT_INV_LessThan2~0_combout\,
	datac => ALT_INV_correlation(23),
	datad => ALT_INV_correlation(24),
	datae => \ALT_INV_LessThan0~22_combout\,
	dataf => ALT_INV_last_correlation(24),
	combout => \LessThan0~23_combout\);

-- Location: LABCELL_X81_Y3_N30
\LessThan0~24\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~24_combout\ = ( correlation(22) & ( \LessThan0~23_combout\ & ( (!\LessThan2~26_combout\) # (last_correlation(22)) ) ) ) # ( !correlation(22) & ( \LessThan0~23_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_last_correlation(22),
	datad => \ALT_INV_LessThan2~26_combout\,
	datae => ALT_INV_correlation(22),
	dataf => \ALT_INV_LessThan0~23_combout\,
	combout => \LessThan0~24_combout\);

-- Location: LABCELL_X85_Y3_N54
\LessThan0~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~19_combout\ = ( last_correlation(12) & ( correlation(12) & ( (correlation(13) & !last_correlation(13)) ) ) ) # ( !last_correlation(12) & ( correlation(12) & ( (!last_correlation(13)) # (correlation(13)) ) ) ) # ( last_correlation(12) & ( 
-- !correlation(12) & ( (correlation(13) & !last_correlation(13)) ) ) ) # ( !last_correlation(12) & ( !correlation(12) & ( (correlation(13) & !last_correlation(13)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000011110101111101010101000001010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_correlation(13),
	datac => ALT_INV_last_correlation(13),
	datae => ALT_INV_last_correlation(12),
	dataf => ALT_INV_correlation(12),
	combout => \LessThan0~19_combout\);

-- Location: MLABCELL_X84_Y3_N39
\LessThan0~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~18_combout\ = ( correlation(15) & ( correlation(14) & ( (!last_correlation(15)) # (!last_correlation(14)) ) ) ) # ( !correlation(15) & ( correlation(14) & ( (!last_correlation(15) & !last_correlation(14)) ) ) ) # ( correlation(15) & ( 
-- !correlation(14) & ( !last_correlation(15) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000011110000000000001111111111110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_last_correlation(15),
	datad => ALT_INV_last_correlation(14),
	datae => ALT_INV_correlation(15),
	dataf => ALT_INV_correlation(14),
	combout => \LessThan0~18_combout\);

-- Location: LABCELL_X83_Y3_N45
\LessThan0~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~20_combout\ = ( \LessThan0~19_combout\ & ( \LessThan0~18_combout\ & ( (\LessThan0~1_combout\ & (\LessThan0~2_combout\ & \LessThan0~0_combout\)) ) ) ) # ( !\LessThan0~19_combout\ & ( \LessThan0~18_combout\ & ( (\LessThan0~1_combout\ & 
-- (\LessThan0~2_combout\ & \LessThan0~0_combout\)) ) ) ) # ( \LessThan0~19_combout\ & ( !\LessThan0~18_combout\ & ( (\LessThan0~1_combout\ & (\LessThan0~3_combout\ & (\LessThan0~2_combout\ & \LessThan0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000001010000000000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_LessThan0~0_combout\,
	datae => \ALT_INV_LessThan0~19_combout\,
	dataf => \ALT_INV_LessThan0~18_combout\,
	combout => \LessThan0~20_combout\);

-- Location: MLABCELL_X82_Y3_N27
\LessThan0~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~11_combout\ = ( correlation(4) & ( (!last_correlation(4) & ((!last_correlation(5)) # (correlation(5)))) # (last_correlation(4) & (!last_correlation(5) & correlation(5))) ) ) # ( !correlation(4) & ( (!last_correlation(5) & correlation(5)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010100000111110101010000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_correlation(4),
	datac => ALT_INV_last_correlation(5),
	datad => ALT_INV_correlation(5),
	dataf => ALT_INV_correlation(4),
	combout => \LessThan0~11_combout\);

-- Location: LABCELL_X81_Y3_N18
\LessThan0~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = ( last_correlation(7) & ( correlation(6) & ( (correlation(7) & !last_correlation(6)) ) ) ) # ( !last_correlation(7) & ( correlation(6) & ( (!last_correlation(6)) # (correlation(7)) ) ) ) # ( !last_correlation(7) & ( 
-- !correlation(6) & ( correlation(7) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000000000000011111111000011110000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_correlation(7),
	datad => ALT_INV_last_correlation(6),
	datae => ALT_INV_last_correlation(7),
	dataf => ALT_INV_correlation(6),
	combout => \LessThan0~10_combout\);

-- Location: MLABCELL_X84_Y3_N15
\LessThan0~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~12_combout\ = ( last_correlation(8) & ( (!last_correlation(9) & correlation(9)) ) ) # ( !last_correlation(8) & ( (!correlation(8) & (!last_correlation(9) & correlation(9))) # (correlation(8) & ((!last_correlation(9)) # (correlation(9)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110101010100001111010100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_correlation(8),
	datac => ALT_INV_last_correlation(9),
	datad => ALT_INV_correlation(9),
	dataf => ALT_INV_last_correlation(8),
	combout => \LessThan0~12_combout\);

-- Location: MLABCELL_X82_Y3_N39
\LessThan0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~13_combout\ = ( \LessThan2~6_combout\ & ( !\LessThan0~12_combout\ & ( (!\LessThan2~5_combout\) # ((!\LessThan0~11_combout\ & !\LessThan0~10_combout\)) ) ) ) # ( !\LessThan2~6_combout\ & ( !\LessThan0~12_combout\ & ( (!\LessThan0~10_combout\) # 
-- (!\LessThan2~5_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111110000111111111100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_LessThan0~11_combout\,
	datac => \ALT_INV_LessThan0~10_combout\,
	datad => \ALT_INV_LessThan2~5_combout\,
	datae => \ALT_INV_LessThan2~6_combout\,
	dataf => \ALT_INV_LessThan0~12_combout\,
	combout => \LessThan0~13_combout\);

-- Location: MLABCELL_X82_Y3_N21
\LessThan0~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = ( correlation(0) & ( (!last_correlation(0) & ((!last_correlation(1)) # (correlation(1)))) # (last_correlation(0) & (!last_correlation(1) & correlation(1))) ) ) # ( !correlation(0) & ( (!last_correlation(1) & correlation(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000010100000111110101010000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_correlation(0),
	datac => ALT_INV_last_correlation(1),
	datad => ALT_INV_correlation(1),
	dataf => ALT_INV_correlation(0),
	combout => \LessThan0~7_combout\);

-- Location: MLABCELL_X82_Y3_N54
\LessThan0~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = ( correlation(2) & ( (!last_correlation(3) & ((!last_correlation(2)) # (correlation(3)))) # (last_correlation(3) & (!last_correlation(2) & correlation(3))) ) ) # ( !correlation(2) & ( (!last_correlation(3) & correlation(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000001010000010100000101010001110100011101000111010001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_correlation(3),
	datab => ALT_INV_last_correlation(2),
	datac => ALT_INV_correlation(3),
	dataf => ALT_INV_correlation(2),
	combout => \LessThan0~8_combout\);

-- Location: LABCELL_X83_Y3_N48
\LessThan0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = ( \LessThan0~7_combout\ & ( \LessThan0~8_combout\ & ( (\LessThan2~10_combout\ & (\LessThan2~5_combout\ & \LessThan2~6_combout\)) ) ) ) # ( !\LessThan0~7_combout\ & ( \LessThan0~8_combout\ & ( (\LessThan2~10_combout\ & 
-- (\LessThan2~5_combout\ & \LessThan2~6_combout\)) ) ) ) # ( \LessThan0~7_combout\ & ( !\LessThan0~8_combout\ & ( (\LessThan2~8_combout\ & (\LessThan2~10_combout\ & (\LessThan2~5_combout\ & \LessThan2~6_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000110000000000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~8_combout\,
	datab => \ALT_INV_LessThan2~10_combout\,
	datac => \ALT_INV_LessThan2~5_combout\,
	datad => \ALT_INV_LessThan2~6_combout\,
	datae => \ALT_INV_LessThan0~7_combout\,
	dataf => \ALT_INV_LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: MLABCELL_X84_Y3_N12
\LessThan0~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~16_combout\ = ( correlation(21) & ( (!last_correlation(21)) # ((!last_correlation(20) & correlation(20))) ) ) # ( !correlation(21) & ( (!last_correlation(20) & (!last_correlation(21) & correlation(20))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000011110000111111001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_last_correlation(20),
	datac => ALT_INV_last_correlation(21),
	datad => ALT_INV_correlation(20),
	dataf => ALT_INV_correlation(21),
	combout => \LessThan0~16_combout\);

-- Location: LABCELL_X85_Y3_N30
\LessThan0~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~15_combout\ = ( correlation(16) & ( last_correlation(17) & ( (!last_correlation(16) & correlation(17)) ) ) ) # ( correlation(16) & ( !last_correlation(17) & ( (!last_correlation(16)) # (correlation(17)) ) ) ) # ( !correlation(16) & ( 
-- !last_correlation(17) & ( correlation(17) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111101011111010111100000000000000000000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_last_correlation(16),
	datac => ALT_INV_correlation(17),
	datae => ALT_INV_correlation(16),
	dataf => ALT_INV_last_correlation(17),
	combout => \LessThan0~15_combout\);

-- Location: MLABCELL_X84_Y3_N21
\LessThan0~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = ( correlation(18) & ( (!last_correlation(18) & ((!last_correlation(19)) # (correlation(19)))) # (last_correlation(18) & (!last_correlation(19) & correlation(19))) ) ) # ( !correlation(18) & ( (!last_correlation(19) & 
-- correlation(19)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011000000111111001100000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_last_correlation(18),
	datac => ALT_INV_last_correlation(19),
	datad => ALT_INV_correlation(19),
	dataf => ALT_INV_correlation(18),
	combout => \LessThan0~14_combout\);

-- Location: MLABCELL_X84_Y3_N27
\LessThan0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~17_combout\ = ( \LessThan0~14_combout\ & ( (!\LessThan0~0_combout\ & !\LessThan0~16_combout\) ) ) # ( !\LessThan0~14_combout\ & ( (!\LessThan0~16_combout\ & ((!\LessThan0~1_combout\) # ((!\LessThan0~0_combout\) # (!\LessThan0~15_combout\)))) ) 
-- )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011100000111100001110000011000000110000001100000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~1_combout\,
	datab => \ALT_INV_LessThan0~0_combout\,
	datac => \ALT_INV_LessThan0~16_combout\,
	datad => \ALT_INV_LessThan0~15_combout\,
	dataf => \ALT_INV_LessThan0~14_combout\,
	combout => \LessThan0~17_combout\);

-- Location: LABCELL_X81_Y3_N24
\LessThan0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ( last_correlation(11) & ( correlation(11) & ( (!last_correlation(10) & correlation(10)) ) ) ) # ( !last_correlation(11) & ( correlation(11) ) ) # ( !last_correlation(11) & ( !correlation(11) & ( (!last_correlation(10) & 
-- correlation(10)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000000000000011111111111111110000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_last_correlation(10),
	datad => ALT_INV_correlation(10),
	datae => ALT_INV_last_correlation(11),
	dataf => ALT_INV_correlation(11),
	combout => \LessThan0~5_combout\);

-- Location: LABCELL_X83_Y3_N15
\LessThan0~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = ( \LessThan0~1_combout\ & ( \LessThan0~0_combout\ & ( (\LessThan0~5_combout\ & (\LessThan0~3_combout\ & (\LessThan0~2_combout\ & \LessThan0~4_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~5_combout\,
	datab => \ALT_INV_LessThan0~3_combout\,
	datac => \ALT_INV_LessThan0~2_combout\,
	datad => \ALT_INV_LessThan0~4_combout\,
	datae => \ALT_INV_LessThan0~1_combout\,
	dataf => \ALT_INV_LessThan0~0_combout\,
	combout => \LessThan0~6_combout\);

-- Location: MLABCELL_X82_Y3_N51
\LessThan0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~21_combout\ = ( \LessThan0~17_combout\ & ( !\LessThan0~6_combout\ & ( (!\LessThan0~20_combout\ & ((!\LessThan2~17_combout\) # ((\LessThan0~13_combout\ & !\LessThan0~9_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010100010000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~20_combout\,
	datab => \ALT_INV_LessThan0~13_combout\,
	datac => \ALT_INV_LessThan0~9_combout\,
	datad => \ALT_INV_LessThan2~17_combout\,
	datae => \ALT_INV_LessThan0~17_combout\,
	dataf => \ALT_INV_LessThan0~6_combout\,
	combout => \LessThan0~21_combout\);

-- Location: MLABCELL_X82_Y3_N57
\LessThan0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~25_combout\ = ( \LessThan0~21_combout\ & ( \LessThan0~24_combout\ ) ) # ( !\LessThan0~21_combout\ & ( (!\LessThan2~2_combout\ & \LessThan0~24_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_LessThan2~2_combout\,
	datad => \ALT_INV_LessThan0~24_combout\,
	dataf => \ALT_INV_LessThan0~21_combout\,
	combout => \LessThan0~25_combout\);

-- Location: LABCELL_X81_Y3_N48
\next_state.idle~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state.idle~0_combout\ = ( \next_state.idle~q\ & ( \next_state~8_combout\ ) ) # ( \next_state.idle~q\ & ( !\next_state~8_combout\ ) ) # ( !\next_state.idle~q\ & ( !\next_state~8_combout\ & ( (!\recv.data[29]~input_o\ & (\recv.data[31]~input_o\ & 
-- (!\recv.data[30]~input_o\ & !\recv.data[28]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000111111111111111100000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[29]~input_o\,
	datab => \ALT_INV_recv.data[31]~input_o\,
	datac => \ALT_INV_recv.data[30]~input_o\,
	datad => \ALT_INV_recv.data[28]~input_o\,
	datae => \ALT_INV_next_state.idle~q\,
	dataf => \ALT_INV_next_state~8_combout\,
	combout => \next_state.idle~0_combout\);

-- Location: FF_X81_Y3_N50
\next_state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \next_state.idle~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.idle~q\);

-- Location: LABCELL_X81_Y3_N3
\state.idle~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \state.idle~feeder_combout\ = ( \next_state.idle~q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_next_state.idle~q\,
	combout => \state.idle~feeder_combout\);

-- Location: FF_X81_Y3_N5
\state.idle\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \state.idle~feeder_combout\,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.idle~q\);

-- Location: MLABCELL_X82_Y3_N42
\next_state~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state~8_combout\ = ( \LessThan0~24_combout\ & ( \LessThan2~25_combout\ & ( (!\state.idle~q\ & (\LessThan2~2_combout\ & (!\LessThan0~21_combout\ & !\LessThan2~29_combout\))) ) ) ) # ( !\LessThan0~24_combout\ & ( \LessThan2~25_combout\ & ( 
-- (!\state.idle~q\ & !\LessThan2~29_combout\) ) ) ) # ( \LessThan0~24_combout\ & ( !\LessThan2~25_combout\ & ( (!\state.idle~q\ & (\LessThan2~2_combout\ & !\LessThan0~21_combout\)) ) ) ) # ( !\LessThan0~24_combout\ & ( !\LessThan2~25_combout\ & ( 
-- (!\state.idle~q\ & ((!\LessThan2~29_combout\) # (\LessThan2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000100010001000000010000010101010000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.idle~q\,
	datab => \ALT_INV_LessThan2~2_combout\,
	datac => \ALT_INV_LessThan0~21_combout\,
	datad => \ALT_INV_LessThan2~29_combout\,
	datae => \ALT_INV_LessThan0~24_combout\,
	dataf => \ALT_INV_LessThan2~25_combout\,
	combout => \next_state~8_combout\);

-- Location: MLABCELL_X82_Y3_N12
\next_state~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state~9_combout\ = ( !\recv.data[29]~input_o\ & ( !\next_state~8_combout\ & ( (!\recv.data[30]~input_o\ & (\recv.data[31]~input_o\ & !\recv.data[28]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_recv.data[30]~input_o\,
	datab => \ALT_INV_recv.data[31]~input_o\,
	datac => \ALT_INV_recv.data[28]~input_o\,
	datae => \ALT_INV_recv.data[29]~input_o\,
	dataf => \ALT_INV_next_state~8_combout\,
	combout => \next_state~9_combout\);

-- Location: MLABCELL_X82_Y3_N0
\next_state~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state~11_combout\ = ( \next_state.negative_slope~q\ & ( \next_state~9_combout\ & ( (!\state.negative_slope~q\ & (((!\LessThan2~30_combout\)))) # (\state.negative_slope~q\ & (((\LessThan0~25_combout\)) # (\state.positive_slope~q\))) ) ) ) # ( 
-- !\next_state.negative_slope~q\ & ( \next_state~9_combout\ & ( (!\state.negative_slope~q\ & (((!\LessThan2~30_combout\)))) # (\state.negative_slope~q\ & (!\state.positive_slope~q\ & ((\LessThan0~25_combout\)))) ) ) ) # ( \next_state.negative_slope~q\ & ( 
-- !\next_state~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111110100000111001001011000111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.negative_slope~q\,
	datab => \ALT_INV_state.positive_slope~q\,
	datac => \ALT_INV_LessThan2~30_combout\,
	datad => \ALT_INV_LessThan0~25_combout\,
	datae => \ALT_INV_next_state.negative_slope~q\,
	dataf => \ALT_INV_next_state~9_combout\,
	combout => \next_state~11_combout\);

-- Location: FF_X82_Y3_N2
\next_state.negative_slope\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \next_state~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.negative_slope~q\);

-- Location: FF_X81_Y3_N47
\state.negative_slope\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \next_state.negative_slope~q\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.negative_slope~q\);

-- Location: MLABCELL_X82_Y3_N30
\next_state~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \next_state~10_combout\ = ( \next_state.positive_slope~q\ & ( \next_state~9_combout\ & ( (!\state.negative_slope~q\ & (((\LessThan2~30_combout\)))) # (\state.negative_slope~q\ & ((!\LessThan0~25_combout\) # ((\state.positive_slope~q\)))) ) ) ) # ( 
-- !\next_state.positive_slope~q\ & ( \next_state~9_combout\ & ( (!\state.negative_slope~q\ & (((\LessThan2~30_combout\)))) # (\state.negative_slope~q\ & (!\LessThan0~25_combout\ & ((!\state.positive_slope~q\)))) ) ) ) # ( \next_state.positive_slope~q\ & ( 
-- !\next_state~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111101001110000010100100111001011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.negative_slope~q\,
	datab => \ALT_INV_LessThan0~25_combout\,
	datac => \ALT_INV_LessThan2~30_combout\,
	datad => \ALT_INV_state.positive_slope~q\,
	datae => \ALT_INV_next_state.positive_slope~q\,
	dataf => \ALT_INV_next_state~9_combout\,
	combout => \next_state~10_combout\);

-- Location: FF_X82_Y3_N31
\next_state.positive_slope\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \next_state~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \next_state.positive_slope~q\);

-- Location: FF_X83_Y3_N20
\state.positive_slope\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => \next_state.positive_slope~q\,
	sload => VCC,
	ena => \Equal0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.positive_slope~q\);

-- Location: LABCELL_X80_Y3_N30
\send.data[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.data[0]~1_combout\ = ( \LessThan2~25_combout\ & ( (!\LessThan2~29_combout\ & \state.positive_slope~q\) ) ) # ( !\LessThan2~25_combout\ & ( (\state.positive_slope~q\ & ((!\LessThan2~29_combout\) # (\LessThan2~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110101000000001111010100000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan2~2_combout\,
	datac => \ALT_INV_LessThan2~29_combout\,
	datad => \ALT_INV_state.positive_slope~q\,
	dataf => \ALT_INV_LessThan2~25_combout\,
	combout => \send.data[0]~1_combout\);

-- Location: LABCELL_X79_Y3_N54
\counter[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \counter[0]~0_combout\ = ( \LessThan2~29_combout\ & ( \LessThan2~25_combout\ & ( \Equal0~0_combout\ ) ) ) # ( !\LessThan2~29_combout\ & ( \LessThan2~25_combout\ & ( (\state.idle~q\ & \Equal0~0_combout\) ) ) ) # ( \LessThan2~29_combout\ & ( 
-- !\LessThan2~25_combout\ & ( (\Equal0~0_combout\ & ((!\LessThan2~2_combout\) # (\state.idle~q\))) ) ) ) # ( !\LessThan2~29_combout\ & ( !\LessThan2~25_combout\ & ( (\state.idle~q\ & \Equal0~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001001100010011000100010001000100010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_state.idle~q\,
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_LessThan2~2_combout\,
	datae => \ALT_INV_LessThan2~29_combout\,
	dataf => \ALT_INV_LessThan2~25_combout\,
	combout => \counter[0]~0_combout\);

-- Location: FF_X79_Y3_N2
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~1_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LABCELL_X85_Y3_N24
\send.data[0]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.data[0]~reg0feeder_combout\ = ( counter(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_counter(0),
	combout => \send.data[0]~reg0feeder_combout\);

-- Location: LABCELL_X83_Y3_N18
\send.data[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.data[0]~0_combout\ = ( \state.positive_slope~q\ & ( \LessThan2~25_combout\ & ( (\Equal0~0_combout\ & !\LessThan2~29_combout\) ) ) ) # ( \state.positive_slope~q\ & ( !\LessThan2~25_combout\ & ( (\Equal0~0_combout\ & ((!\LessThan2~29_combout\) # 
-- (\LessThan2~2_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100110000001100000000000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Equal0~0_combout\,
	datac => \ALT_INV_LessThan2~2_combout\,
	datad => \ALT_INV_LessThan2~29_combout\,
	datae => \ALT_INV_state.positive_slope~q\,
	dataf => \ALT_INV_LessThan2~25_combout\,
	combout => \send.data[0]~0_combout\);

-- Location: FF_X85_Y3_N25
\send.data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.data[0]~reg0feeder_combout\,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[0]~reg0_q\);

-- Location: LABCELL_X79_Y3_N3
\Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~5_sumout\ = SUM(( counter(1) ) + ( GND ) + ( \Add0~2\ ))
-- \Add0~6\ = CARRY(( counter(1) ) + ( GND ) + ( \Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(1),
	cin => \Add0~2\,
	sumout => \Add0~5_sumout\,
	cout => \Add0~6\);

-- Location: FF_X79_Y3_N5
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~5_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: FF_X85_Y3_N31
\send.data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => counter(1),
	sload => VCC,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[1]~reg0_q\);

-- Location: LABCELL_X79_Y3_N6
\Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~9_sumout\ = SUM(( counter(2) ) + ( GND ) + ( \Add0~6\ ))
-- \Add0~10\ = CARRY(( counter(2) ) + ( GND ) + ( \Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(2),
	cin => \Add0~6\,
	sumout => \Add0~9_sumout\,
	cout => \Add0~10\);

-- Location: FF_X79_Y3_N8
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~9_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: FF_X83_Y3_N32
\send.data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => counter(2),
	sload => VCC,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[2]~reg0_q\);

-- Location: LABCELL_X79_Y3_N9
\Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~13_sumout\ = SUM(( counter(3) ) + ( GND ) + ( \Add0~10\ ))
-- \Add0~14\ = CARRY(( counter(3) ) + ( GND ) + ( \Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(3),
	cin => \Add0~10\,
	sumout => \Add0~13_sumout\,
	cout => \Add0~14\);

-- Location: FF_X79_Y3_N11
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~13_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: FF_X81_Y3_N13
\send.data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => counter(3),
	sload => VCC,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[3]~reg0_q\);

-- Location: LABCELL_X79_Y3_N12
\Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~17_sumout\ = SUM(( counter(4) ) + ( GND ) + ( \Add0~14\ ))
-- \Add0~18\ = CARRY(( counter(4) ) + ( GND ) + ( \Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(4),
	cin => \Add0~14\,
	sumout => \Add0~17_sumout\,
	cout => \Add0~18\);

-- Location: FF_X79_Y3_N14
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~17_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: FF_X82_Y3_N40
\send.data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => counter(4),
	sload => VCC,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[4]~reg0_q\);

-- Location: LABCELL_X79_Y3_N15
\Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~21_sumout\ = SUM(( counter(5) ) + ( GND ) + ( \Add0~18\ ))
-- \Add0~22\ = CARRY(( counter(5) ) + ( GND ) + ( \Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(5),
	cin => \Add0~18\,
	sumout => \Add0~21_sumout\,
	cout => \Add0~22\);

-- Location: FF_X79_Y3_N17
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~21_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: FF_X85_Y3_N40
\send.data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => counter(5),
	sload => VCC,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[5]~reg0_q\);

-- Location: LABCELL_X79_Y3_N18
\Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~25_sumout\ = SUM(( counter(6) ) + ( GND ) + ( \Add0~22\ ))
-- \Add0~26\ = CARRY(( counter(6) ) + ( GND ) + ( \Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(6),
	cin => \Add0~22\,
	sumout => \Add0~25_sumout\,
	cout => \Add0~26\);

-- Location: FF_X79_Y3_N20
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~25_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: FF_X81_Y3_N22
\send.data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => counter(6),
	sload => VCC,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[6]~reg0_q\);

-- Location: LABCELL_X79_Y3_N21
\Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~29_sumout\ = SUM(( counter(7) ) + ( GND ) + ( \Add0~26\ ))
-- \Add0~30\ = CARRY(( counter(7) ) + ( GND ) + ( \Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(7),
	cin => \Add0~26\,
	sumout => \Add0~29_sumout\,
	cout => \Add0~30\);

-- Location: FF_X79_Y3_N23
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~29_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: FF_X81_Y3_N28
\send.data[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => counter(7),
	sload => VCC,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[7]~reg0_q\);

-- Location: LABCELL_X79_Y3_N24
\Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~33_sumout\ = SUM(( counter(8) ) + ( GND ) + ( \Add0~30\ ))
-- \Add0~34\ = CARRY(( counter(8) ) + ( GND ) + ( \Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(8),
	cin => \Add0~30\,
	sumout => \Add0~33_sumout\,
	cout => \Add0~34\);

-- Location: FF_X79_Y3_N26
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~33_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: FF_X83_Y3_N34
\send.data[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => counter(8),
	sload => VCC,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[8]~reg0_q\);

-- Location: LABCELL_X79_Y3_N27
\Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~37_sumout\ = SUM(( counter(9) ) + ( GND ) + ( \Add0~34\ ))
-- \Add0~38\ = CARRY(( counter(9) ) + ( GND ) + ( \Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => ALT_INV_counter(9),
	cin => \Add0~34\,
	sumout => \Add0~37_sumout\,
	cout => \Add0~38\);

-- Location: FF_X79_Y3_N29
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~37_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: FF_X81_Y3_N55
\send.data[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => counter(9),
	sload => VCC,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[9]~reg0_q\);

-- Location: LABCELL_X79_Y3_N30
\Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~41_sumout\ = SUM(( counter(10) ) + ( GND ) + ( \Add0~38\ ))
-- \Add0~42\ = CARRY(( counter(10) ) + ( GND ) + ( \Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(10),
	cin => \Add0~38\,
	sumout => \Add0~41_sumout\,
	cout => \Add0~42\);

-- Location: FF_X79_Y3_N32
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~41_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: FF_X85_Y3_N58
\send.data[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => counter(10),
	sload => VCC,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[10]~reg0_q\);

-- Location: LABCELL_X79_Y3_N33
\Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~45_sumout\ = SUM(( counter(11) ) + ( GND ) + ( \Add0~42\ ))
-- \Add0~46\ = CARRY(( counter(11) ) + ( GND ) + ( \Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => ALT_INV_counter(11),
	cin => \Add0~42\,
	sumout => \Add0~45_sumout\,
	cout => \Add0~46\);

-- Location: FF_X79_Y3_N35
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~45_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: FF_X82_Y3_N43
\send.data[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => counter(11),
	sload => VCC,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[11]~reg0_q\);

-- Location: LABCELL_X79_Y3_N36
\Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~49_sumout\ = SUM(( counter(12) ) + ( GND ) + ( \Add0~46\ ))
-- \Add0~50\ = CARRY(( counter(12) ) + ( GND ) + ( \Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(12),
	cin => \Add0~46\,
	sumout => \Add0~49_sumout\,
	cout => \Add0~50\);

-- Location: FF_X79_Y3_N38
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~49_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: FF_X82_Y3_N46
\send.data[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => counter(12),
	sload => VCC,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[12]~reg0_q\);

-- Location: LABCELL_X79_Y3_N39
\Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~53_sumout\ = SUM(( counter(13) ) + ( GND ) + ( \Add0~50\ ))
-- \Add0~54\ = CARRY(( counter(13) ) + ( GND ) + ( \Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(13),
	cin => \Add0~50\,
	sumout => \Add0~53_sumout\,
	cout => \Add0~54\);

-- Location: FF_X79_Y3_N41
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~53_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LABCELL_X85_Y3_N15
\send.data[13]~reg0feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \send.data[13]~reg0feeder_combout\ = ( counter(13) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => ALT_INV_counter(13),
	combout => \send.data[13]~reg0feeder_combout\);

-- Location: FF_X85_Y3_N16
\send.data[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \send.data[13]~reg0feeder_combout\,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[13]~reg0_q\);

-- Location: LABCELL_X79_Y3_N42
\Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~57_sumout\ = SUM(( counter(14) ) + ( GND ) + ( \Add0~54\ ))
-- \Add0~58\ = CARRY(( counter(14) ) + ( GND ) + ( \Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => ALT_INV_counter(14),
	cin => \Add0~54\,
	sumout => \Add0~57_sumout\,
	cout => \Add0~58\);

-- Location: FF_X79_Y3_N44
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~57_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: FF_X82_Y3_N37
\send.data[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => counter(14),
	sload => VCC,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[14]~reg0_q\);

-- Location: LABCELL_X79_Y3_N45
\Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \Add0~61_sumout\ = SUM(( counter(15) ) + ( GND ) + ( \Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => ALT_INV_counter(15),
	cin => \Add0~58\,
	sumout => \Add0~61_sumout\);

-- Location: FF_X79_Y3_N47
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	d => \Add0~61_sumout\,
	sclr => \send.data[0]~1_combout\,
	ena => \counter[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: FF_X85_Y3_N7
\send.data[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputCLKENA0_outclk\,
	asdata => counter(15),
	sload => VCC,
	ena => \send.data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \send.data[15]~reg0_q\);

-- Location: IOIBUF_X89_Y36_N55
\recv.addr[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(0),
	o => \recv.addr[0]~input_o\);

-- Location: IOIBUF_X89_Y61_N21
\recv.addr[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(1),
	o => \recv.addr[1]~input_o\);

-- Location: IOIBUF_X40_Y81_N35
\recv.addr[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(2),
	o => \recv.addr[2]~input_o\);

-- Location: IOIBUF_X22_Y81_N18
\recv.addr[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(3),
	o => \recv.addr[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N18
\recv.addr[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(4),
	o => \recv.addr[4]~input_o\);

-- Location: IOIBUF_X14_Y0_N35
\recv.addr[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(5),
	o => \recv.addr[5]~input_o\);

-- Location: IOIBUF_X89_Y45_N38
\recv.addr[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(6),
	o => \recv.addr[6]~input_o\);

-- Location: IOIBUF_X8_Y81_N52
\recv.addr[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_recv.addr\(7),
	o => \recv.addr[7]~input_o\);

-- Location: LABCELL_X13_Y48_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


