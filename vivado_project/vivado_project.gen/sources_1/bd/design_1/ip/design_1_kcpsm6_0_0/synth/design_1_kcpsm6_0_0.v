// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:kcpsm6:1.0
// IP Revision: 1

(* X_CORE_INFO = "kcpsm6,Vivado 2022.2" *)
(* CHECK_LICENSE_TYPE = "design_1_kcpsm6_0_0,kcpsm6,{}" *)
(* CORE_GENERATION_INFO = "design_1_kcpsm6_0_0,kcpsm6,{x_ipProduct=Vivado 2022.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=kcpsm6,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED,hwbuild=00000000,interrupt_vector=0x3FF,scratch_pad_memory_size=64}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_kcpsm6_0_0 (
  address,
  instruction,
  bram_enable,
  in_port,
  out_port,
  port_id,
  write_strobe,
  k_write_strobe,
  read_strobe,
  interrupt,
  interrupt_ack,
  sleep,
  reset,
  clk
);

output wire [11 : 0] address;
input wire [17 : 0] instruction;
output wire bram_enable;
input wire [7 : 0] in_port;
output wire [7 : 0] out_port;
output wire [7 : 0] port_id;
output wire write_strobe;
output wire k_write_strobe;
output wire read_strobe;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *)
input wire interrupt;
output wire interrupt_ack;
input wire sleep;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *)
input wire clk;

  kcpsm6 #(
    .hwbuild(8'B00000000),
    .interrupt_vector(12'H3FF),
    .scratch_pad_memory_size(64)
  ) inst (
    .address(address),
    .instruction(instruction),
    .bram_enable(bram_enable),
    .in_port(in_port),
    .out_port(out_port),
    .port_id(port_id),
    .write_strobe(write_strobe),
    .k_write_strobe(k_write_strobe),
    .read_strobe(read_strobe),
    .interrupt(interrupt),
    .interrupt_ack(interrupt_ack),
    .sleep(sleep),
    .reset(reset),
    .clk(clk)
  );
endmodule
