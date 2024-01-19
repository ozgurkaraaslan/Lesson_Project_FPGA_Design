// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jan 18 14:58:12 2024
// Host        : DESKTOP-NOGC60I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/fb29_/Desktop/EHB_embedded/Final/final_project_2/final_project_2.gen/sources_1/bd/design_1/ip/design_1_BRAM0_0_0/design_1_BRAM0_0_0_stub.v
// Design      : design_1_BRAM0_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "BRAM0,Vivado 2022.2" *)
module design_1_BRAM0_0_0(address, instruction, enable, clk)
/* synthesis syn_black_box black_box_pad_pin="address[11:0],instruction[17:0],enable,clk" */;
  input [11:0]address;
  output [17:0]instruction;
  input enable;
  input clk;
endmodule
