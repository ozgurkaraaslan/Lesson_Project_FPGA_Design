// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jan 18 14:55:34 2024
// Host        : DESKTOP-NOGC60I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/fb29_/Desktop/EHB_embedded/Final/final_project_2/final_project_2.gen/sources_1/bd/design_1/ip/design_1_kcpsm6_1_0/design_1_kcpsm6_1_0_stub.v
// Design      : design_1_kcpsm6_1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "kcpsm6,Vivado 2022.2" *)
module design_1_kcpsm6_1_0(address, instruction, bram_enable, in_port, 
  out_port, port_id, write_strobe, k_write_strobe, read_strobe, interrupt, interrupt_ack, sleep, 
  reset, clk)
/* synthesis syn_black_box black_box_pad_pin="address[11:0],instruction[17:0],bram_enable,in_port[7:0],out_port[7:0],port_id[7:0],write_strobe,k_write_strobe,read_strobe,interrupt,interrupt_ack,sleep,reset,clk" */;
  output [11:0]address;
  input [17:0]instruction;
  output bram_enable;
  input [7:0]in_port;
  output [7:0]out_port;
  output [7:0]port_id;
  output write_strobe;
  output k_write_strobe;
  output read_strobe;
  input interrupt;
  output interrupt_ack;
  input sleep;
  input reset;
  input clk;
endmodule
