-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Apr 22 19:33:14 2025
-- Host        : DESKTOP-CDIPQ9K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/Likhitha/Desktop/MUX/sbox_mux/sbox_mux.srcs/sources_1/ip/shiftrows_standard_0/shiftrows_standard_0_sim_netlist.vhdl
-- Design      : shiftrows_standard_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity shiftrows_standard_0 is
  port (
    state_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    state_out : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of shiftrows_standard_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of shiftrows_standard_0 : entity is "shiftrows_standard_0,shiftrows_standard,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of shiftrows_standard_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of shiftrows_standard_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of shiftrows_standard_0 : entity is "shiftrows_standard,Vivado 2018.2";
end shiftrows_standard_0;

architecture STRUCTURE of shiftrows_standard_0 is
  signal \^state_in\ : STD_LOGIC_VECTOR ( 127 downto 0 );
begin
  \^state_in\(127 downto 0) <= state_in(127 downto 0);
  state_out(127 downto 120) <= \^state_in\(127 downto 120);
  state_out(119 downto 112) <= \^state_in\(103 downto 96);
  state_out(111 downto 104) <= \^state_in\(111 downto 104);
  state_out(103 downto 96) <= \^state_in\(119 downto 112);
  state_out(95 downto 88) <= \^state_in\(87 downto 80);
  state_out(87 downto 80) <= \^state_in\(95 downto 88);
  state_out(79 downto 72) <= \^state_in\(71 downto 64);
  state_out(71 downto 64) <= \^state_in\(79 downto 72);
  state_out(63 downto 56) <= \^state_in\(47 downto 40);
  state_out(55 downto 48) <= \^state_in\(55 downto 48);
  state_out(47 downto 40) <= \^state_in\(63 downto 56);
  state_out(39 downto 32) <= \^state_in\(39 downto 32);
  state_out(31 downto 24) <= \^state_in\(7 downto 0);
  state_out(23 downto 16) <= \^state_in\(15 downto 8);
  state_out(15 downto 8) <= \^state_in\(23 downto 16);
  state_out(7 downto 0) <= \^state_in\(31 downto 24);
end STRUCTURE;
