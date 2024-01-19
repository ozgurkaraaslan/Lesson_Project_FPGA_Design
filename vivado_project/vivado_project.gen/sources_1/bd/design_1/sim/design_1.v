//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
//Date        : Thu Jan 18 03:55:28 2024
//Host        : DESKTOP-NOGC60I running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=6,numReposBlks=6,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=4,numPkgbdBlks=0,bdsource=USER,da_board_cnt=10,da_clkrst_cnt=4,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_0,
    clk_1,
    interrupt_ack_0,
    k_write_strobe_0,
    read_strobe_0,
    reset_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_0, ASSOCIATED_RESET reset_0, CLK_DOMAIN design_1_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_1 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_1, ASSOCIATED_RESET reset_0, CLK_DOMAIN design_1_clk_1, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_1;
  output interrupt_ack_0;
  output k_write_strobe_0;
  output read_strobe_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_0;

  wire [17:0]BRAM0_0_instruction;
  wire [17:0]BRAM1_0_instruction;
  wire [7:0]blk_mem_gen_0_douta;
  wire [7:0]blk_mem_gen_0_doutb;
  wire clk_0_1;
  wire clk_1_1;
  wire [11:0]kcpsm6_0_address;
  wire kcpsm6_0_bram_enable;
  wire [7:0]kcpsm6_0_out_port;
  wire [7:0]kcpsm6_0_port_id;
  wire kcpsm6_0_write_strobe;
  wire [11:0]kcpsm6_1_address;
  wire kcpsm6_1_bram_enable;
  wire kcpsm6_1_interrupt_ack;
  wire kcpsm6_1_k_write_strobe;
  wire [7:0]kcpsm6_1_out_port;
  wire [7:0]kcpsm6_1_port_id;
  wire kcpsm6_1_read_strobe;
  wire kcpsm6_1_write_strobe;
  wire reset_0_1;
  wire [0:0]xlconstant_0_dout;

  assign clk_0_1 = clk_0;
  assign clk_1_1 = clk_1;
  assign interrupt_ack_0 = kcpsm6_1_interrupt_ack;
  assign k_write_strobe_0 = kcpsm6_1_k_write_strobe;
  assign read_strobe_0 = kcpsm6_1_read_strobe;
  assign reset_0_1 = reset_0;
  design_1_BRAM0_0_0 BRAM0_0
       (.address(kcpsm6_0_address),
        .clk(clk_0_1),
        .enable(kcpsm6_0_bram_enable),
        .instruction(BRAM0_0_instruction));
  design_1_BRAM1_0_0 BRAM1_0
       (.address(kcpsm6_1_address),
        .clk(clk_1_1),
        .enable(kcpsm6_1_bram_enable),
        .instruction(BRAM1_0_instruction));
  design_1_blk_mem_gen_0_0 blk_mem_gen_0
       (.addra(kcpsm6_1_port_id),
        .addrb(kcpsm6_0_port_id),
        .clka(clk_1_1),
        .clkb(clk_0_1),
        .dina(kcpsm6_1_out_port),
        .dinb(kcpsm6_0_out_port),
        .douta(blk_mem_gen_0_douta),
        .doutb(blk_mem_gen_0_doutb),
        .wea(kcpsm6_1_write_strobe),
        .web(kcpsm6_0_write_strobe));
  design_1_kcpsm6_0_0 kcpsm6_0
       (.address(kcpsm6_0_address),
        .bram_enable(kcpsm6_0_bram_enable),
        .clk(clk_0_1),
        .in_port(blk_mem_gen_0_doutb),
        .instruction(BRAM0_0_instruction),
        .interrupt(1'b0),
        .out_port(kcpsm6_0_out_port),
        .port_id(kcpsm6_0_port_id),
        .reset(reset_0_1),
        .sleep(xlconstant_0_dout),
        .write_strobe(kcpsm6_0_write_strobe));
  design_1_kcpsm6_1_0 kcpsm6_1
       (.address(kcpsm6_1_address),
        .bram_enable(kcpsm6_1_bram_enable),
        .clk(clk_1_1),
        .in_port(blk_mem_gen_0_douta),
        .instruction(BRAM1_0_instruction),
        .interrupt(1'b0),
        .interrupt_ack(kcpsm6_1_interrupt_ack),
        .k_write_strobe(kcpsm6_1_k_write_strobe),
        .out_port(kcpsm6_1_out_port),
        .port_id(kcpsm6_1_port_id),
        .read_strobe(kcpsm6_1_read_strobe),
        .reset(reset_0_1),
        .sleep(xlconstant_0_dout),
        .write_strobe(kcpsm6_1_write_strobe));
  design_1_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule
