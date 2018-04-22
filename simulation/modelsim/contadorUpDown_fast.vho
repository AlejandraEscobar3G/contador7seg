-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "03/10/2018 23:08:48"

-- 
-- Device: Altera EP2C5T144C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	contador7seg IS
    PORT (
	clk : IN std_logic;
	rst : IN std_logic;
	updown : IN std_logic;
	Q : INOUT std_logic_vector(3 DOWNTO 0)
	);
END contador7seg;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[1]	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[2]	=>  Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[3]	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- updown	=>  Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF contador7seg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_updown : std_logic;
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \updown~combout\ : std_logic;
SIGNAL \Q[1]~14_cout\ : std_logic;
SIGNAL \Q[1]~16\ : std_logic;
SIGNAL \Q[2]~18_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \Q[0]~17_combout\ : std_logic;
SIGNAL \Q[2]~reg0_regout\ : std_logic;
SIGNAL \Q[2]~19\ : std_logic;
SIGNAL \Q[3]~20_combout\ : std_logic;
SIGNAL \Q[3]~reg0_regout\ : std_logic;
SIGNAL \Q[1]~15_combout\ : std_logic;
SIGNAL \Q[1]~reg0_regout\ : std_logic;
SIGNAL \Q[0]~11_combout\ : std_logic;
SIGNAL \Q~12_combout\ : std_logic;
SIGNAL \Q[0]~reg0_regout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_rst <= rst;
ww_updown <= updown;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);

-- Location: PIN_17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G2
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_28,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\updown~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_updown,
	combout => \updown~combout\);

-- Location: LCCOMB_X1_Y5_N10
\Q[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[1]~14_cout\ = CARRY(\Q[0]~reg0_regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Q[0]~reg0_regout\,
	datad => VCC,
	cout => \Q[1]~14_cout\);

-- Location: LCCOMB_X1_Y5_N12
\Q[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[1]~15_combout\ = (\Q[1]~reg0_regout\ & ((\updown~combout\ & (\Q[1]~14_cout\ & VCC)) # (!\updown~combout\ & (!\Q[1]~14_cout\)))) # (!\Q[1]~reg0_regout\ & ((\updown~combout\ & (!\Q[1]~14_cout\)) # (!\updown~combout\ & ((\Q[1]~14_cout\) # (GND)))))
-- \Q[1]~16\ = CARRY((\Q[1]~reg0_regout\ & (!\updown~combout\ & !\Q[1]~14_cout\)) # (!\Q[1]~reg0_regout\ & ((!\Q[1]~14_cout\) # (!\updown~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Q[1]~reg0_regout\,
	datab => \updown~combout\,
	datad => VCC,
	cin => \Q[1]~14_cout\,
	combout => \Q[1]~15_combout\,
	cout => \Q[1]~16\);

-- Location: LCCOMB_X1_Y5_N14
\Q[2]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[2]~18_combout\ = ((\Q[2]~reg0_regout\ $ (\updown~combout\ $ (!\Q[1]~16\)))) # (GND)
-- \Q[2]~19\ = CARRY((\Q[2]~reg0_regout\ & ((\updown~combout\) # (!\Q[1]~16\))) # (!\Q[2]~reg0_regout\ & (\updown~combout\ & !\Q[1]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Q[2]~reg0_regout\,
	datab => \updown~combout\,
	datad => VCC,
	cin => \Q[1]~16\,
	combout => \Q[2]~18_combout\,
	cout => \Q[2]~19\);

-- Location: LCCOMB_X1_Y5_N26
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCCOMB_X1_Y5_N20
\Q[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[0]~17_combout\ = (\rst~combout\) # (!\Q[0]~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \Q[0]~11_combout\,
	combout => \Q[0]~17_combout\);

-- Location: LCFF_X1_Y5_N15
\Q[2]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Q[2]~18_combout\,
	sdata => \~GND~combout\,
	sload => \Q[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q[2]~reg0_regout\);

-- Location: LCCOMB_X1_Y5_N16
\Q[3]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[3]~20_combout\ = \updown~combout\ $ (\Q[2]~19\ $ (\Q[3]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \updown~combout\,
	datad => \Q[3]~reg0_regout\,
	cin => \Q[2]~19\,
	combout => \Q[3]~20_combout\);

-- Location: LCFF_X1_Y5_N17
\Q[3]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Q[3]~20_combout\,
	sdata => \updown~combout\,
	sload => \Q[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q[3]~reg0_regout\);

-- Location: LCFF_X1_Y5_N13
\Q[1]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Q[1]~15_combout\,
	sdata => \~GND~combout\,
	sload => \Q[0]~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q[1]~reg0_regout\);

-- Location: LCCOMB_X1_Y5_N30
\Q[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q[0]~11_combout\ = (\updown~combout\) # (((!\Q[2]~reg0_regout\ & !\Q[1]~reg0_regout\)) # (!\Q[3]~reg0_regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \updown~combout\,
	datab => \Q[2]~reg0_regout\,
	datac => \Q[3]~reg0_regout\,
	datad => \Q[1]~reg0_regout\,
	combout => \Q[0]~11_combout\);

-- Location: LCCOMB_X1_Y5_N28
\Q~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Q~12_combout\ = (\rst~combout\ & (\updown~combout\)) # (!\rst~combout\ & (((!\Q[0]~reg0_regout\ & \Q[0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~combout\,
	datab => \updown~combout\,
	datac => \Q[0]~reg0_regout\,
	datad => \Q[0]~11_combout\,
	combout => \Q~12_combout\);

-- Location: LCFF_X1_Y5_N29
\Q[0]~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \Q~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Q[0]~reg0_regout\);

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Q[0]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Q(0));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Q[1]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Q(1));

-- Location: PIN_26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Q[2]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Q(2));

-- Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \Q[3]~reg0_regout\,
	oe => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => Q(3));
END structure;


