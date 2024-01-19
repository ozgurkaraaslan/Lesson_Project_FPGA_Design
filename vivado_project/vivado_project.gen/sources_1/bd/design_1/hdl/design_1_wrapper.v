//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Thu Jan 18 03:55:28 2024
//Host        : DESKTOP-NOGC60I running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_0,
    clk_1,
    interrupt_ack_0,
    k_write_strobe_0,
    read_strobe_0,
    reset_0);
  input clk_0;
  input clk_1;
  output interrupt_ack_0;
  output k_write_strobe_0;
  output read_strobe_0;
  input reset_0;

  wire clk_0;
  wire clk_1;
  wire interrupt_ack_0;
  wire k_write_strobe_0;
  wire read_strobe_0;
  wire reset_0;

  design_1 design_1_i
       (.clk_0(clk_0),
        .clk_1(clk_1),
        .interrupt_ack_0(interrupt_ack_0),
        .k_write_strobe_0(k_write_strobe_0),
        .read_strobe_0(read_strobe_0),
        .reset_0(reset_0));
endmodule
