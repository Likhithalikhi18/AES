-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Tue Apr 22 19:33:14 2025
-- Host        : DESKTOP-CDIPQ9K running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/Likhitha/Desktop/MUX/sbox_mux/sbox_mux.srcs/sources_1/ip/shiftrows_standard_0/shiftrows_standard_0_stub.vhdl
-- Design      : shiftrows_standard_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity shiftrows_standard_0 is
  Port ( 
    state_in : in STD_LOGIC_VECTOR ( 127 downto 0 );
    state_out : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );

end shiftrows_standard_0;

architecture stub of shiftrows_standard_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "state_in[127:0],state_out[127:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "shiftrows_standard,Vivado 2018.2";
begin
end;
