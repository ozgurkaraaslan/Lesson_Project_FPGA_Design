// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jan 18 14:55:34 2024
// Host        : DESKTOP-NOGC60I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/fb29_/Desktop/EHB_embedded/Final/final_project_2/final_project_2.gen/sources_1/bd/design_1/ip/design_1_kcpsm6_1_0/design_1_kcpsm6_1_0_sim_netlist.v
// Design      : design_1_kcpsm6_1_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_kcpsm6_1_0,kcpsm6,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "kcpsm6,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_kcpsm6_1_0
   (address,
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
    clk);
  output [11:0]address;
  input [17:0]instruction;
  output bram_enable;
  input [7:0]in_port;
  output [7:0]out_port;
  output [7:0]port_id;
  output write_strobe;
  output k_write_strobe;
  output read_strobe;
  (* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1" *) input interrupt;
  output interrupt_ack;
  input sleep;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_1, INSERT_VIP 0" *) input clk;

  wire [11:0]address;
  wire bram_enable;
  wire clk;
  wire [7:0]in_port;
  wire [17:0]instruction;
  wire interrupt;
  wire interrupt_ack;
  wire k_write_strobe;
  wire [7:0]out_port;
  wire [7:0]port_id;
  wire read_strobe;
  wire reset;
  wire sleep;
  wire write_strobe;

  design_1_kcpsm6_1_0_kcpsm6 inst
       (.address(address),
        .bram_enable(bram_enable),
        .clk(clk),
        .in_port(in_port),
        .instruction(instruction),
        .interrupt(interrupt),
        .interrupt_ack(interrupt_ack),
        .k_write_strobe(k_write_strobe),
        .out_port(out_port),
        .port_id(port_id),
        .read_strobe(read_strobe),
        .reset(reset),
        .sleep(sleep),
        .write_strobe(write_strobe));
endmodule

(* ORIG_REF_NAME = "kcpsm6" *) 
module design_1_kcpsm6_1_0_kcpsm6
   (bram_enable,
    interrupt_ack,
    k_write_strobe,
    write_strobe,
    read_strobe,
    address,
    port_id,
    out_port,
    reset,
    clk,
    sleep,
    instruction,
    interrupt,
    in_port);
  output bram_enable;
  output interrupt_ack;
  output k_write_strobe;
  output write_strobe;
  output read_strobe;
  output [11:0]address;
  output [7:0]port_id;
  output [7:0]out_port;
  input reset;
  input clk;
  input sleep;
  input [17:0]instruction;
  input interrupt;
  input [7:0]in_port;

  wire [4:0]ADDRA;
  wire CI;
  wire [1:0]DOC;
  wire [1:0]DOD;
  wire I2;
  wire WE;
  wire active_interrupt;
  wire active_interrupt_value;
  wire [11:0]address;
  wire [1:0]alu_mux_sel;
  wire [1:0]alu_mux_sel_value;
  wire [7:0]alu_result;
  wire arith_carry;
  wire arith_carry_in;
  wire arith_carry_value;
  wire [7:0]arith_logical_result;
  wire [2:0]arith_logical_sel;
  wire [7:0]arith_logical_value;
  wire bank;
  wire bank_value;
  wire bram_enable;
  wire carry_flag;
  wire carry_flag_value;
  wire carry_in_zero;
  wire carry_lower_parity;
  wire carry_lower_zero;
  wire carry_middle_zero;
  wire [10:0]carry_pc;
  wire clk;
  wire \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_n_0 ;
  wire \data_path_loop[1].upper_arith_logical.arith_logical_muxcy_n_0 ;
  wire \data_path_loop[2].upper_arith_logical.arith_logical_muxcy_n_0 ;
  wire \data_path_loop[3].upper_arith_logical.arith_logical_muxcy_n_0 ;
  wire \data_path_loop[4].upper_arith_logical.arith_logical_muxcy_n_0 ;
  wire \data_path_loop[5].upper_arith_logical.arith_logical_muxcy_n_0 ;
  wire \data_path_loop[6].upper_arith_logical.arith_logical_muxcy_n_0 ;
  wire drive_carry_in_zero;
  wire [4:0]feed_pointer_value;
  wire flag_enable;
  wire flag_enable_type;
  wire flag_enable_value;
  wire [7:0]half_arith_logical;
  wire [11:0]half_pc;
  wire [4:0]half_pointer_value;
  wire [7:0]in_port;
  wire [17:0]instruction;
  wire int_enable_type;
  wire internal_reset;
  wire internal_reset_value;
  wire interrupt;
  wire interrupt_ack;
  wire interrupt_enable;
  wire interrupt_enable_value;
  wire k_write_strobe;
  wire k_write_strobe_value;
  wire loadstar_type;
  wire [7:0]logical_carry_mask;
  wire lower_parity;
  wire lower_parity_sel;
  wire lower_zero;
  wire lower_zero_sel;
  wire middle_zero;
  wire middle_zero_sel;
  wire move_type;
  wire [7:0]out_port;
  wire parity;
  wire [2:0]pc_mode;
  wire pc_move_is_valid;
  wire [11:0]pc_value;
  wire [11:0]pc_vector;
  wire pop_stack;
  wire [7:0]port_id;
  wire push_stack;
  wire read_strobe;
  wire read_strobe_value;
  wire regbank_type;
  wire register_enable;
  wire register_enable_type;
  wire register_enable_value;
  wire [11:0]register_vector;
  wire reset;
  wire [11:0]return_vector;
  wire returni_type;
  wire run;
  wire run_value;
  wire shadow_bank;
  wire shadow_carry_flag;
  wire shadow_zero_flag;
  wire shadow_zero_value;
  wire shift_carry;
  wire shift_carry_value;
  wire shift_in_bit;
  wire [7:0]shift_rotate_result;
  wire [7:0]shift_rotate_value;
  wire sleep;
  wire special_bit;
  wire [7:0]spm_data;
  wire spm_enable;
  wire spm_enable_value;
  wire [7:0]spm_ram_data;
  wire stack_bank;
  wire stack_bit;
  wire stack_carry_flag;
  wire \stack_loop[0].lsb_stack.stack_muxcy_n_0 ;
  wire \stack_loop[1].upper_stack.stack_muxcy_n_0 ;
  wire \stack_loop[2].upper_stack.stack_muxcy_n_0 ;
  wire \stack_loop[3].upper_stack.stack_muxcy_n_0 ;
  wire [4:0]stack_pointer_value;
  wire stack_ram_high_n_0;
  wire stack_ram_high_n_1;
  wire stack_ram_high_n_2;
  wire stack_ram_high_n_3;
  wire stack_ram_high_n_4;
  wire stack_ram_high_n_5;
  wire stack_ram_high_n_6;
  wire stack_ram_high_n_7;
  wire stack_zero_flag;
  wire strobe_type;
  wire [4:4]sx_addr;
  wire sx_addr4_value;
  wire sync_interrupt;
  wire sync_sleep;
  wire [2:1]t_state_value;
  wire upper_parity;
  wire upper_reg_banks_n_2;
  wire upper_reg_banks_n_3;
  wire upper_reg_banks_n_6;
  wire upper_reg_banks_n_7;
  wire upper_zero_sel;
  wire use_zero_flag;
  wire use_zero_flag_value;
  wire write_strobe;
  wire write_strobe_value;
  wire zero_flag;
  wire zero_flag_value;
  wire [3:3]\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CO_UNCONNECTED ;
  wire [3:3]\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_DI_UNCONNECTED ;
  wire [3:0]NLW_arith_carry_xorcy_CARRY4_CO_UNCONNECTED;
  wire [3:0]NLW_arith_carry_xorcy_CARRY4_DI_UNCONNECTED;
  wire [3:1]NLW_arith_carry_xorcy_CARRY4_O_UNCONNECTED;
  wire [3:1]NLW_arith_carry_xorcy_CARRY4_S_UNCONNECTED;
  wire [3:0]NLW_init_zero_muxcy_CARRY4_O_UNCONNECTED;
  wire [3:1]NLW_parity_muxcy_CARRY4_CO_UNCONNECTED;
  wire [3:1]NLW_parity_muxcy_CARRY4_DI_UNCONNECTED;
  wire [3:0]NLW_parity_muxcy_CARRY4_O_UNCONNECTED;
  wire [3:2]NLW_parity_muxcy_CARRY4_S_UNCONNECTED;
  wire [3:1]\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_CO_UNCONNECTED ;
  wire [3:1]\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_DI_UNCONNECTED ;
  wire [3:1]\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_O_UNCONNECTED ;
  wire [3:1]\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_S_UNCONNECTED ;

  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    active_interrupt_flop
       (.C(clk),
        .CE(1'b1),
        .D(active_interrupt_value),
        .Q(active_interrupt),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_control" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hCC33FF0080808080)) 
    active_interrupt_lut
       (.I0(interrupt_enable),
        .I1(bram_enable),
        .I2(sync_interrupt),
        .I3(bank),
        .I4(loadstar_type),
        .I5(1'b1),
        .O5(active_interrupt_value),
        .O6(sx_addr4_value));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FF33CC0F00)) 
    \address_loop[0].lsb_pc.high_int_vector.pc_lut 
       (.I0(register_vector[0]),
        .I1(pc_vector[0]),
        .I2(address[0]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[0]));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \address_loop[0].lsb_pc.pc_muxcy_CARRY4 
       (.CI(1'b0),
        .CO(carry_pc[3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,pc_mode[0]}),
        .O(pc_value[3:0]),
        .S(half_pc[3:0]));
  (* HBLKNM = "kcpsm6_vector0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[0].output_data.pc_vector_mux_lut 
       (.I0(instruction[0]),
        .I1(return_vector[0]),
        .I2(instruction[1]),
        .I3(return_vector[1]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector[0]),
        .O6(pc_vector[1]));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[0].pc_flop 
       (.C(clk),
        .CE(WE),
        .D(pc_value[0]),
        .Q(address[0]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[0].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(DOC[0]),
        .Q(return_vector[0]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_vector1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[10].output_data.pc_vector_mux_lut 
       (.I0(instruction[10]),
        .I1(return_vector[10]),
        .I2(instruction[11]),
        .I3(return_vector[11]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector[10]),
        .O6(pc_vector[11]));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[10].pc_flop 
       (.C(clk),
        .CE(WE),
        .D(pc_value[10]),
        .Q(address[10]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[10].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_7),
        .Q(return_vector[10]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[10].upper_pc.low_int_vector.pc_lut 
       (.I0(register_vector[10]),
        .I1(pc_vector[10]),
        .I2(address[10]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[10]));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[11].pc_flop 
       (.C(clk),
        .CE(WE),
        .D(pc_value[11]),
        .Q(address[11]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[11].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_6),
        .Q(return_vector[11]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA0000CCCCF000)) 
    \address_loop[11].upper_pc.low_int_vector.pc_lut 
       (.I0(register_vector[11]),
        .I1(pc_vector[11]),
        .I2(address[11]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[11]));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[1].pc_flop 
       (.C(clk),
        .CE(WE),
        .D(pc_value[1]),
        .Q(address[1]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[1].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(DOC[1]),
        .Q(return_vector[1]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[1].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[1]),
        .I1(pc_vector[1]),
        .I2(address[1]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[1]));
  (* HBLKNM = "kcpsm6_vector0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[2].output_data.pc_vector_mux_lut 
       (.I0(instruction[2]),
        .I1(return_vector[2]),
        .I2(instruction[3]),
        .I3(return_vector[3]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector[2]),
        .O6(pc_vector[3]));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[2].pc_flop 
       (.C(clk),
        .CE(WE),
        .D(pc_value[2]),
        .Q(address[2]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[2].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(DOD[0]),
        .Q(return_vector[2]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[2].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[2]),
        .I1(pc_vector[2]),
        .I2(address[2]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[2]));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[3].pc_flop 
       (.C(clk),
        .CE(WE),
        .D(pc_value[3]),
        .Q(address[3]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[3].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(DOD[1]),
        .Q(return_vector[3]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[3].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[3]),
        .I1(pc_vector[3]),
        .I2(address[3]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[3]));
  (* HBLKNM = "kcpsm6_vector0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[4].output_data.pc_vector_mux_lut 
       (.I0(instruction[4]),
        .I1(return_vector[4]),
        .I2(instruction[5]),
        .I3(return_vector[5]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector[4]),
        .O6(pc_vector[5]));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[4].pc_flop 
       (.C(clk),
        .CE(WE),
        .D(pc_value[4]),
        .Q(address[4]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[4].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_1),
        .Q(return_vector[4]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[4].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[4]),
        .I1(pc_vector[4]),
        .I2(address[4]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[4]));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \address_loop[4].upper_pc.mid_pc.pc_muxcy_CARRY4 
       (.CI(carry_pc[3]),
        .CO(carry_pc[7:4]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(pc_value[7:4]),
        .S(half_pc[7:4]));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[5].pc_flop 
       (.C(clk),
        .CE(WE),
        .D(pc_value[5]),
        .Q(address[5]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[5].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_0),
        .Q(return_vector[5]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[5].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[5]),
        .I1(pc_vector[5]),
        .I2(address[5]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[5]));
  (* HBLKNM = "kcpsm6_vector0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[6].output_data.pc_vector_mux_lut 
       (.I0(instruction[6]),
        .I1(return_vector[6]),
        .I2(instruction[7]),
        .I3(return_vector[7]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector[6]),
        .O6(pc_vector[7]));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[6].pc_flop 
       (.C(clk),
        .CE(WE),
        .D(pc_value[6]),
        .Q(address[6]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[6].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_3),
        .Q(return_vector[6]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[6].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[6]),
        .I1(pc_vector[6]),
        .I2(address[6]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[6]));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[7].pc_flop 
       (.C(clk),
        .CE(WE),
        .D(pc_value[7]),
        .Q(address[7]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[7].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_2),
        .Q(return_vector[7]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[7].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[7]),
        .I1(pc_vector[7]),
        .I2(address[7]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[7]));
  (* HBLKNM = "kcpsm6_vector1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \address_loop[8].output_data.pc_vector_mux_lut 
       (.I0(instruction[8]),
        .I1(return_vector[8]),
        .I2(instruction[9]),
        .I3(return_vector[9]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(pc_vector[8]),
        .O6(pc_vector[9]));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[8].pc_flop 
       (.C(clk),
        .CE(WE),
        .D(pc_value[8]),
        .Q(address[8]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[8].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_5),
        .Q(return_vector[8]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[8].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[8]),
        .I1(pc_vector[8]),
        .I2(address[8]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[8]));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4 
       (.CI(carry_pc[7]),
        .CO({\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CO_UNCONNECTED [3],carry_pc[10:8]}),
        .CYINIT(1'b0),
        .DI({\NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_DI_UNCONNECTED [3],1'b0,1'b0,1'b0}),
        .O(pc_value[11:8]),
        .S(half_pc[11:8]));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    \address_loop[9].pc_flop 
       (.C(clk),
        .CE(WE),
        .D(pc_value[9]),
        .Q(address[9]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \address_loop[9].return_vector_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_ram_high_n_4),
        .Q(return_vector[9]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_pc2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h00AA00FFCCCCF000)) 
    \address_loop[9].upper_pc.high_int_vector.pc_lut 
       (.I0(register_vector[9]),
        .I1(pc_vector[9]),
        .I2(address[9]),
        .I3(pc_mode[0]),
        .I4(pc_mode[1]),
        .I5(pc_mode[2]),
        .O(half_pc[9]));
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h03CA000004200000)) 
    alu_decode0_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[15]),
        .I3(instruction[16]),
        .I4(1'b1),
        .I5(1'b1),
        .O5(alu_mux_sel_value[0]),
        .O6(arith_logical_sel[0]));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h7708000000000F00)) 
    alu_decode1_lut
       (.I0(carry_flag),
        .I1(instruction[13]),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[16]),
        .I5(1'b1),
        .O5(alu_mux_sel_value[1]),
        .O6(arith_carry_in));
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hD000000002000000)) 
    alu_decode2_lut
       (.I0(instruction[14]),
        .I1(instruction[15]),
        .I2(instruction[16]),
        .I3(1'b1),
        .I4(1'b1),
        .I5(1'b1),
        .O5(arith_logical_sel[1]),
        .O6(arith_logical_sel[2]));
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    alu_mux_sel0_flop
       (.C(clk),
        .CE(1'b1),
        .D(alu_mux_sel_value[0]),
        .Q(alu_mux_sel[0]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    alu_mux_sel1_flop
       (.C(clk),
        .CE(1'b1),
        .D(alu_mux_sel_value[1]),
        .Q(alu_mux_sel[1]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    arith_carry_flop
       (.C(clk),
        .CE(1'b1),
        .D(arith_carry_value),
        .Q(arith_carry),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_control" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 arith_carry_xorcy_CARRY4
       (.CI(CI),
        .CO(NLW_arith_carry_xorcy_CARRY4_CO_UNCONNECTED[3:0]),
        .CYINIT(1'b0),
        .DI(NLW_arith_carry_xorcy_CARRY4_DI_UNCONNECTED[3:0]),
        .O({NLW_arith_carry_xorcy_CARRY4_O_UNCONNECTED[3:1],arith_carry_value}),
        .S({NLW_arith_carry_xorcy_CARRY4_S_UNCONNECTED[3:1],1'b0}));
  (* HBLKNM = "kcpsm6_stack1" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    bank_flop
       (.C(clk),
        .CE(1'b1),
        .D(bank_value),
        .Q(bank),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hACACFF00FF00FF00)) 
    bank_lut
       (.I0(instruction[0]),
        .I1(shadow_bank),
        .I2(instruction[16]),
        .I3(bank),
        .I4(regbank_type),
        .I5(WE),
        .O(bank_value));
  (* HBLKNM = "kcpsm6_flags" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    carry_flag_flop
       (.C(clk),
        .CE(flag_enable),
        .D(carry_flag_value),
        .Q(carry_flag),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_flags" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h3333AACCF0AA0000)) 
    carry_flag_lut
       (.I0(shift_carry),
        .I1(arith_carry),
        .I2(parity),
        .I3(instruction[14]),
        .I4(instruction[15]),
        .I5(instruction[16]),
        .O5(drive_carry_in_zero),
        .O6(carry_flag_value));
  (* HBLKNM = "kcpsm6_alu0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].alu_mux_lut 
       (.I0(arith_logical_result[0]),
        .I1(shift_rotate_result[0]),
        .I2(in_port[0]),
        .I3(spm_data[0]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[0]));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[0].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value[0]),
        .Q(arith_logical_result[0]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[0].arith_logical_lut 
       (.I0(port_id[0]),
        .I1(register_vector[8]),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[0]),
        .O6(half_arith_logical[0]));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[0].low_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value[0]),
        .Q(shift_rotate_result[0]),
        .R(instruction[7]));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4 
       (.CI(1'b0),
        .CO({\data_path_loop[3].upper_arith_logical.arith_logical_muxcy_n_0 ,\data_path_loop[2].upper_arith_logical.arith_logical_muxcy_n_0 ,\data_path_loop[1].upper_arith_logical.arith_logical_muxcy_n_0 ,\data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_n_0 }),
        .CYINIT(arith_carry_in),
        .DI(logical_carry_mask[3:0]),
        .O(arith_logical_value[3:0]),
        .S(half_arith_logical[3:0]));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hBFBC8F8CB3B08380)) 
    \data_path_loop[0].lsb_shift_rotate.shift_bit_lut 
       (.I0(instruction[0]),
        .I1(instruction[1]),
        .I2(instruction[2]),
        .I3(carry_flag),
        .I4(register_vector[8]),
        .I5(upper_reg_banks_n_6),
        .O(shift_in_bit));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].lsb_shift_rotate.shift_rotate_lut 
       (.I0(shift_in_bit),
        .I1(register_vector[9]),
        .I2(register_vector[8]),
        .I3(register_vector[10]),
        .I4(instruction[3]),
        .I5(1'b1),
        .O5(shift_rotate_value[0]),
        .O6(shift_rotate_value[1]));
  (* HBLKNM = "kcpsm6_port_id" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].output_data.sy_kk_mux_lut 
       (.I0(register_vector[0]),
        .I1(instruction[0]),
        .I2(register_vector[1]),
        .I3(instruction[1]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(port_id[0]),
        .O6(port_id[1]));
  (* HBLKNM = "kcpsm6_out_port" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[0].second_operand.out_port_lut 
       (.I0(register_vector[8]),
        .I1(instruction[4]),
        .I2(register_vector[9]),
        .I3(instruction[5]),
        .I4(instruction[13]),
        .I5(1'b1),
        .O5(out_port[0]),
        .O6(out_port[1]));
  (* HBLKNM = "kcpsm6_spm0" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \data_path_loop[0].small_spm.small_spm_ram.spm_ram 
       (.ADDRA(port_id[5:0]),
        .ADDRB(port_id[5:0]),
        .ADDRC(port_id[5:0]),
        .ADDRD(port_id[5:0]),
        .DIA(register_vector[8]),
        .DIB(register_vector[9]),
        .DIC(register_vector[10]),
        .DID(register_vector[11]),
        .DOA(spm_ram_data[0]),
        .DOB(spm_ram_data[1]),
        .DOC(spm_ram_data[2]),
        .DOD(spm_ram_data[3]),
        .WCLK(clk),
        .WE(spm_enable));
  (* HBLKNM = "kcpsm6_spm0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[0].small_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data[0]),
        .Q(spm_data[0]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_alu0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[1].alu_mux_lut 
       (.I0(arith_logical_result[1]),
        .I1(shift_rotate_result[1]),
        .I2(in_port[1]),
        .I3(spm_data[1]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[1]));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[1].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value[1]),
        .Q(arith_logical_result[1]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[1].arith_logical_lut 
       (.I0(port_id[1]),
        .I1(register_vector[9]),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[1]),
        .O6(half_arith_logical[1]));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[1].low_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value[1]),
        .Q(shift_rotate_result[1]),
        .R(instruction[7]));
  (* HBLKNM = "kcpsm6_spm0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[1].small_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data[1]),
        .Q(spm_data[1]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_alu0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].alu_mux_lut 
       (.I0(arith_logical_result[2]),
        .I1(shift_rotate_result[2]),
        .I2(in_port[2]),
        .I3(spm_data[2]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[2]));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[2].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value[2]),
        .Q(arith_logical_result[2]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[2].arith_logical_lut 
       (.I0(port_id[2]),
        .I1(register_vector[10]),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[2]),
        .O6(half_arith_logical[2]));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[2].low_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value[2]),
        .Q(shift_rotate_result[2]),
        .R(instruction[7]));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].mid_shift_rotate.shift_rotate_lut 
       (.I0(register_vector[9]),
        .I1(register_vector[11]),
        .I2(register_vector[10]),
        .I3(upper_reg_banks_n_3),
        .I4(instruction[3]),
        .I5(1'b1),
        .O5(shift_rotate_value[2]),
        .O6(shift_rotate_value[3]));
  (* HBLKNM = "kcpsm6_port_id" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].output_data.sy_kk_mux_lut 
       (.I0(register_vector[2]),
        .I1(instruction[2]),
        .I2(register_vector[3]),
        .I3(instruction[3]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(port_id[2]),
        .O6(port_id[3]));
  (* HBLKNM = "kcpsm6_out_port" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[2].second_operand.out_port_lut 
       (.I0(register_vector[10]),
        .I1(instruction[6]),
        .I2(register_vector[11]),
        .I3(instruction[7]),
        .I4(instruction[13]),
        .I5(1'b1),
        .O5(out_port[2]),
        .O6(out_port[3]));
  (* HBLKNM = "kcpsm6_spm0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[2].small_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data[2]),
        .Q(spm_data[2]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_alu0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[3].alu_mux_lut 
       (.I0(arith_logical_result[3]),
        .I1(shift_rotate_result[3]),
        .I2(in_port[3]),
        .I3(spm_data[3]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[3]));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[3].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value[3]),
        .Q(arith_logical_result[3]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[3].arith_logical_lut 
       (.I0(port_id[3]),
        .I1(register_vector[11]),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[3]),
        .O6(half_arith_logical[3]));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[3].low_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value[3]),
        .Q(shift_rotate_result[3]),
        .R(instruction[7]));
  (* HBLKNM = "kcpsm6_spm0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[3].small_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data[3]),
        .Q(spm_data[3]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_alu1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].alu_mux_lut 
       (.I0(arith_logical_result[4]),
        .I1(shift_rotate_result[4]),
        .I2(in_port[4]),
        .I3(spm_data[4]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[4]));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[4].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value[4]),
        .Q(arith_logical_result[4]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[4].arith_logical_lut 
       (.I0(port_id[4]),
        .I1(upper_reg_banks_n_3),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[4]),
        .O6(half_arith_logical[4]));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[4].low_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value[4]),
        .Q(shift_rotate_result[4]),
        .R(instruction[7]));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].mid_shift_rotate.shift_rotate_lut 
       (.I0(register_vector[11]),
        .I1(upper_reg_banks_n_2),
        .I2(upper_reg_banks_n_3),
        .I3(upper_reg_banks_n_7),
        .I4(instruction[3]),
        .I5(1'b1),
        .O5(shift_rotate_value[4]),
        .O6(shift_rotate_value[5]));
  (* HBLKNM = "kcpsm6_port_id" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].output_data.sy_kk_mux_lut 
       (.I0(register_vector[4]),
        .I1(instruction[4]),
        .I2(register_vector[5]),
        .I3(instruction[5]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(port_id[4]),
        .O6(port_id[5]));
  (* HBLKNM = "kcpsm6_out_port" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[4].second_operand.out_port_lut 
       (.I0(upper_reg_banks_n_3),
        .I1(instruction[8]),
        .I2(upper_reg_banks_n_2),
        .I3(instruction[9]),
        .I4(instruction[13]),
        .I5(1'b1),
        .O5(out_port[4]),
        .O6(out_port[5]));
  (* HBLKNM = "kcpsm6_spm1" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM64M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    \data_path_loop[4].small_spm.small_spm_ram.spm_ram 
       (.ADDRA(port_id[5:0]),
        .ADDRB(port_id[5:0]),
        .ADDRC(port_id[5:0]),
        .ADDRD(port_id[5:0]),
        .DIA(upper_reg_banks_n_3),
        .DIB(upper_reg_banks_n_2),
        .DIC(upper_reg_banks_n_7),
        .DID(upper_reg_banks_n_6),
        .DOA(spm_ram_data[4]),
        .DOB(spm_ram_data[5]),
        .DOC(spm_ram_data[6]),
        .DOD(spm_ram_data[7]),
        .WCLK(clk),
        .WE(spm_enable));
  (* HBLKNM = "kcpsm6_spm1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[4].small_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data[4]),
        .Q(spm_data[4]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \data_path_loop[4].upper_arith_logical.arith_logical_muxcy_CARRY4 
       (.CI(\data_path_loop[3].upper_arith_logical.arith_logical_muxcy_n_0 ),
        .CO({CI,\data_path_loop[6].upper_arith_logical.arith_logical_muxcy_n_0 ,\data_path_loop[5].upper_arith_logical.arith_logical_muxcy_n_0 ,\data_path_loop[4].upper_arith_logical.arith_logical_muxcy_n_0 }),
        .CYINIT(1'b0),
        .DI(logical_carry_mask[7:4]),
        .O(arith_logical_value[7:4]),
        .S(half_arith_logical[7:4]));
  (* HBLKNM = "kcpsm6_alu1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[5].alu_mux_lut 
       (.I0(arith_logical_result[5]),
        .I1(shift_rotate_result[5]),
        .I2(in_port[5]),
        .I3(spm_data[5]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[5]));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[5].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value[5]),
        .Q(arith_logical_result[5]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[5].arith_logical_lut 
       (.I0(port_id[5]),
        .I1(upper_reg_banks_n_2),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[5]),
        .O6(half_arith_logical[5]));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[5].low_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value[5]),
        .Q(shift_rotate_result[5]),
        .R(instruction[7]));
  (* HBLKNM = "kcpsm6_spm1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[5].small_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data[5]),
        .Q(spm_data[5]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_alu1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].alu_mux_lut 
       (.I0(arith_logical_result[6]),
        .I1(shift_rotate_result[6]),
        .I2(in_port[6]),
        .I3(spm_data[6]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[6]));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[6].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value[6]),
        .Q(arith_logical_result[6]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[6].arith_logical_lut 
       (.I0(port_id[6]),
        .I1(upper_reg_banks_n_7),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[6]),
        .O6(half_arith_logical[6]));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[6].low_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value[6]),
        .Q(shift_rotate_result[6]),
        .R(instruction[7]));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].msb_shift_rotate.shift_rotate_lut 
       (.I0(upper_reg_banks_n_2),
        .I1(upper_reg_banks_n_6),
        .I2(upper_reg_banks_n_7),
        .I3(shift_in_bit),
        .I4(instruction[3]),
        .I5(1'b1),
        .O5(shift_rotate_value[6]),
        .O6(shift_rotate_value[7]));
  (* HBLKNM = "kcpsm6_port_id" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].output_data.sy_kk_mux_lut 
       (.I0(register_vector[6]),
        .I1(instruction[6]),
        .I2(register_vector[7]),
        .I3(instruction[7]),
        .I4(instruction[12]),
        .I5(1'b1),
        .O5(port_id[6]),
        .O6(port_id[7]));
  (* HBLKNM = "kcpsm6_out_port" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[6].second_operand.out_port_lut 
       (.I0(upper_reg_banks_n_7),
        .I1(instruction[10]),
        .I2(upper_reg_banks_n_6),
        .I3(instruction[11]),
        .I4(instruction[13]),
        .I5(1'b1),
        .O5(out_port[6]),
        .O6(out_port[7]));
  (* HBLKNM = "kcpsm6_spm1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[6].small_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data[6]),
        .Q(spm_data[6]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_alu1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFF00F0F0CCCCAAAA)) 
    \data_path_loop[7].alu_mux_lut 
       (.I0(arith_logical_result[7]),
        .I1(shift_rotate_result[7]),
        .I2(in_port[7]),
        .I3(spm_data[7]),
        .I4(alu_mux_sel[0]),
        .I5(alu_mux_sel[1]),
        .O(alu_result[7]));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[7].arith_logical_flop 
       (.C(clk),
        .CE(1'b1),
        .D(arith_logical_value[7]),
        .Q(arith_logical_result[7]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_add1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h69696E8ACCCC0000)) 
    \data_path_loop[7].arith_logical_lut 
       (.I0(port_id[7]),
        .I1(upper_reg_banks_n_6),
        .I2(arith_logical_sel[0]),
        .I3(arith_logical_sel[1]),
        .I4(arith_logical_sel[2]),
        .I5(1'b1),
        .O5(logical_carry_mask[7]),
        .O6(half_arith_logical[7]));
  (* HBLKNM = "kcpsm6_sandr" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[7].low_hwbuild.shift_rotate_flop 
       (.C(clk),
        .CE(1'b1),
        .D(shift_rotate_value[7]),
        .Q(shift_rotate_result[7]),
        .R(instruction[7]));
  (* HBLKNM = "kcpsm6_spm1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \data_path_loop[7].small_spm.spm_flop 
       (.C(clk),
        .CE(1'b1),
        .D(spm_ram_data[7]),
        .Q(spm_data[7]),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    flag_enable_flop
       (.C(clk),
        .CE(1'b1),
        .D(flag_enable_value),
        .Q(flag_enable),
        .R(active_interrupt));
  (* HBLKNM = "kcpsm6_flags" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 init_zero_muxcy_CARRY4
       (.CI(1'b0),
        .CO({zero_flag_value,carry_middle_zero,carry_lower_zero,carry_in_zero}),
        .CYINIT(1'b0),
        .DI({shadow_zero_flag,middle_zero,lower_zero,drive_carry_in_zero}),
        .O(NLW_init_zero_muxcy_CARRY4_O_UNCONNECTED[3:0]),
        .S({upper_zero_sel,middle_zero_sel,lower_zero_sel,carry_flag_value}));
  (* HBLKNM = "kcpsm6_decode0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0010000000000800)) 
    int_enable_type_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[15]),
        .I3(instruction[16]),
        .I4(instruction[17]),
        .I5(1'b1),
        .O5(loadstar_type),
        .O6(int_enable_type));
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    internal_reset_flop
       (.C(clk),
        .CE(1'b1),
        .D(internal_reset_value),
        .Q(internal_reset),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    interrupt_ack_flop
       (.C(clk),
        .CE(1'b1),
        .D(active_interrupt),
        .Q(interrupt_ack),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    interrupt_enable_flop
       (.C(clk),
        .CE(1'b1),
        .D(interrupt_enable_value),
        .Q(interrupt_enable),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h000000000000CAAA)) 
    interrupt_enable_lut
       (.I0(interrupt_enable),
        .I1(instruction[0]),
        .I2(int_enable_type),
        .I3(WE),
        .I4(active_interrupt),
        .I5(internal_reset),
        .O(interrupt_enable_value));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    k_write_strobe_flop
       (.C(clk),
        .CE(1'b1),
        .D(k_write_strobe_value),
        .Q(k_write_strobe),
        .R(active_interrupt));
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0000000087780000)) 
    lower_parity_lut
       (.I0(instruction[13]),
        .I1(carry_flag),
        .I2(arith_logical_result[0]),
        .I3(arith_logical_result[1]),
        .I4(1'b1),
        .I5(1'b1),
        .O5(lower_parity),
        .O6(lower_parity_sel));
  (* HBLKNM = "kcpsm6_reg0" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    lower_reg_banks
       (.ADDRA({bank,instruction[7:4]}),
        .ADDRB({sx_addr,instruction[11:8]}),
        .ADDRC({bank,instruction[7:4]}),
        .ADDRD({sx_addr,instruction[11:8]}),
        .DIA(alu_result[1:0]),
        .DIB(alu_result[1:0]),
        .DIC(alu_result[3:2]),
        .DID(alu_result[3:2]),
        .DOA(register_vector[1:0]),
        .DOB(register_vector[9:8]),
        .DOC(register_vector[3:2]),
        .DOD(register_vector[11:10]),
        .WCLK(clk),
        .WE(register_enable));
  (* HBLKNM = "kcpsm6_flags" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0000000000000001)) 
    lower_zero_lut
       (.I0(alu_result[0]),
        .I1(alu_result[1]),
        .I2(alu_result[2]),
        .I3(alu_result[3]),
        .I4(alu_result[4]),
        .I5(1'b1),
        .O5(lower_zero),
        .O6(lower_zero_sel));
  (* HBLKNM = "kcpsm6_flags" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0000000D00000000)) 
    middle_zero_lut
       (.I0(use_zero_flag),
        .I1(zero_flag),
        .I2(alu_result[5]),
        .I3(alu_result[6]),
        .I4(alu_result[7]),
        .I5(1'b1),
        .O5(middle_zero),
        .O6(middle_zero_sel));
  (* HBLKNM = "kcpsm6_decode0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h7777027700000200)) 
    move_type_lut
       (.I0(instruction[12]),
        .I1(instruction[13]),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[16]),
        .I5(1'b1),
        .O5(returni_type),
        .O6(move_type));
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 parity_muxcy_CARRY4
       (.CI(1'b0),
        .CO({NLW_parity_muxcy_CARRY4_CO_UNCONNECTED[3:1],carry_lower_parity}),
        .CYINIT(1'b0),
        .DI({NLW_parity_muxcy_CARRY4_DI_UNCONNECTED[3:1],lower_parity}),
        .O({NLW_parity_muxcy_CARRY4_O_UNCONNECTED[3:2],parity,NLW_parity_muxcy_CARRY4_O_UNCONNECTED[0]}),
        .S({NLW_parity_muxcy_CARRY4_S_UNCONNECTED[3:2],upper_parity,lower_parity_sel}));
  (* HBLKNM = "kcpsm6_vector1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0000F000000023FF)) 
    pc_mode1_lut
       (.I0(instruction[12]),
        .I1(returni_type),
        .I2(move_type),
        .I3(pc_move_is_valid),
        .I4(active_interrupt),
        .I5(1'b1),
        .O5(pc_mode[0]),
        .O6(pc_mode[1]));
  (* HBLKNM = "kcpsm6_vector1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFFFFFFFF00040000)) 
    pc_mode2_lut
       (.I0(instruction[12]),
        .I1(instruction[14]),
        .I2(instruction[15]),
        .I3(instruction[16]),
        .I4(instruction[17]),
        .I5(active_interrupt),
        .O(pc_mode[2]));
  (* HBLKNM = "kcpsm6_decode0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h5A3CFFFF00000000)) 
    pc_move_is_valid_lut
       (.I0(carry_flag),
        .I1(zero_flag),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[16]),
        .I5(instruction[17]),
        .O(pc_move_is_valid));
  (* HBLKNM = "kcpsm6_stack1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFFFF100000002000)) 
    push_pop_lut
       (.I0(instruction[12]),
        .I1(instruction[13]),
        .I2(move_type),
        .I3(pc_move_is_valid),
        .I4(active_interrupt),
        .I5(1'b1),
        .O5(pop_stack),
        .O6(push_stack));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    read_strobe_flop
       (.C(clk),
        .CE(1'b1),
        .D(read_strobe_value),
        .Q(read_strobe),
        .R(active_interrupt));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h4000000001000000)) 
    read_strobe_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[17]),
        .I3(strobe_type),
        .I4(WE),
        .I5(1'b1),
        .O5(read_strobe_value),
        .O6(write_strobe_value));
  (* HBLKNM = "kcpsm6_stack1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h0080020000000000)) 
    regbank_type_lut
       (.I0(instruction[12]),
        .I1(instruction[13]),
        .I2(instruction[14]),
        .I3(instruction[15]),
        .I4(instruction[16]),
        .I5(instruction[17]),
        .O(regbank_type));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    register_enable_flop
       (.C(clk),
        .CE(1'b1),
        .D(register_enable_value),
        .Q(register_enable),
        .R(active_interrupt));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hC0CC0000A0AA0000)) 
    register_enable_lut
       (.I0(flag_enable_type),
        .I1(register_enable_type),
        .I2(instruction[12]),
        .I3(instruction[17]),
        .I4(WE),
        .I5(1'b1),
        .O5(flag_enable_value),
        .O6(register_enable_value));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h00013F3F0010F7CE)) 
    register_enable_type_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[15]),
        .I3(instruction[16]),
        .I4(instruction[17]),
        .I5(1'b1),
        .O5(flag_enable_type),
        .O6(register_enable_type));
  (* HBLKNM = "kcpsm6_control" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hFFFFF55500000EEE)) 
    reset_lut
       (.I0(run),
        .I1(internal_reset),
        .I2(I2),
        .I3(bram_enable),
        .I4(reset),
        .I5(1'b1),
        .O5(run_value),
        .O6(internal_reset_value));
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    run_flop
       (.C(clk),
        .CE(1'b1),
        .D(run_value),
        .Q(run),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    shadow_bank_flop
       (.C(clk),
        .CE(1'b1),
        .D(stack_bank),
        .Q(shadow_bank),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    shadow_carry_flag_flop
       (.C(clk),
        .CE(1'b1),
        .D(stack_carry_flag),
        .Q(shadow_carry_flag),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    shadow_zero_flag_flop
       (.C(clk),
        .CE(1'b1),
        .D(shadow_zero_value),
        .Q(shadow_zero_flag),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    shift_carry_flop
       (.C(clk),
        .CE(1'b1),
        .D(shift_carry_value),
        .Q(shift_carry),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFFFFAACCF0F0F0F0)) 
    shift_carry_lut
       (.I0(register_vector[8]),
        .I1(upper_reg_banks_n_6),
        .I2(shadow_carry_flag),
        .I3(instruction[3]),
        .I4(instruction[7]),
        .I5(instruction[16]),
        .O(shift_carry_value));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    spm_enable_flop
       (.C(clk),
        .CE(1'b1),
        .D(spm_enable_value),
        .Q(spm_enable),
        .R(active_interrupt));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h8000000020000000)) 
    spm_enable_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[17]),
        .I3(strobe_type),
        .I4(WE),
        .I5(1'b1),
        .O5(k_write_strobe_value),
        .O6(spm_enable_value));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    stack_bit_flop
       (.C(clk),
        .CE(1'b1),
        .D(stack_bit),
        .Q(special_bit),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[0].lsb_stack.pointer_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_pointer_value[0]),
        .Q(ADDRA[0]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \stack_loop[0].lsb_stack.stack_muxcy_CARRY4 
       (.CI(1'b0),
        .CO({\stack_loop[3].upper_stack.stack_muxcy_n_0 ,\stack_loop[2].upper_stack.stack_muxcy_n_0 ,\stack_loop[1].upper_stack.stack_muxcy_n_0 ,\stack_loop[0].lsb_stack.stack_muxcy_n_0 }),
        .CYINIT(1'b0),
        .DI(feed_pointer_value[3:0]),
        .O(stack_pointer_value[3:0]),
        .S(half_pointer_value[3:0]));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h001529AAAAAAAAAA)) 
    \stack_loop[0].lsb_stack.stack_pointer_lut 
       (.I0(ADDRA[0]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(WE),
        .I4(bram_enable),
        .I5(1'b1),
        .O5(feed_pointer_value[0]),
        .O6(half_pointer_value[0]));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[1].upper_stack.pointer_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_pointer_value[1]),
        .Q(ADDRA[1]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[1].upper_stack.stack_pointer_lut 
       (.I0(ADDRA[1]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(WE),
        .I4(bram_enable),
        .I5(1'b1),
        .O5(feed_pointer_value[1]),
        .O6(half_pointer_value[1]));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[2].upper_stack.pointer_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_pointer_value[2]),
        .Q(ADDRA[2]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[2].upper_stack.stack_pointer_lut 
       (.I0(ADDRA[2]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(WE),
        .I4(bram_enable),
        .I5(1'b1),
        .O5(feed_pointer_value[2]),
        .O6(half_pointer_value[2]));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[3].upper_stack.pointer_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_pointer_value[3]),
        .Q(ADDRA[3]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack0" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[3].upper_stack.stack_pointer_lut 
       (.I0(ADDRA[3]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(WE),
        .I4(bram_enable),
        .I5(1'b1),
        .O5(feed_pointer_value[3]),
        .O6(half_pointer_value[3]));
  (* HBLKNM = "kcpsm6_stack1" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    \stack_loop[4].upper_stack.pointer_flop 
       (.C(clk),
        .CE(1'b1),
        .D(stack_pointer_value[4]),
        .Q(ADDRA[4]),
        .R(internal_reset));
  (* HBLKNM = "kcpsm6_stack1" *) 
  (* OPT_MODIFIED = "MLO" *) 
  (* XILINX_LEGACY_PRIM = "(MUXCY,XORCY)" *) 
  (* box_type = "PRIMITIVE" *) 
  CARRY4 \stack_loop[4].upper_stack.stack_muxcy_CARRY4 
       (.CI(\stack_loop[3].upper_stack.stack_muxcy_n_0 ),
        .CO({\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_CO_UNCONNECTED [3:1],I2}),
        .CYINIT(1'b0),
        .DI({\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_DI_UNCONNECTED [3:1],feed_pointer_value[4]}),
        .O({\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_O_UNCONNECTED [3:1],stack_pointer_value[4]}),
        .S({\NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_S_UNCONNECTED [3:1],half_pointer_value[4]}));
  (* HBLKNM = "kcpsm6_stack1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h002A252AAAAAAAAA)) 
    \stack_loop[4].upper_stack.stack_pointer_lut 
       (.I0(ADDRA[4]),
        .I1(pop_stack),
        .I2(push_stack),
        .I3(WE),
        .I4(bram_enable),
        .I5(1'b1),
        .O5(feed_pointer_value[4]),
        .O6(half_pointer_value[4]));
  (* HBLKNM = "kcpsm6_stack_ram1" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    stack_ram_high
       (.ADDRA(ADDRA),
        .ADDRB(ADDRA),
        .ADDRC(ADDRA),
        .ADDRD(ADDRA),
        .DIA(address[5:4]),
        .DIB(address[7:6]),
        .DIC(address[9:8]),
        .DID(address[11:10]),
        .DOA({stack_ram_high_n_0,stack_ram_high_n_1}),
        .DOB({stack_ram_high_n_2,stack_ram_high_n_3}),
        .DOC({stack_ram_high_n_4,stack_ram_high_n_5}),
        .DOD({stack_ram_high_n_6,stack_ram_high_n_7}),
        .WCLK(clk),
        .WE(WE));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    stack_ram_low
       (.ADDRA(ADDRA),
        .ADDRB(ADDRA),
        .ADDRC(ADDRA),
        .ADDRD(ADDRA),
        .DIA({zero_flag,carry_flag}),
        .DIB({run,bank}),
        .DIC(address[1:0]),
        .DID(address[3:2]),
        .DOA({stack_zero_flag,stack_carry_flag}),
        .DOB({stack_bit,stack_bank}),
        .DOC(DOC),
        .DOD(DOD),
        .WCLK(clk),
        .WE(WE));
  (* HBLKNM = "kcpsm6_stack_ram0" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    stack_zero_flop
       (.C(clk),
        .CE(1'b1),
        .D(stack_zero_flag),
        .Q(shadow_zero_value),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    sx_addr4_flop
       (.C(clk),
        .CE(1'b1),
        .D(sx_addr4_value),
        .Q(sx_addr),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_interrupt_flop
       (.C(clk),
        .CE(1'b1),
        .D(interrupt),
        .Q(sync_interrupt),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    sync_sleep_flop
       (.C(clk),
        .CE(1'b1),
        .D(sleep),
        .Q(sync_sleep),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    t_state1_flop
       (.C(clk),
        .CE(1'b1),
        .D(t_state_value[1]),
        .Q(WE),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_control" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    t_state2_flop
       (.C(clk),
        .CE(1'b1),
        .D(t_state_value[2]),
        .Q(bram_enable),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_control" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'h0083000B00C4004C)) 
    t_state_lut
       (.I0(WE),
        .I1(bram_enable),
        .I2(sync_sleep),
        .I3(internal_reset),
        .I4(special_bit),
        .I5(1'b1),
        .O5(t_state_value[1]),
        .O6(t_state_value[2]));
  (* HBLKNM = "kcpsm6_decode2" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    upper_parity_lut
       (.I0(arith_logical_result[2]),
        .I1(arith_logical_result[3]),
        .I2(arith_logical_result[4]),
        .I3(arith_logical_result[5]),
        .I4(arith_logical_result[6]),
        .I5(arith_logical_result[7]),
        .O(upper_parity));
  (* HBLKNM = "kcpsm6_reg1" *) 
  (* box_type = "PRIMITIVE" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000),
    .IS_WCLK_INVERTED(1'b0)) 
    upper_reg_banks
       (.ADDRA({bank,instruction[7:4]}),
        .ADDRB({sx_addr,instruction[11:8]}),
        .ADDRC({bank,instruction[7:4]}),
        .ADDRD({sx_addr,instruction[11:8]}),
        .DIA(alu_result[5:4]),
        .DIB(alu_result[5:4]),
        .DIC(alu_result[7:6]),
        .DID(alu_result[7:6]),
        .DOA(register_vector[5:4]),
        .DOB({upper_reg_banks_n_2,upper_reg_banks_n_3}),
        .DOC(register_vector[7:6]),
        .DOD({upper_reg_banks_n_6,upper_reg_banks_n_7}),
        .WCLK(clk),
        .WE(register_enable));
  (* HBLKNM = "kcpsm6_flags" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6 #(
    .INIT(64'hFBFF000000000000)) 
    upper_zero_lut
       (.I0(instruction[14]),
        .I1(instruction[15]),
        .I2(instruction[16]),
        .I3(1'b1),
        .I4(1'b1),
        .I5(1'b1),
        .O(upper_zero_sel));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE GND:R" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    use_zero_flag_flop
       (.C(clk),
        .CE(1'b1),
        .D(use_zero_flag_value),
        .Q(use_zero_flag),
        .R(1'b0));
  (* HBLKNM = "kcpsm6_decode1" *) 
  (* box_type = "PRIMITIVE" *) 
  LUT6_2 #(
    .INIT(64'hA280000000F000F0)) 
    use_zero_flag_lut
       (.I0(instruction[13]),
        .I1(instruction[14]),
        .I2(instruction[15]),
        .I3(instruction[16]),
        .I4(1'b1),
        .I5(1'b1),
        .O5(strobe_type),
        .O6(use_zero_flag_value));
  (* HBLKNM = "kcpsm6_strobes" *) 
  (* XILINX_LEGACY_PRIM = "FDR" *) 
  (* XILINX_TRANSFORM_PINMAP = "VCC:CE" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    write_strobe_flop
       (.C(clk),
        .CE(1'b1),
        .D(write_strobe_value),
        .Q(write_strobe),
        .R(active_interrupt));
  (* HBLKNM = "kcpsm6_flags" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
    zero_flag_flop
       (.C(clk),
        .CE(flag_enable),
        .D(zero_flag_value),
        .Q(zero_flag),
        .R(internal_reset));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
