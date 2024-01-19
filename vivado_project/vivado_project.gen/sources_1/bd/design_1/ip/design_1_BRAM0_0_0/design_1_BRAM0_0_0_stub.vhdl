-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Jan 18 14:58:12 2024
-- Host        : DESKTOP-NOGC60I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/fb29_/Desktop/EHB_embedded/Final/final_project_2/final_project_2.gen/sources_1/bd/design_1/ip/design_1_BRAM0_0_0/design_1_BRAM0_0_0_stub.vhdl
-- Design      : design_1_BRAM0_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_BRAM0_0_0 is
  Port ( 
    address : in STD_LOGIC_VECTOR ( 11 downto 0 );
    instruction : out STD_LOGIC_VECTOR ( 17 downto 0 );
    enable : in STD_LOGIC;
    clk : in STD_LOGIC
  );

end design_1_BRAM0_0_0;

architecture stub of design_1_BRAM0_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "address[11:0],instruction[17:0],enable,clk";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "BRAM0,Vivado 2022.2";
begin
end;
