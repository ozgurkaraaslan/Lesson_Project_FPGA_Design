-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Thu Jan 18 14:55:34 2024
-- Host        : DESKTOP-NOGC60I running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/fb29_/Desktop/EHB_embedded/Final/final_project_2/final_project_2.gen/sources_1/bd/design_1/ip/design_1_kcpsm6_1_0/design_1_kcpsm6_1_0_sim_netlist.vhdl
-- Design      : design_1_kcpsm6_1_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_kcpsm6_1_0_kcpsm6 is
  port (
    bram_enable : out STD_LOGIC;
    interrupt_ack : out STD_LOGIC;
    k_write_strobe : out STD_LOGIC;
    write_strobe : out STD_LOGIC;
    read_strobe : out STD_LOGIC;
    address : out STD_LOGIC_VECTOR ( 11 downto 0 );
    port_id : out STD_LOGIC_VECTOR ( 7 downto 0 );
    out_port : out STD_LOGIC_VECTOR ( 7 downto 0 );
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    sleep : in STD_LOGIC;
    instruction : in STD_LOGIC_VECTOR ( 17 downto 0 );
    interrupt : in STD_LOGIC;
    in_port : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_kcpsm6_1_0_kcpsm6 : entity is "kcpsm6";
end design_1_kcpsm6_1_0_kcpsm6;

architecture STRUCTURE of design_1_kcpsm6_1_0_kcpsm6 is
  signal ADDRA : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal CI : STD_LOGIC;
  signal DOC : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal DOD : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal I2 : STD_LOGIC;
  signal WE : STD_LOGIC;
  signal active_interrupt : STD_LOGIC;
  signal active_interrupt_value : STD_LOGIC;
  signal \^address\ : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal alu_mux_sel : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal alu_mux_sel_value : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal alu_result : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal arith_carry : STD_LOGIC;
  signal arith_carry_in : STD_LOGIC;
  signal arith_carry_value : STD_LOGIC;
  signal arith_logical_result : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal arith_logical_sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal arith_logical_value : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal bank : STD_LOGIC;
  signal bank_value : STD_LOGIC;
  signal \^bram_enable\ : STD_LOGIC;
  signal carry_flag : STD_LOGIC;
  signal carry_flag_value : STD_LOGIC;
  signal carry_in_zero : STD_LOGIC;
  signal carry_lower_parity : STD_LOGIC;
  signal carry_lower_zero : STD_LOGIC;
  signal carry_middle_zero : STD_LOGIC;
  signal carry_pc : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_n_0\ : STD_LOGIC;
  signal \data_path_loop[1].upper_arith_logical.arith_logical_muxcy_n_0\ : STD_LOGIC;
  signal \data_path_loop[2].upper_arith_logical.arith_logical_muxcy_n_0\ : STD_LOGIC;
  signal \data_path_loop[3].upper_arith_logical.arith_logical_muxcy_n_0\ : STD_LOGIC;
  signal \data_path_loop[4].upper_arith_logical.arith_logical_muxcy_n_0\ : STD_LOGIC;
  signal \data_path_loop[5].upper_arith_logical.arith_logical_muxcy_n_0\ : STD_LOGIC;
  signal \data_path_loop[6].upper_arith_logical.arith_logical_muxcy_n_0\ : STD_LOGIC;
  signal drive_carry_in_zero : STD_LOGIC;
  signal feed_pointer_value : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal flag_enable : STD_LOGIC;
  signal flag_enable_type : STD_LOGIC;
  signal flag_enable_value : STD_LOGIC;
  signal half_arith_logical : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal half_pc : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal half_pointer_value : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal int_enable_type : STD_LOGIC;
  signal internal_reset : STD_LOGIC;
  signal internal_reset_value : STD_LOGIC;
  signal interrupt_enable : STD_LOGIC;
  signal interrupt_enable_value : STD_LOGIC;
  signal k_write_strobe_value : STD_LOGIC;
  signal loadstar_type : STD_LOGIC;
  signal logical_carry_mask : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal lower_parity : STD_LOGIC;
  signal lower_parity_sel : STD_LOGIC;
  signal lower_zero : STD_LOGIC;
  signal lower_zero_sel : STD_LOGIC;
  signal middle_zero : STD_LOGIC;
  signal middle_zero_sel : STD_LOGIC;
  signal move_type : STD_LOGIC;
  signal parity : STD_LOGIC;
  signal pc_mode : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal pc_move_is_valid : STD_LOGIC;
  signal pc_value : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal pc_vector : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal pop_stack : STD_LOGIC;
  signal \^port_id\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal push_stack : STD_LOGIC;
  signal read_strobe_value : STD_LOGIC;
  signal regbank_type : STD_LOGIC;
  signal register_enable : STD_LOGIC;
  signal register_enable_type : STD_LOGIC;
  signal register_enable_value : STD_LOGIC;
  signal register_vector : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal return_vector : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal returni_type : STD_LOGIC;
  signal run : STD_LOGIC;
  signal run_value : STD_LOGIC;
  signal shadow_bank : STD_LOGIC;
  signal shadow_carry_flag : STD_LOGIC;
  signal shadow_zero_flag : STD_LOGIC;
  signal shadow_zero_value : STD_LOGIC;
  signal shift_carry : STD_LOGIC;
  signal shift_carry_value : STD_LOGIC;
  signal shift_in_bit : STD_LOGIC;
  signal shift_rotate_result : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal shift_rotate_value : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal special_bit : STD_LOGIC;
  signal spm_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal spm_enable : STD_LOGIC;
  signal spm_enable_value : STD_LOGIC;
  signal spm_ram_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal stack_bank : STD_LOGIC;
  signal stack_bit : STD_LOGIC;
  signal stack_carry_flag : STD_LOGIC;
  signal \stack_loop[0].lsb_stack.stack_muxcy_n_0\ : STD_LOGIC;
  signal \stack_loop[1].upper_stack.stack_muxcy_n_0\ : STD_LOGIC;
  signal \stack_loop[2].upper_stack.stack_muxcy_n_0\ : STD_LOGIC;
  signal \stack_loop[3].upper_stack.stack_muxcy_n_0\ : STD_LOGIC;
  signal stack_pointer_value : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal stack_ram_high_n_0 : STD_LOGIC;
  signal stack_ram_high_n_1 : STD_LOGIC;
  signal stack_ram_high_n_2 : STD_LOGIC;
  signal stack_ram_high_n_3 : STD_LOGIC;
  signal stack_ram_high_n_4 : STD_LOGIC;
  signal stack_ram_high_n_5 : STD_LOGIC;
  signal stack_ram_high_n_6 : STD_LOGIC;
  signal stack_ram_high_n_7 : STD_LOGIC;
  signal stack_zero_flag : STD_LOGIC;
  signal strobe_type : STD_LOGIC;
  signal sx_addr : STD_LOGIC_VECTOR ( 4 to 4 );
  signal sx_addr4_value : STD_LOGIC;
  signal sync_interrupt : STD_LOGIC;
  signal sync_sleep : STD_LOGIC;
  signal t_state_value : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal upper_parity : STD_LOGIC;
  signal upper_reg_banks_n_2 : STD_LOGIC;
  signal upper_reg_banks_n_3 : STD_LOGIC;
  signal upper_reg_banks_n_6 : STD_LOGIC;
  signal upper_reg_banks_n_7 : STD_LOGIC;
  signal upper_zero_sel : STD_LOGIC;
  signal use_zero_flag : STD_LOGIC;
  signal use_zero_flag_value : STD_LOGIC;
  signal write_strobe_value : STD_LOGIC;
  signal zero_flag : STD_LOGIC;
  signal zero_flag_value : STD_LOGIC;
  signal \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_arith_carry_xorcy_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_arith_carry_xorcy_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_arith_carry_xorcy_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_arith_carry_xorcy_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_init_zero_muxcy_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_parity_muxcy_CARRY4_CO_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_parity_muxcy_CARRY4_DI_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal NLW_parity_muxcy_CARRY4_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_parity_muxcy_CARRY4_S_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_DI_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_S_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  attribute HBLKNM : string;
  attribute HBLKNM of active_interrupt_flop : label is "kcpsm6_control";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of active_interrupt_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of active_interrupt_flop : label is "VCC:CE GND:R";
  attribute box_type : string;
  attribute box_type of active_interrupt_flop : label is "PRIMITIVE";
  attribute HBLKNM of active_interrupt_lut : label is "kcpsm6_control";
  attribute box_type of active_interrupt_lut : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[0].lsb_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[0].lsb_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[0].lsb_pc.pc_muxcy_CARRY4\ : label is "kcpsm6_pc0";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \address_loop[0].lsb_pc.pc_muxcy_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \address_loop[0].lsb_pc.pc_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \address_loop[0].lsb_pc.pc_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[0].output_data.pc_vector_mux_lut\ : label is "kcpsm6_vector0";
  attribute box_type of \address_loop[0].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[0].pc_flop\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[0].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[0].return_vector_flop\ : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of \address_loop[0].return_vector_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \address_loop[0].return_vector_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \address_loop[0].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[10].output_data.pc_vector_mux_lut\ : label is "kcpsm6_vector1";
  attribute box_type of \address_loop[10].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[10].pc_flop\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[10].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[10].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[10].return_vector_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \address_loop[10].return_vector_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \address_loop[10].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[10].upper_pc.low_int_vector.pc_lut\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[10].upper_pc.low_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[11].pc_flop\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[11].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[11].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[11].return_vector_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \address_loop[11].return_vector_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \address_loop[11].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[11].upper_pc.low_int_vector.pc_lut\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[11].upper_pc.low_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[1].pc_flop\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[1].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[1].return_vector_flop\ : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of \address_loop[1].return_vector_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \address_loop[1].return_vector_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \address_loop[1].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[1].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[1].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[2].output_data.pc_vector_mux_lut\ : label is "kcpsm6_vector0";
  attribute box_type of \address_loop[2].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[2].pc_flop\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[2].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[2].return_vector_flop\ : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of \address_loop[2].return_vector_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \address_loop[2].return_vector_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \address_loop[2].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[2].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[2].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[3].pc_flop\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[3].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[3].return_vector_flop\ : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of \address_loop[3].return_vector_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \address_loop[3].return_vector_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \address_loop[3].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[3].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc0";
  attribute box_type of \address_loop[3].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[4].output_data.pc_vector_mux_lut\ : label is "kcpsm6_vector0";
  attribute box_type of \address_loop[4].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[4].pc_flop\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[4].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[4].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[4].return_vector_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \address_loop[4].return_vector_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \address_loop[4].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[4].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[4].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[4].upper_pc.mid_pc.pc_muxcy_CARRY4\ : label is "kcpsm6_pc1";
  attribute OPT_MODIFIED of \address_loop[4].upper_pc.mid_pc.pc_muxcy_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \address_loop[4].upper_pc.mid_pc.pc_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \address_loop[4].upper_pc.mid_pc.pc_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[5].pc_flop\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[5].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[5].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[5].return_vector_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \address_loop[5].return_vector_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \address_loop[5].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[5].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[5].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[6].output_data.pc_vector_mux_lut\ : label is "kcpsm6_vector0";
  attribute box_type of \address_loop[6].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[6].pc_flop\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[6].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[6].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[6].return_vector_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \address_loop[6].return_vector_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \address_loop[6].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[6].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[6].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[7].pc_flop\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[7].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[7].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[7].return_vector_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \address_loop[7].return_vector_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \address_loop[7].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[7].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc1";
  attribute box_type of \address_loop[7].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[8].output_data.pc_vector_mux_lut\ : label is "kcpsm6_vector1";
  attribute box_type of \address_loop[8].output_data.pc_vector_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[8].pc_flop\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[8].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[8].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[8].return_vector_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \address_loop[8].return_vector_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \address_loop[8].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[8].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[8].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4\ : label is "kcpsm6_pc2";
  attribute OPT_MODIFIED of \address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[9].pc_flop\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[9].pc_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[9].return_vector_flop\ : label is "kcpsm6_stack_ram1";
  attribute XILINX_LEGACY_PRIM of \address_loop[9].return_vector_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \address_loop[9].return_vector_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \address_loop[9].return_vector_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \address_loop[9].upper_pc.high_int_vector.pc_lut\ : label is "kcpsm6_pc2";
  attribute box_type of \address_loop[9].upper_pc.high_int_vector.pc_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of alu_decode0_lut : label is "kcpsm6_decode2";
  attribute box_type of alu_decode0_lut : label is "PRIMITIVE";
  attribute HBLKNM of alu_decode1_lut : label is "kcpsm6_decode1";
  attribute box_type of alu_decode1_lut : label is "PRIMITIVE";
  attribute HBLKNM of alu_decode2_lut : label is "kcpsm6_decode2";
  attribute box_type of alu_decode2_lut : label is "PRIMITIVE";
  attribute HBLKNM of alu_mux_sel0_flop : label is "kcpsm6_decode2";
  attribute XILINX_LEGACY_PRIM of alu_mux_sel0_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of alu_mux_sel0_flop : label is "VCC:CE GND:R";
  attribute box_type of alu_mux_sel0_flop : label is "PRIMITIVE";
  attribute HBLKNM of alu_mux_sel1_flop : label is "kcpsm6_decode1";
  attribute XILINX_LEGACY_PRIM of alu_mux_sel1_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of alu_mux_sel1_flop : label is "VCC:CE GND:R";
  attribute box_type of alu_mux_sel1_flop : label is "PRIMITIVE";
  attribute HBLKNM of arith_carry_flop : label is "kcpsm6_control";
  attribute XILINX_LEGACY_PRIM of arith_carry_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of arith_carry_flop : label is "VCC:CE GND:R";
  attribute box_type of arith_carry_flop : label is "PRIMITIVE";
  attribute HBLKNM of arith_carry_xorcy_CARRY4 : label is "kcpsm6_control";
  attribute OPT_MODIFIED of arith_carry_xorcy_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM of arith_carry_xorcy_CARRY4 : label is "(MUXCY,XORCY)";
  attribute box_type of arith_carry_xorcy_CARRY4 : label is "PRIMITIVE";
  attribute HBLKNM of bank_flop : label is "kcpsm6_stack1";
  attribute XILINX_LEGACY_PRIM of bank_flop : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of bank_flop : label is "VCC:CE";
  attribute box_type of bank_flop : label is "PRIMITIVE";
  attribute HBLKNM of bank_lut : label is "kcpsm6_stack1";
  attribute box_type of bank_lut : label is "PRIMITIVE";
  attribute HBLKNM of carry_flag_flop : label is "kcpsm6_flags";
  attribute box_type of carry_flag_flop : label is "PRIMITIVE";
  attribute HBLKNM of carry_flag_lut : label is "kcpsm6_flags";
  attribute box_type of carry_flag_lut : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].alu_mux_lut\ : label is "kcpsm6_alu0";
  attribute box_type of \data_path_loop[0].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].arith_logical_flop\ : label is "kcpsm6_add0";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[0].arith_logical_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[0].arith_logical_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[0].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].arith_logical_lut\ : label is "kcpsm6_add0";
  attribute box_type of \data_path_loop[0].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].low_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[0].low_hwbuild.shift_rotate_flop\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[0].low_hwbuild.shift_rotate_flop\ : label is "VCC:CE";
  attribute box_type of \data_path_loop[0].low_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4\ : label is "kcpsm6_add0";
  attribute OPT_MODIFIED of \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].lsb_shift_rotate.shift_bit_lut\ : label is "kcpsm6_decode1";
  attribute box_type of \data_path_loop[0].lsb_shift_rotate.shift_bit_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].lsb_shift_rotate.shift_rotate_lut\ : label is "kcpsm6_sandr";
  attribute box_type of \data_path_loop[0].lsb_shift_rotate.shift_rotate_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].output_data.sy_kk_mux_lut\ : label is "kcpsm6_port_id";
  attribute box_type of \data_path_loop[0].output_data.sy_kk_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].second_operand.out_port_lut\ : label is "kcpsm6_out_port";
  attribute box_type of \data_path_loop[0].second_operand.out_port_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].small_spm.small_spm_ram.spm_ram\ : label is "kcpsm6_spm0";
  attribute box_type of \data_path_loop[0].small_spm.small_spm_ram.spm_ram\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[0].small_spm.spm_flop\ : label is "kcpsm6_spm0";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[0].small_spm.spm_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[0].small_spm.spm_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[0].small_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[1].alu_mux_lut\ : label is "kcpsm6_alu0";
  attribute box_type of \data_path_loop[1].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[1].arith_logical_flop\ : label is "kcpsm6_add0";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[1].arith_logical_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[1].arith_logical_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[1].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[1].arith_logical_lut\ : label is "kcpsm6_add0";
  attribute box_type of \data_path_loop[1].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[1].low_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[1].low_hwbuild.shift_rotate_flop\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[1].low_hwbuild.shift_rotate_flop\ : label is "VCC:CE";
  attribute box_type of \data_path_loop[1].low_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[1].small_spm.spm_flop\ : label is "kcpsm6_spm0";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[1].small_spm.spm_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[1].small_spm.spm_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[1].small_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].alu_mux_lut\ : label is "kcpsm6_alu0";
  attribute box_type of \data_path_loop[2].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].arith_logical_flop\ : label is "kcpsm6_add0";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[2].arith_logical_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[2].arith_logical_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[2].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].arith_logical_lut\ : label is "kcpsm6_add0";
  attribute box_type of \data_path_loop[2].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].low_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[2].low_hwbuild.shift_rotate_flop\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[2].low_hwbuild.shift_rotate_flop\ : label is "VCC:CE";
  attribute box_type of \data_path_loop[2].low_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].mid_shift_rotate.shift_rotate_lut\ : label is "kcpsm6_sandr";
  attribute box_type of \data_path_loop[2].mid_shift_rotate.shift_rotate_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].output_data.sy_kk_mux_lut\ : label is "kcpsm6_port_id";
  attribute box_type of \data_path_loop[2].output_data.sy_kk_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].second_operand.out_port_lut\ : label is "kcpsm6_out_port";
  attribute box_type of \data_path_loop[2].second_operand.out_port_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[2].small_spm.spm_flop\ : label is "kcpsm6_spm0";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[2].small_spm.spm_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[2].small_spm.spm_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[2].small_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[3].alu_mux_lut\ : label is "kcpsm6_alu0";
  attribute box_type of \data_path_loop[3].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[3].arith_logical_flop\ : label is "kcpsm6_add0";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[3].arith_logical_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[3].arith_logical_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[3].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[3].arith_logical_lut\ : label is "kcpsm6_add0";
  attribute box_type of \data_path_loop[3].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[3].low_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[3].low_hwbuild.shift_rotate_flop\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[3].low_hwbuild.shift_rotate_flop\ : label is "VCC:CE";
  attribute box_type of \data_path_loop[3].low_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[3].small_spm.spm_flop\ : label is "kcpsm6_spm0";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[3].small_spm.spm_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[3].small_spm.spm_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[3].small_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].alu_mux_lut\ : label is "kcpsm6_alu1";
  attribute box_type of \data_path_loop[4].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].arith_logical_flop\ : label is "kcpsm6_add1";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[4].arith_logical_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[4].arith_logical_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[4].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].arith_logical_lut\ : label is "kcpsm6_add1";
  attribute box_type of \data_path_loop[4].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].low_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[4].low_hwbuild.shift_rotate_flop\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[4].low_hwbuild.shift_rotate_flop\ : label is "VCC:CE";
  attribute box_type of \data_path_loop[4].low_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].mid_shift_rotate.shift_rotate_lut\ : label is "kcpsm6_sandr";
  attribute box_type of \data_path_loop[4].mid_shift_rotate.shift_rotate_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].output_data.sy_kk_mux_lut\ : label is "kcpsm6_port_id";
  attribute box_type of \data_path_loop[4].output_data.sy_kk_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].second_operand.out_port_lut\ : label is "kcpsm6_out_port";
  attribute box_type of \data_path_loop[4].second_operand.out_port_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].small_spm.small_spm_ram.spm_ram\ : label is "kcpsm6_spm1";
  attribute box_type of \data_path_loop[4].small_spm.small_spm_ram.spm_ram\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].small_spm.spm_flop\ : label is "kcpsm6_spm1";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[4].small_spm.spm_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[4].small_spm.spm_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[4].small_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[4].upper_arith_logical.arith_logical_muxcy_CARRY4\ : label is "kcpsm6_add1";
  attribute OPT_MODIFIED of \data_path_loop[4].upper_arith_logical.arith_logical_muxcy_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[4].upper_arith_logical.arith_logical_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \data_path_loop[4].upper_arith_logical.arith_logical_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[5].alu_mux_lut\ : label is "kcpsm6_alu1";
  attribute box_type of \data_path_loop[5].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[5].arith_logical_flop\ : label is "kcpsm6_add1";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[5].arith_logical_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[5].arith_logical_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[5].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[5].arith_logical_lut\ : label is "kcpsm6_add1";
  attribute box_type of \data_path_loop[5].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[5].low_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[5].low_hwbuild.shift_rotate_flop\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[5].low_hwbuild.shift_rotate_flop\ : label is "VCC:CE";
  attribute box_type of \data_path_loop[5].low_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[5].small_spm.spm_flop\ : label is "kcpsm6_spm1";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[5].small_spm.spm_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[5].small_spm.spm_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[5].small_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].alu_mux_lut\ : label is "kcpsm6_alu1";
  attribute box_type of \data_path_loop[6].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].arith_logical_flop\ : label is "kcpsm6_add1";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[6].arith_logical_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[6].arith_logical_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[6].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].arith_logical_lut\ : label is "kcpsm6_add1";
  attribute box_type of \data_path_loop[6].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].low_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[6].low_hwbuild.shift_rotate_flop\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[6].low_hwbuild.shift_rotate_flop\ : label is "VCC:CE";
  attribute box_type of \data_path_loop[6].low_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].msb_shift_rotate.shift_rotate_lut\ : label is "kcpsm6_sandr";
  attribute box_type of \data_path_loop[6].msb_shift_rotate.shift_rotate_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].output_data.sy_kk_mux_lut\ : label is "kcpsm6_port_id";
  attribute box_type of \data_path_loop[6].output_data.sy_kk_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].second_operand.out_port_lut\ : label is "kcpsm6_out_port";
  attribute box_type of \data_path_loop[6].second_operand.out_port_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[6].small_spm.spm_flop\ : label is "kcpsm6_spm1";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[6].small_spm.spm_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[6].small_spm.spm_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[6].small_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[7].alu_mux_lut\ : label is "kcpsm6_alu1";
  attribute box_type of \data_path_loop[7].alu_mux_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[7].arith_logical_flop\ : label is "kcpsm6_add1";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[7].arith_logical_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[7].arith_logical_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[7].arith_logical_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[7].arith_logical_lut\ : label is "kcpsm6_add1";
  attribute box_type of \data_path_loop[7].arith_logical_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[7].low_hwbuild.shift_rotate_flop\ : label is "kcpsm6_sandr";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[7].low_hwbuild.shift_rotate_flop\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[7].low_hwbuild.shift_rotate_flop\ : label is "VCC:CE";
  attribute box_type of \data_path_loop[7].low_hwbuild.shift_rotate_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \data_path_loop[7].small_spm.spm_flop\ : label is "kcpsm6_spm1";
  attribute XILINX_LEGACY_PRIM of \data_path_loop[7].small_spm.spm_flop\ : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of \data_path_loop[7].small_spm.spm_flop\ : label is "VCC:CE GND:R";
  attribute box_type of \data_path_loop[7].small_spm.spm_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of flag_enable_flop : label is "kcpsm6_strobes";
  attribute XILINX_LEGACY_PRIM of flag_enable_flop : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of flag_enable_flop : label is "VCC:CE";
  attribute box_type of flag_enable_flop : label is "PRIMITIVE";
  attribute HBLKNM of init_zero_muxcy_CARRY4 : label is "kcpsm6_flags";
  attribute OPT_MODIFIED of init_zero_muxcy_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM of init_zero_muxcy_CARRY4 : label is "(MUXCY,XORCY)";
  attribute box_type of init_zero_muxcy_CARRY4 : label is "PRIMITIVE";
  attribute HBLKNM of int_enable_type_lut : label is "kcpsm6_decode0";
  attribute box_type of int_enable_type_lut : label is "PRIMITIVE";
  attribute HBLKNM of internal_reset_flop : label is "kcpsm6_control";
  attribute XILINX_LEGACY_PRIM of internal_reset_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of internal_reset_flop : label is "VCC:CE GND:R";
  attribute box_type of internal_reset_flop : label is "PRIMITIVE";
  attribute HBLKNM of interrupt_ack_flop : label is "kcpsm6_decode1";
  attribute XILINX_LEGACY_PRIM of interrupt_ack_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of interrupt_ack_flop : label is "VCC:CE GND:R";
  attribute box_type of interrupt_ack_flop : label is "PRIMITIVE";
  attribute HBLKNM of interrupt_enable_flop : label is "kcpsm6_decode0";
  attribute XILINX_LEGACY_PRIM of interrupt_enable_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of interrupt_enable_flop : label is "VCC:CE GND:R";
  attribute box_type of interrupt_enable_flop : label is "PRIMITIVE";
  attribute HBLKNM of interrupt_enable_lut : label is "kcpsm6_decode0";
  attribute box_type of interrupt_enable_lut : label is "PRIMITIVE";
  attribute HBLKNM of k_write_strobe_flop : label is "kcpsm6_strobes";
  attribute XILINX_LEGACY_PRIM of k_write_strobe_flop : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of k_write_strobe_flop : label is "VCC:CE";
  attribute box_type of k_write_strobe_flop : label is "PRIMITIVE";
  attribute HBLKNM of lower_parity_lut : label is "kcpsm6_decode2";
  attribute box_type of lower_parity_lut : label is "PRIMITIVE";
  attribute HBLKNM of lower_reg_banks : label is "kcpsm6_reg0";
  attribute box_type of lower_reg_banks : label is "PRIMITIVE";
  attribute HBLKNM of lower_zero_lut : label is "kcpsm6_flags";
  attribute box_type of lower_zero_lut : label is "PRIMITIVE";
  attribute HBLKNM of middle_zero_lut : label is "kcpsm6_flags";
  attribute box_type of middle_zero_lut : label is "PRIMITIVE";
  attribute HBLKNM of move_type_lut : label is "kcpsm6_decode0";
  attribute box_type of move_type_lut : label is "PRIMITIVE";
  attribute HBLKNM of parity_muxcy_CARRY4 : label is "kcpsm6_decode2";
  attribute OPT_MODIFIED of parity_muxcy_CARRY4 : label is "MLO";
  attribute XILINX_LEGACY_PRIM of parity_muxcy_CARRY4 : label is "(MUXCY,XORCY)";
  attribute box_type of parity_muxcy_CARRY4 : label is "PRIMITIVE";
  attribute HBLKNM of pc_mode1_lut : label is "kcpsm6_vector1";
  attribute box_type of pc_mode1_lut : label is "PRIMITIVE";
  attribute HBLKNM of pc_mode2_lut : label is "kcpsm6_vector1";
  attribute box_type of pc_mode2_lut : label is "PRIMITIVE";
  attribute HBLKNM of pc_move_is_valid_lut : label is "kcpsm6_decode0";
  attribute box_type of pc_move_is_valid_lut : label is "PRIMITIVE";
  attribute HBLKNM of push_pop_lut : label is "kcpsm6_stack1";
  attribute box_type of push_pop_lut : label is "PRIMITIVE";
  attribute HBLKNM of read_strobe_flop : label is "kcpsm6_strobes";
  attribute XILINX_LEGACY_PRIM of read_strobe_flop : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of read_strobe_flop : label is "VCC:CE";
  attribute box_type of read_strobe_flop : label is "PRIMITIVE";
  attribute HBLKNM of read_strobe_lut : label is "kcpsm6_strobes";
  attribute box_type of read_strobe_lut : label is "PRIMITIVE";
  attribute HBLKNM of regbank_type_lut : label is "kcpsm6_stack1";
  attribute box_type of regbank_type_lut : label is "PRIMITIVE";
  attribute HBLKNM of register_enable_flop : label is "kcpsm6_strobes";
  attribute XILINX_LEGACY_PRIM of register_enable_flop : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of register_enable_flop : label is "VCC:CE";
  attribute box_type of register_enable_flop : label is "PRIMITIVE";
  attribute HBLKNM of register_enable_lut : label is "kcpsm6_strobes";
  attribute box_type of register_enable_lut : label is "PRIMITIVE";
  attribute HBLKNM of register_enable_type_lut : label is "kcpsm6_strobes";
  attribute box_type of register_enable_type_lut : label is "PRIMITIVE";
  attribute HBLKNM of reset_lut : label is "kcpsm6_control";
  attribute box_type of reset_lut : label is "PRIMITIVE";
  attribute HBLKNM of run_flop : label is "kcpsm6_control";
  attribute XILINX_LEGACY_PRIM of run_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of run_flop : label is "VCC:CE GND:R";
  attribute box_type of run_flop : label is "PRIMITIVE";
  attribute HBLKNM of shadow_bank_flop : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of shadow_bank_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of shadow_bank_flop : label is "VCC:CE GND:R";
  attribute box_type of shadow_bank_flop : label is "PRIMITIVE";
  attribute HBLKNM of shadow_carry_flag_flop : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of shadow_carry_flag_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of shadow_carry_flag_flop : label is "VCC:CE GND:R";
  attribute box_type of shadow_carry_flag_flop : label is "PRIMITIVE";
  attribute HBLKNM of shadow_zero_flag_flop : label is "kcpsm6_decode1";
  attribute XILINX_LEGACY_PRIM of shadow_zero_flag_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of shadow_zero_flag_flop : label is "VCC:CE GND:R";
  attribute box_type of shadow_zero_flag_flop : label is "PRIMITIVE";
  attribute HBLKNM of shift_carry_flop : label is "kcpsm6_decode1";
  attribute XILINX_LEGACY_PRIM of shift_carry_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of shift_carry_flop : label is "VCC:CE GND:R";
  attribute box_type of shift_carry_flop : label is "PRIMITIVE";
  attribute HBLKNM of shift_carry_lut : label is "kcpsm6_decode1";
  attribute box_type of shift_carry_lut : label is "PRIMITIVE";
  attribute HBLKNM of spm_enable_flop : label is "kcpsm6_strobes";
  attribute XILINX_LEGACY_PRIM of spm_enable_flop : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of spm_enable_flop : label is "VCC:CE";
  attribute box_type of spm_enable_flop : label is "PRIMITIVE";
  attribute HBLKNM of spm_enable_lut : label is "kcpsm6_strobes";
  attribute box_type of spm_enable_lut : label is "PRIMITIVE";
  attribute HBLKNM of stack_bit_flop : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of stack_bit_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of stack_bit_flop : label is "VCC:CE GND:R";
  attribute box_type of stack_bit_flop : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[0].lsb_stack.pointer_flop\ : label is "kcpsm6_stack0";
  attribute XILINX_LEGACY_PRIM of \stack_loop[0].lsb_stack.pointer_flop\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \stack_loop[0].lsb_stack.pointer_flop\ : label is "VCC:CE";
  attribute box_type of \stack_loop[0].lsb_stack.pointer_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[0].lsb_stack.stack_muxcy_CARRY4\ : label is "kcpsm6_stack0";
  attribute OPT_MODIFIED of \stack_loop[0].lsb_stack.stack_muxcy_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \stack_loop[0].lsb_stack.stack_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \stack_loop[0].lsb_stack.stack_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[0].lsb_stack.stack_pointer_lut\ : label is "kcpsm6_stack0";
  attribute box_type of \stack_loop[0].lsb_stack.stack_pointer_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[1].upper_stack.pointer_flop\ : label is "kcpsm6_stack0";
  attribute XILINX_LEGACY_PRIM of \stack_loop[1].upper_stack.pointer_flop\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \stack_loop[1].upper_stack.pointer_flop\ : label is "VCC:CE";
  attribute box_type of \stack_loop[1].upper_stack.pointer_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[1].upper_stack.stack_pointer_lut\ : label is "kcpsm6_stack0";
  attribute box_type of \stack_loop[1].upper_stack.stack_pointer_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[2].upper_stack.pointer_flop\ : label is "kcpsm6_stack0";
  attribute XILINX_LEGACY_PRIM of \stack_loop[2].upper_stack.pointer_flop\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \stack_loop[2].upper_stack.pointer_flop\ : label is "VCC:CE";
  attribute box_type of \stack_loop[2].upper_stack.pointer_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[2].upper_stack.stack_pointer_lut\ : label is "kcpsm6_stack0";
  attribute box_type of \stack_loop[2].upper_stack.stack_pointer_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[3].upper_stack.pointer_flop\ : label is "kcpsm6_stack0";
  attribute XILINX_LEGACY_PRIM of \stack_loop[3].upper_stack.pointer_flop\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \stack_loop[3].upper_stack.pointer_flop\ : label is "VCC:CE";
  attribute box_type of \stack_loop[3].upper_stack.pointer_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[3].upper_stack.stack_pointer_lut\ : label is "kcpsm6_stack0";
  attribute box_type of \stack_loop[3].upper_stack.stack_pointer_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[4].upper_stack.pointer_flop\ : label is "kcpsm6_stack1";
  attribute XILINX_LEGACY_PRIM of \stack_loop[4].upper_stack.pointer_flop\ : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of \stack_loop[4].upper_stack.pointer_flop\ : label is "VCC:CE";
  attribute box_type of \stack_loop[4].upper_stack.pointer_flop\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[4].upper_stack.stack_muxcy_CARRY4\ : label is "kcpsm6_stack1";
  attribute OPT_MODIFIED of \stack_loop[4].upper_stack.stack_muxcy_CARRY4\ : label is "MLO";
  attribute XILINX_LEGACY_PRIM of \stack_loop[4].upper_stack.stack_muxcy_CARRY4\ : label is "(MUXCY,XORCY)";
  attribute box_type of \stack_loop[4].upper_stack.stack_muxcy_CARRY4\ : label is "PRIMITIVE";
  attribute HBLKNM of \stack_loop[4].upper_stack.stack_pointer_lut\ : label is "kcpsm6_stack1";
  attribute box_type of \stack_loop[4].upper_stack.stack_pointer_lut\ : label is "PRIMITIVE";
  attribute HBLKNM of stack_ram_high : label is "kcpsm6_stack_ram1";
  attribute box_type of stack_ram_high : label is "PRIMITIVE";
  attribute HBLKNM of stack_ram_low : label is "kcpsm6_stack_ram0";
  attribute box_type of stack_ram_low : label is "PRIMITIVE";
  attribute HBLKNM of stack_zero_flop : label is "kcpsm6_stack_ram0";
  attribute XILINX_LEGACY_PRIM of stack_zero_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of stack_zero_flop : label is "VCC:CE GND:R";
  attribute box_type of stack_zero_flop : label is "PRIMITIVE";
  attribute HBLKNM of sx_addr4_flop : label is "kcpsm6_control";
  attribute XILINX_LEGACY_PRIM of sx_addr4_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of sx_addr4_flop : label is "VCC:CE GND:R";
  attribute box_type of sx_addr4_flop : label is "PRIMITIVE";
  attribute HBLKNM of sync_interrupt_flop : label is "kcpsm6_decode2";
  attribute XILINX_LEGACY_PRIM of sync_interrupt_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of sync_interrupt_flop : label is "VCC:CE GND:R";
  attribute box_type of sync_interrupt_flop : label is "PRIMITIVE";
  attribute HBLKNM of sync_sleep_flop : label is "kcpsm6_decode2";
  attribute XILINX_LEGACY_PRIM of sync_sleep_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of sync_sleep_flop : label is "VCC:CE GND:R";
  attribute box_type of sync_sleep_flop : label is "PRIMITIVE";
  attribute HBLKNM of t_state1_flop : label is "kcpsm6_control";
  attribute XILINX_LEGACY_PRIM of t_state1_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of t_state1_flop : label is "VCC:CE GND:R";
  attribute box_type of t_state1_flop : label is "PRIMITIVE";
  attribute HBLKNM of t_state2_flop : label is "kcpsm6_control";
  attribute XILINX_LEGACY_PRIM of t_state2_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of t_state2_flop : label is "VCC:CE GND:R";
  attribute box_type of t_state2_flop : label is "PRIMITIVE";
  attribute HBLKNM of t_state_lut : label is "kcpsm6_control";
  attribute box_type of t_state_lut : label is "PRIMITIVE";
  attribute HBLKNM of upper_parity_lut : label is "kcpsm6_decode2";
  attribute box_type of upper_parity_lut : label is "PRIMITIVE";
  attribute HBLKNM of upper_reg_banks : label is "kcpsm6_reg1";
  attribute box_type of upper_reg_banks : label is "PRIMITIVE";
  attribute HBLKNM of upper_zero_lut : label is "kcpsm6_flags";
  attribute box_type of upper_zero_lut : label is "PRIMITIVE";
  attribute HBLKNM of use_zero_flag_flop : label is "kcpsm6_decode1";
  attribute XILINX_LEGACY_PRIM of use_zero_flag_flop : label is "FD";
  attribute XILINX_TRANSFORM_PINMAP of use_zero_flag_flop : label is "VCC:CE GND:R";
  attribute box_type of use_zero_flag_flop : label is "PRIMITIVE";
  attribute HBLKNM of use_zero_flag_lut : label is "kcpsm6_decode1";
  attribute box_type of use_zero_flag_lut : label is "PRIMITIVE";
  attribute HBLKNM of write_strobe_flop : label is "kcpsm6_strobes";
  attribute XILINX_LEGACY_PRIM of write_strobe_flop : label is "FDR";
  attribute XILINX_TRANSFORM_PINMAP of write_strobe_flop : label is "VCC:CE";
  attribute box_type of write_strobe_flop : label is "PRIMITIVE";
  attribute HBLKNM of zero_flag_flop : label is "kcpsm6_flags";
  attribute box_type of zero_flag_flop : label is "PRIMITIVE";
begin
  address(11 downto 0) <= \^address\(11 downto 0);
  bram_enable <= \^bram_enable\;
  port_id(7 downto 0) <= \^port_id\(7 downto 0);
active_interrupt_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => active_interrupt_value,
      Q => active_interrupt,
      R => '0'
    );
active_interrupt_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"CC33FF0080808080"
    )
        port map (
      I0 => interrupt_enable,
      I1 => \^bram_enable\,
      I2 => sync_interrupt,
      I3 => bank,
      I4 => loadstar_type,
      I5 => '1',
      O5 => active_interrupt_value,
      O6 => sx_addr4_value
    );
\address_loop[0].lsb_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FF33CC0F00"
    )
        port map (
      I0 => register_vector(0),
      I1 => pc_vector(0),
      I2 => \^address\(0),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(0)
    );
\address_loop[0].lsb_pc.pc_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 0) => carry_pc(3 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => pc_mode(0),
      O(3 downto 0) => pc_value(3 downto 0),
      S(3 downto 0) => half_pc(3 downto 0)
    );
\address_loop[0].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => instruction(0),
      I1 => return_vector(0),
      I2 => instruction(1),
      I3 => return_vector(1),
      I4 => instruction(12),
      I5 => '1',
      O5 => pc_vector(0),
      O6 => pc_vector(1)
    );
\address_loop[0].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => WE,
      D => pc_value(0),
      Q => \^address\(0),
      R => internal_reset
    );
\address_loop[0].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => DOC(0),
      Q => return_vector(0),
      R => '0'
    );
\address_loop[10].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => instruction(10),
      I1 => return_vector(10),
      I2 => instruction(11),
      I3 => return_vector(11),
      I4 => instruction(12),
      I5 => '1',
      O5 => pc_vector(10),
      O6 => pc_vector(11)
    );
\address_loop[10].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => WE,
      D => pc_value(10),
      Q => \^address\(10),
      R => internal_reset
    );
\address_loop[10].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_7,
      Q => return_vector(10),
      R => '0'
    );
\address_loop[10].upper_pc.low_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
        port map (
      I0 => register_vector(10),
      I1 => pc_vector(10),
      I2 => \^address\(10),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(10)
    );
\address_loop[11].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => WE,
      D => pc_value(11),
      Q => \^address\(11),
      R => internal_reset
    );
\address_loop[11].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_6,
      Q => return_vector(11),
      R => '0'
    );
\address_loop[11].upper_pc.low_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA0000CCCCF000"
    )
        port map (
      I0 => register_vector(11),
      I1 => pc_vector(11),
      I2 => \^address\(11),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(11)
    );
\address_loop[1].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => WE,
      D => pc_value(1),
      Q => \^address\(1),
      R => internal_reset
    );
\address_loop[1].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => DOC(1),
      Q => return_vector(1),
      R => '0'
    );
\address_loop[1].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => register_vector(1),
      I1 => pc_vector(1),
      I2 => \^address\(1),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(1)
    );
\address_loop[2].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => instruction(2),
      I1 => return_vector(2),
      I2 => instruction(3),
      I3 => return_vector(3),
      I4 => instruction(12),
      I5 => '1',
      O5 => pc_vector(2),
      O6 => pc_vector(3)
    );
\address_loop[2].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => WE,
      D => pc_value(2),
      Q => \^address\(2),
      R => internal_reset
    );
\address_loop[2].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => DOD(0),
      Q => return_vector(2),
      R => '0'
    );
\address_loop[2].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => register_vector(2),
      I1 => pc_vector(2),
      I2 => \^address\(2),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(2)
    );
\address_loop[3].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => WE,
      D => pc_value(3),
      Q => \^address\(3),
      R => internal_reset
    );
\address_loop[3].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => DOD(1),
      Q => return_vector(3),
      R => '0'
    );
\address_loop[3].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => register_vector(3),
      I1 => pc_vector(3),
      I2 => \^address\(3),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(3)
    );
\address_loop[4].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => instruction(4),
      I1 => return_vector(4),
      I2 => instruction(5),
      I3 => return_vector(5),
      I4 => instruction(12),
      I5 => '1',
      O5 => pc_vector(4),
      O6 => pc_vector(5)
    );
\address_loop[4].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => WE,
      D => pc_value(4),
      Q => \^address\(4),
      R => internal_reset
    );
\address_loop[4].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_1,
      Q => return_vector(4),
      R => '0'
    );
\address_loop[4].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => register_vector(4),
      I1 => pc_vector(4),
      I2 => \^address\(4),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(4)
    );
\address_loop[4].upper_pc.mid_pc.pc_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_pc(3),
      CO(3 downto 0) => carry_pc(7 downto 4),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => pc_value(7 downto 4),
      S(3 downto 0) => half_pc(7 downto 4)
    );
\address_loop[5].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => WE,
      D => pc_value(5),
      Q => \^address\(5),
      R => internal_reset
    );
\address_loop[5].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_0,
      Q => return_vector(5),
      R => '0'
    );
\address_loop[5].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => register_vector(5),
      I1 => pc_vector(5),
      I2 => \^address\(5),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(5)
    );
\address_loop[6].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => instruction(6),
      I1 => return_vector(6),
      I2 => instruction(7),
      I3 => return_vector(7),
      I4 => instruction(12),
      I5 => '1',
      O5 => pc_vector(6),
      O6 => pc_vector(7)
    );
\address_loop[6].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => WE,
      D => pc_value(6),
      Q => \^address\(6),
      R => internal_reset
    );
\address_loop[6].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_3,
      Q => return_vector(6),
      R => '0'
    );
\address_loop[6].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => register_vector(6),
      I1 => pc_vector(6),
      I2 => \^address\(6),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(6)
    );
\address_loop[7].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => WE,
      D => pc_value(7),
      Q => \^address\(7),
      R => internal_reset
    );
\address_loop[7].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_2,
      Q => return_vector(7),
      R => '0'
    );
\address_loop[7].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => register_vector(7),
      I1 => pc_vector(7),
      I2 => \^address\(7),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(7)
    );
\address_loop[8].output_data.pc_vector_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => instruction(8),
      I1 => return_vector(8),
      I2 => instruction(9),
      I3 => return_vector(9),
      I4 => instruction(12),
      I5 => '1',
      O5 => pc_vector(8),
      O6 => pc_vector(9)
    );
\address_loop[8].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => WE,
      D => pc_value(8),
      Q => \^address\(8),
      R => internal_reset
    );
\address_loop[8].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_5,
      Q => return_vector(8),
      R => '0'
    );
\address_loop[8].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => register_vector(8),
      I1 => pc_vector(8),
      I2 => \^address\(8),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(8)
    );
\address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => carry_pc(7),
      CO(3) => \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_CO_UNCONNECTED\(3),
      CO(2 downto 0) => carry_pc(10 downto 8),
      CYINIT => '0',
      DI(3) => \NLW_address_loop[8].upper_pc.mid_pc.pc_muxcy_CARRY4_DI_UNCONNECTED\(3),
      DI(2 downto 0) => B"000",
      O(3 downto 0) => pc_value(11 downto 8),
      S(3 downto 0) => half_pc(11 downto 8)
    );
\address_loop[9].pc_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => WE,
      D => pc_value(9),
      Q => \^address\(9),
      R => internal_reset
    );
\address_loop[9].return_vector_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_ram_high_n_4,
      Q => return_vector(9),
      R => '0'
    );
\address_loop[9].upper_pc.high_int_vector.pc_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00AA00FFCCCCF000"
    )
        port map (
      I0 => register_vector(9),
      I1 => pc_vector(9),
      I2 => \^address\(9),
      I3 => pc_mode(0),
      I4 => pc_mode(1),
      I5 => pc_mode(2),
      O => half_pc(9)
    );
alu_decode0_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"03CA000004200000"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(15),
      I3 => instruction(16),
      I4 => '1',
      I5 => '1',
      O5 => alu_mux_sel_value(0),
      O6 => arith_logical_sel(0)
    );
alu_decode1_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"7708000000000F00"
    )
        port map (
      I0 => carry_flag,
      I1 => instruction(13),
      I2 => instruction(14),
      I3 => instruction(15),
      I4 => instruction(16),
      I5 => '1',
      O5 => alu_mux_sel_value(1),
      O6 => arith_carry_in
    );
alu_decode2_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"D000000002000000"
    )
        port map (
      I0 => instruction(14),
      I1 => instruction(15),
      I2 => instruction(16),
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O5 => arith_logical_sel(1),
      O6 => arith_logical_sel(2)
    );
alu_mux_sel0_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => alu_mux_sel_value(0),
      Q => alu_mux_sel(0),
      R => '0'
    );
alu_mux_sel1_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => alu_mux_sel_value(1),
      Q => alu_mux_sel(1),
      R => '0'
    );
arith_carry_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_carry_value,
      Q => arith_carry,
      R => '0'
    );
arith_carry_xorcy_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => CI,
      CO(3 downto 0) => NLW_arith_carry_xorcy_CARRY4_CO_UNCONNECTED(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => NLW_arith_carry_xorcy_CARRY4_DI_UNCONNECTED(3 downto 0),
      O(3 downto 1) => NLW_arith_carry_xorcy_CARRY4_O_UNCONNECTED(3 downto 1),
      O(0) => arith_carry_value,
      S(3 downto 1) => NLW_arith_carry_xorcy_CARRY4_S_UNCONNECTED(3 downto 1),
      S(0) => '0'
    );
bank_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => bank_value,
      Q => bank,
      R => internal_reset
    );
bank_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ACACFF00FF00FF00"
    )
        port map (
      I0 => instruction(0),
      I1 => shadow_bank,
      I2 => instruction(16),
      I3 => bank,
      I4 => regbank_type,
      I5 => WE,
      O => bank_value
    );
carry_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => flag_enable,
      D => carry_flag_value,
      Q => carry_flag,
      R => internal_reset
    );
carry_flag_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"3333AACCF0AA0000"
    )
        port map (
      I0 => shift_carry,
      I1 => arith_carry,
      I2 => parity,
      I3 => instruction(14),
      I4 => instruction(15),
      I5 => instruction(16),
      O5 => drive_carry_in_zero,
      O6 => carry_flag_value
    );
\data_path_loop[0].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(0),
      I1 => shift_rotate_result(0),
      I2 => in_port(0),
      I3 => spm_data(0),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(0)
    );
\data_path_loop[0].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value(0),
      Q => arith_logical_result(0),
      R => '0'
    );
\data_path_loop[0].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \^port_id\(0),
      I1 => register_vector(8),
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(0),
      O6 => half_arith_logical(0)
    );
\data_path_loop[0].low_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value(0),
      Q => shift_rotate_result(0),
      R => instruction(7)
    );
\data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \data_path_loop[3].upper_arith_logical.arith_logical_muxcy_n_0\,
      CO(2) => \data_path_loop[2].upper_arith_logical.arith_logical_muxcy_n_0\,
      CO(1) => \data_path_loop[1].upper_arith_logical.arith_logical_muxcy_n_0\,
      CO(0) => \data_path_loop[0].lsb_arith_logical.arith_logical_muxcy_n_0\,
      CYINIT => arith_carry_in,
      DI(3 downto 0) => logical_carry_mask(3 downto 0),
      O(3 downto 0) => arith_logical_value(3 downto 0),
      S(3 downto 0) => half_arith_logical(3 downto 0)
    );
\data_path_loop[0].lsb_shift_rotate.shift_bit_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBC8F8CB3B08380"
    )
        port map (
      I0 => instruction(0),
      I1 => instruction(1),
      I2 => instruction(2),
      I3 => carry_flag,
      I4 => register_vector(8),
      I5 => upper_reg_banks_n_6,
      O => shift_in_bit
    );
\data_path_loop[0].lsb_shift_rotate.shift_rotate_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => shift_in_bit,
      I1 => register_vector(9),
      I2 => register_vector(8),
      I3 => register_vector(10),
      I4 => instruction(3),
      I5 => '1',
      O5 => shift_rotate_value(0),
      O6 => shift_rotate_value(1)
    );
\data_path_loop[0].output_data.sy_kk_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => register_vector(0),
      I1 => instruction(0),
      I2 => register_vector(1),
      I3 => instruction(1),
      I4 => instruction(12),
      I5 => '1',
      O5 => \^port_id\(0),
      O6 => \^port_id\(1)
    );
\data_path_loop[0].second_operand.out_port_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => register_vector(8),
      I1 => instruction(4),
      I2 => register_vector(9),
      I3 => instruction(5),
      I4 => instruction(13),
      I5 => '1',
      O5 => out_port(0),
      O6 => out_port(1)
    );
\data_path_loop[0].small_spm.small_spm_ram.spm_ram\: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(5 downto 0) => \^port_id\(5 downto 0),
      ADDRB(5 downto 0) => \^port_id\(5 downto 0),
      ADDRC(5 downto 0) => \^port_id\(5 downto 0),
      ADDRD(5 downto 0) => \^port_id\(5 downto 0),
      DIA => register_vector(8),
      DIB => register_vector(9),
      DIC => register_vector(10),
      DID => register_vector(11),
      DOA => spm_ram_data(0),
      DOB => spm_ram_data(1),
      DOC => spm_ram_data(2),
      DOD => spm_ram_data(3),
      WCLK => clk,
      WE => spm_enable
    );
\data_path_loop[0].small_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data(0),
      Q => spm_data(0),
      R => '0'
    );
\data_path_loop[1].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(1),
      I1 => shift_rotate_result(1),
      I2 => in_port(1),
      I3 => spm_data(1),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(1)
    );
\data_path_loop[1].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value(1),
      Q => arith_logical_result(1),
      R => '0'
    );
\data_path_loop[1].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \^port_id\(1),
      I1 => register_vector(9),
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(1),
      O6 => half_arith_logical(1)
    );
\data_path_loop[1].low_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value(1),
      Q => shift_rotate_result(1),
      R => instruction(7)
    );
\data_path_loop[1].small_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data(1),
      Q => spm_data(1),
      R => '0'
    );
\data_path_loop[2].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(2),
      I1 => shift_rotate_result(2),
      I2 => in_port(2),
      I3 => spm_data(2),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(2)
    );
\data_path_loop[2].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value(2),
      Q => arith_logical_result(2),
      R => '0'
    );
\data_path_loop[2].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \^port_id\(2),
      I1 => register_vector(10),
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(2),
      O6 => half_arith_logical(2)
    );
\data_path_loop[2].low_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value(2),
      Q => shift_rotate_result(2),
      R => instruction(7)
    );
\data_path_loop[2].mid_shift_rotate.shift_rotate_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => register_vector(9),
      I1 => register_vector(11),
      I2 => register_vector(10),
      I3 => upper_reg_banks_n_3,
      I4 => instruction(3),
      I5 => '1',
      O5 => shift_rotate_value(2),
      O6 => shift_rotate_value(3)
    );
\data_path_loop[2].output_data.sy_kk_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => register_vector(2),
      I1 => instruction(2),
      I2 => register_vector(3),
      I3 => instruction(3),
      I4 => instruction(12),
      I5 => '1',
      O5 => \^port_id\(2),
      O6 => \^port_id\(3)
    );
\data_path_loop[2].second_operand.out_port_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => register_vector(10),
      I1 => instruction(6),
      I2 => register_vector(11),
      I3 => instruction(7),
      I4 => instruction(13),
      I5 => '1',
      O5 => out_port(2),
      O6 => out_port(3)
    );
\data_path_loop[2].small_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data(2),
      Q => spm_data(2),
      R => '0'
    );
\data_path_loop[3].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(3),
      I1 => shift_rotate_result(3),
      I2 => in_port(3),
      I3 => spm_data(3),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(3)
    );
\data_path_loop[3].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value(3),
      Q => arith_logical_result(3),
      R => '0'
    );
\data_path_loop[3].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \^port_id\(3),
      I1 => register_vector(11),
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(3),
      O6 => half_arith_logical(3)
    );
\data_path_loop[3].low_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value(3),
      Q => shift_rotate_result(3),
      R => instruction(7)
    );
\data_path_loop[3].small_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data(3),
      Q => spm_data(3),
      R => '0'
    );
\data_path_loop[4].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(4),
      I1 => shift_rotate_result(4),
      I2 => in_port(4),
      I3 => spm_data(4),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(4)
    );
\data_path_loop[4].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value(4),
      Q => arith_logical_result(4),
      R => '0'
    );
\data_path_loop[4].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \^port_id\(4),
      I1 => upper_reg_banks_n_3,
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(4),
      O6 => half_arith_logical(4)
    );
\data_path_loop[4].low_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value(4),
      Q => shift_rotate_result(4),
      R => instruction(7)
    );
\data_path_loop[4].mid_shift_rotate.shift_rotate_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => register_vector(11),
      I1 => upper_reg_banks_n_2,
      I2 => upper_reg_banks_n_3,
      I3 => upper_reg_banks_n_7,
      I4 => instruction(3),
      I5 => '1',
      O5 => shift_rotate_value(4),
      O6 => shift_rotate_value(5)
    );
\data_path_loop[4].output_data.sy_kk_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => register_vector(4),
      I1 => instruction(4),
      I2 => register_vector(5),
      I3 => instruction(5),
      I4 => instruction(12),
      I5 => '1',
      O5 => \^port_id\(4),
      O6 => \^port_id\(5)
    );
\data_path_loop[4].second_operand.out_port_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => upper_reg_banks_n_3,
      I1 => instruction(8),
      I2 => upper_reg_banks_n_2,
      I3 => instruction(9),
      I4 => instruction(13),
      I5 => '1',
      O5 => out_port(4),
      O6 => out_port(5)
    );
\data_path_loop[4].small_spm.small_spm_ram.spm_ram\: unisim.vcomponents.RAM64M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(5 downto 0) => \^port_id\(5 downto 0),
      ADDRB(5 downto 0) => \^port_id\(5 downto 0),
      ADDRC(5 downto 0) => \^port_id\(5 downto 0),
      ADDRD(5 downto 0) => \^port_id\(5 downto 0),
      DIA => upper_reg_banks_n_3,
      DIB => upper_reg_banks_n_2,
      DIC => upper_reg_banks_n_7,
      DID => upper_reg_banks_n_6,
      DOA => spm_ram_data(4),
      DOB => spm_ram_data(5),
      DOC => spm_ram_data(6),
      DOD => spm_ram_data(7),
      WCLK => clk,
      WE => spm_enable
    );
\data_path_loop[4].small_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data(4),
      Q => spm_data(4),
      R => '0'
    );
\data_path_loop[4].upper_arith_logical.arith_logical_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \data_path_loop[3].upper_arith_logical.arith_logical_muxcy_n_0\,
      CO(3) => CI,
      CO(2) => \data_path_loop[6].upper_arith_logical.arith_logical_muxcy_n_0\,
      CO(1) => \data_path_loop[5].upper_arith_logical.arith_logical_muxcy_n_0\,
      CO(0) => \data_path_loop[4].upper_arith_logical.arith_logical_muxcy_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => logical_carry_mask(7 downto 4),
      O(3 downto 0) => arith_logical_value(7 downto 4),
      S(3 downto 0) => half_arith_logical(7 downto 4)
    );
\data_path_loop[5].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(5),
      I1 => shift_rotate_result(5),
      I2 => in_port(5),
      I3 => spm_data(5),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(5)
    );
\data_path_loop[5].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value(5),
      Q => arith_logical_result(5),
      R => '0'
    );
\data_path_loop[5].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \^port_id\(5),
      I1 => upper_reg_banks_n_2,
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(5),
      O6 => half_arith_logical(5)
    );
\data_path_loop[5].low_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value(5),
      Q => shift_rotate_result(5),
      R => instruction(7)
    );
\data_path_loop[5].small_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data(5),
      Q => spm_data(5),
      R => '0'
    );
\data_path_loop[6].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(6),
      I1 => shift_rotate_result(6),
      I2 => in_port(6),
      I3 => spm_data(6),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(6)
    );
\data_path_loop[6].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value(6),
      Q => arith_logical_result(6),
      R => '0'
    );
\data_path_loop[6].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \^port_id\(6),
      I1 => upper_reg_banks_n_7,
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(6),
      O6 => half_arith_logical(6)
    );
\data_path_loop[6].low_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value(6),
      Q => shift_rotate_result(6),
      R => instruction(7)
    );
\data_path_loop[6].msb_shift_rotate.shift_rotate_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => upper_reg_banks_n_2,
      I1 => upper_reg_banks_n_6,
      I2 => upper_reg_banks_n_7,
      I3 => shift_in_bit,
      I4 => instruction(3),
      I5 => '1',
      O5 => shift_rotate_value(6),
      O6 => shift_rotate_value(7)
    );
\data_path_loop[6].output_data.sy_kk_mux_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => register_vector(6),
      I1 => instruction(6),
      I2 => register_vector(7),
      I3 => instruction(7),
      I4 => instruction(12),
      I5 => '1',
      O5 => \^port_id\(6),
      O6 => \^port_id\(7)
    );
\data_path_loop[6].second_operand.out_port_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => upper_reg_banks_n_7,
      I1 => instruction(10),
      I2 => upper_reg_banks_n_6,
      I3 => instruction(11),
      I4 => instruction(13),
      I5 => '1',
      O5 => out_port(6),
      O6 => out_port(7)
    );
\data_path_loop[6].small_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data(6),
      Q => spm_data(6),
      R => '0'
    );
\data_path_loop[7].alu_mux_lut\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F0F0CCCCAAAA"
    )
        port map (
      I0 => arith_logical_result(7),
      I1 => shift_rotate_result(7),
      I2 => in_port(7),
      I3 => spm_data(7),
      I4 => alu_mux_sel(0),
      I5 => alu_mux_sel(1),
      O => alu_result(7)
    );
\data_path_loop[7].arith_logical_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => arith_logical_value(7),
      Q => arith_logical_result(7),
      R => '0'
    );
\data_path_loop[7].arith_logical_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"69696E8ACCCC0000"
    )
        port map (
      I0 => \^port_id\(7),
      I1 => upper_reg_banks_n_6,
      I2 => arith_logical_sel(0),
      I3 => arith_logical_sel(1),
      I4 => arith_logical_sel(2),
      I5 => '1',
      O5 => logical_carry_mask(7),
      O6 => half_arith_logical(7)
    );
\data_path_loop[7].low_hwbuild.shift_rotate_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_rotate_value(7),
      Q => shift_rotate_result(7),
      R => instruction(7)
    );
\data_path_loop[7].small_spm.spm_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_ram_data(7),
      Q => spm_data(7),
      R => '0'
    );
flag_enable_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => flag_enable_value,
      Q => flag_enable,
      R => active_interrupt
    );
init_zero_muxcy_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => zero_flag_value,
      CO(2) => carry_middle_zero,
      CO(1) => carry_lower_zero,
      CO(0) => carry_in_zero,
      CYINIT => '0',
      DI(3) => shadow_zero_flag,
      DI(2) => middle_zero,
      DI(1) => lower_zero,
      DI(0) => drive_carry_in_zero,
      O(3 downto 0) => NLW_init_zero_muxcy_CARRY4_O_UNCONNECTED(3 downto 0),
      S(3) => upper_zero_sel,
      S(2) => middle_zero_sel,
      S(1) => lower_zero_sel,
      S(0) => carry_flag_value
    );
int_enable_type_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0010000000000800"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(15),
      I3 => instruction(16),
      I4 => instruction(17),
      I5 => '1',
      O5 => loadstar_type,
      O6 => int_enable_type
    );
internal_reset_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => internal_reset_value,
      Q => internal_reset,
      R => '0'
    );
interrupt_ack_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => active_interrupt,
      Q => interrupt_ack,
      R => '0'
    );
interrupt_enable_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => interrupt_enable_value,
      Q => interrupt_enable,
      R => '0'
    );
interrupt_enable_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CAAA"
    )
        port map (
      I0 => interrupt_enable,
      I1 => instruction(0),
      I2 => int_enable_type,
      I3 => WE,
      I4 => active_interrupt,
      I5 => internal_reset,
      O => interrupt_enable_value
    );
k_write_strobe_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => k_write_strobe_value,
      Q => k_write_strobe,
      R => active_interrupt
    );
lower_parity_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0000000087780000"
    )
        port map (
      I0 => instruction(13),
      I1 => carry_flag,
      I2 => arith_logical_result(0),
      I3 => arith_logical_result(1),
      I4 => '1',
      I5 => '1',
      O5 => lower_parity,
      O6 => lower_parity_sel
    );
lower_reg_banks: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => bank,
      ADDRA(3 downto 0) => instruction(7 downto 4),
      ADDRB(4) => sx_addr(4),
      ADDRB(3 downto 0) => instruction(11 downto 8),
      ADDRC(4) => bank,
      ADDRC(3 downto 0) => instruction(7 downto 4),
      ADDRD(4) => sx_addr(4),
      ADDRD(3 downto 0) => instruction(11 downto 8),
      DIA(1 downto 0) => alu_result(1 downto 0),
      DIB(1 downto 0) => alu_result(1 downto 0),
      DIC(1 downto 0) => alu_result(3 downto 2),
      DID(1 downto 0) => alu_result(3 downto 2),
      DOA(1 downto 0) => register_vector(1 downto 0),
      DOB(1 downto 0) => register_vector(9 downto 8),
      DOC(1 downto 0) => register_vector(3 downto 2),
      DOD(1 downto 0) => register_vector(11 downto 10),
      WCLK => clk,
      WE => register_enable
    );
lower_zero_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => alu_result(0),
      I1 => alu_result(1),
      I2 => alu_result(2),
      I3 => alu_result(3),
      I4 => alu_result(4),
      I5 => '1',
      O5 => lower_zero,
      O6 => lower_zero_sel
    );
middle_zero_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0000000D00000000"
    )
        port map (
      I0 => use_zero_flag,
      I1 => zero_flag,
      I2 => alu_result(5),
      I3 => alu_result(6),
      I4 => alu_result(7),
      I5 => '1',
      O5 => middle_zero,
      O6 => middle_zero_sel
    );
move_type_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"7777027700000200"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(13),
      I2 => instruction(14),
      I3 => instruction(15),
      I4 => instruction(16),
      I5 => '1',
      O5 => returni_type,
      O6 => move_type
    );
parity_muxcy_CARRY4: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3 downto 1) => NLW_parity_muxcy_CARRY4_CO_UNCONNECTED(3 downto 1),
      CO(0) => carry_lower_parity,
      CYINIT => '0',
      DI(3 downto 1) => NLW_parity_muxcy_CARRY4_DI_UNCONNECTED(3 downto 1),
      DI(0) => lower_parity,
      O(3 downto 2) => NLW_parity_muxcy_CARRY4_O_UNCONNECTED(3 downto 2),
      O(1) => parity,
      O(0) => NLW_parity_muxcy_CARRY4_O_UNCONNECTED(0),
      S(3 downto 2) => NLW_parity_muxcy_CARRY4_S_UNCONNECTED(3 downto 2),
      S(1) => upper_parity,
      S(0) => lower_parity_sel
    );
pc_mode1_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0000F000000023FF"
    )
        port map (
      I0 => instruction(12),
      I1 => returni_type,
      I2 => move_type,
      I3 => pc_move_is_valid,
      I4 => active_interrupt,
      I5 => '1',
      O5 => pc_mode(0),
      O6 => pc_mode(1)
    );
pc_mode2_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00040000"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(14),
      I2 => instruction(15),
      I3 => instruction(16),
      I4 => instruction(17),
      I5 => active_interrupt,
      O => pc_mode(2)
    );
pc_move_is_valid_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5A3CFFFF00000000"
    )
        port map (
      I0 => carry_flag,
      I1 => zero_flag,
      I2 => instruction(14),
      I3 => instruction(15),
      I4 => instruction(16),
      I5 => instruction(17),
      O => pc_move_is_valid
    );
push_pop_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FFFF100000002000"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(13),
      I2 => move_type,
      I3 => pc_move_is_valid,
      I4 => active_interrupt,
      I5 => '1',
      O5 => pop_stack,
      O6 => push_stack
    );
read_strobe_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => read_strobe_value,
      Q => read_strobe,
      R => active_interrupt
    );
read_strobe_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"4000000001000000"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(17),
      I3 => strobe_type,
      I4 => WE,
      I5 => '1',
      O5 => read_strobe_value,
      O6 => write_strobe_value
    );
regbank_type_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080020000000000"
    )
        port map (
      I0 => instruction(12),
      I1 => instruction(13),
      I2 => instruction(14),
      I3 => instruction(15),
      I4 => instruction(16),
      I5 => instruction(17),
      O => regbank_type
    );
register_enable_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => register_enable_value,
      Q => register_enable,
      R => active_interrupt
    );
register_enable_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"C0CC0000A0AA0000"
    )
        port map (
      I0 => flag_enable_type,
      I1 => register_enable_type,
      I2 => instruction(12),
      I3 => instruction(17),
      I4 => WE,
      I5 => '1',
      O5 => flag_enable_value,
      O6 => register_enable_value
    );
register_enable_type_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"00013F3F0010F7CE"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(15),
      I3 => instruction(16),
      I4 => instruction(17),
      I5 => '1',
      O5 => flag_enable_type,
      O6 => register_enable_type
    );
reset_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"FFFFF55500000EEE"
    )
        port map (
      I0 => run,
      I1 => internal_reset,
      I2 => I2,
      I3 => \^bram_enable\,
      I4 => reset,
      I5 => '1',
      O5 => run_value,
      O6 => internal_reset_value
    );
run_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => run_value,
      Q => run,
      R => '0'
    );
shadow_bank_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_bank,
      Q => shadow_bank,
      R => '0'
    );
shadow_carry_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_carry_flag,
      Q => shadow_carry_flag,
      R => '0'
    );
shadow_zero_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shadow_zero_value,
      Q => shadow_zero_flag,
      R => '0'
    );
shift_carry_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => shift_carry_value,
      Q => shift_carry,
      R => '0'
    );
shift_carry_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFAACCF0F0F0F0"
    )
        port map (
      I0 => register_vector(8),
      I1 => upper_reg_banks_n_6,
      I2 => shadow_carry_flag,
      I3 => instruction(3),
      I4 => instruction(7),
      I5 => instruction(16),
      O => shift_carry_value
    );
spm_enable_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => spm_enable_value,
      Q => spm_enable,
      R => active_interrupt
    );
spm_enable_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"8000000020000000"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(17),
      I3 => strobe_type,
      I4 => WE,
      I5 => '1',
      O5 => k_write_strobe_value,
      O6 => spm_enable_value
    );
stack_bit_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_bit,
      Q => special_bit,
      R => '0'
    );
\stack_loop[0].lsb_stack.pointer_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_pointer_value(0),
      Q => ADDRA(0),
      R => internal_reset
    );
\stack_loop[0].lsb_stack.stack_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \stack_loop[3].upper_stack.stack_muxcy_n_0\,
      CO(2) => \stack_loop[2].upper_stack.stack_muxcy_n_0\,
      CO(1) => \stack_loop[1].upper_stack.stack_muxcy_n_0\,
      CO(0) => \stack_loop[0].lsb_stack.stack_muxcy_n_0\,
      CYINIT => '0',
      DI(3 downto 0) => feed_pointer_value(3 downto 0),
      O(3 downto 0) => stack_pointer_value(3 downto 0),
      S(3 downto 0) => half_pointer_value(3 downto 0)
    );
\stack_loop[0].lsb_stack.stack_pointer_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"001529AAAAAAAAAA"
    )
        port map (
      I0 => ADDRA(0),
      I1 => pop_stack,
      I2 => push_stack,
      I3 => WE,
      I4 => \^bram_enable\,
      I5 => '1',
      O5 => feed_pointer_value(0),
      O6 => half_pointer_value(0)
    );
\stack_loop[1].upper_stack.pointer_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_pointer_value(1),
      Q => ADDRA(1),
      R => internal_reset
    );
\stack_loop[1].upper_stack.stack_pointer_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
        port map (
      I0 => ADDRA(1),
      I1 => pop_stack,
      I2 => push_stack,
      I3 => WE,
      I4 => \^bram_enable\,
      I5 => '1',
      O5 => feed_pointer_value(1),
      O6 => half_pointer_value(1)
    );
\stack_loop[2].upper_stack.pointer_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_pointer_value(2),
      Q => ADDRA(2),
      R => internal_reset
    );
\stack_loop[2].upper_stack.stack_pointer_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
        port map (
      I0 => ADDRA(2),
      I1 => pop_stack,
      I2 => push_stack,
      I3 => WE,
      I4 => \^bram_enable\,
      I5 => '1',
      O5 => feed_pointer_value(2),
      O6 => half_pointer_value(2)
    );
\stack_loop[3].upper_stack.pointer_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_pointer_value(3),
      Q => ADDRA(3),
      R => internal_reset
    );
\stack_loop[3].upper_stack.stack_pointer_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
        port map (
      I0 => ADDRA(3),
      I1 => pop_stack,
      I2 => push_stack,
      I3 => WE,
      I4 => \^bram_enable\,
      I5 => '1',
      O5 => feed_pointer_value(3),
      O6 => half_pointer_value(3)
    );
\stack_loop[4].upper_stack.pointer_flop\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_pointer_value(4),
      Q => ADDRA(4),
      R => internal_reset
    );
\stack_loop[4].upper_stack.stack_muxcy_CARRY4\: unisim.vcomponents.CARRY4
     port map (
      CI => \stack_loop[3].upper_stack.stack_muxcy_n_0\,
      CO(3 downto 1) => \NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_CO_UNCONNECTED\(3 downto 1),
      CO(0) => I2,
      CYINIT => '0',
      DI(3 downto 1) => \NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_DI_UNCONNECTED\(3 downto 1),
      DI(0) => feed_pointer_value(4),
      O(3 downto 1) => \NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_O_UNCONNECTED\(3 downto 1),
      O(0) => stack_pointer_value(4),
      S(3 downto 1) => \NLW_stack_loop[4].upper_stack.stack_muxcy_CARRY4_S_UNCONNECTED\(3 downto 1),
      S(0) => half_pointer_value(4)
    );
\stack_loop[4].upper_stack.stack_pointer_lut\: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"002A252AAAAAAAAA"
    )
        port map (
      I0 => ADDRA(4),
      I1 => pop_stack,
      I2 => push_stack,
      I3 => WE,
      I4 => \^bram_enable\,
      I5 => '1',
      O5 => feed_pointer_value(4),
      O6 => half_pointer_value(4)
    );
stack_ram_high: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4 downto 0) => ADDRA(4 downto 0),
      ADDRB(4 downto 0) => ADDRA(4 downto 0),
      ADDRC(4 downto 0) => ADDRA(4 downto 0),
      ADDRD(4 downto 0) => ADDRA(4 downto 0),
      DIA(1 downto 0) => \^address\(5 downto 4),
      DIB(1 downto 0) => \^address\(7 downto 6),
      DIC(1 downto 0) => \^address\(9 downto 8),
      DID(1 downto 0) => \^address\(11 downto 10),
      DOA(1) => stack_ram_high_n_0,
      DOA(0) => stack_ram_high_n_1,
      DOB(1) => stack_ram_high_n_2,
      DOB(0) => stack_ram_high_n_3,
      DOC(1) => stack_ram_high_n_4,
      DOC(0) => stack_ram_high_n_5,
      DOD(1) => stack_ram_high_n_6,
      DOD(0) => stack_ram_high_n_7,
      WCLK => clk,
      WE => WE
    );
stack_ram_low: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4 downto 0) => ADDRA(4 downto 0),
      ADDRB(4 downto 0) => ADDRA(4 downto 0),
      ADDRC(4 downto 0) => ADDRA(4 downto 0),
      ADDRD(4 downto 0) => ADDRA(4 downto 0),
      DIA(1) => zero_flag,
      DIA(0) => carry_flag,
      DIB(1) => run,
      DIB(0) => bank,
      DIC(1 downto 0) => \^address\(1 downto 0),
      DID(1 downto 0) => \^address\(3 downto 2),
      DOA(1) => stack_zero_flag,
      DOA(0) => stack_carry_flag,
      DOB(1) => stack_bit,
      DOB(0) => stack_bank,
      DOC(1 downto 0) => DOC(1 downto 0),
      DOD(1 downto 0) => DOD(1 downto 0),
      WCLK => clk,
      WE => WE
    );
stack_zero_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => stack_zero_flag,
      Q => shadow_zero_value,
      R => '0'
    );
sx_addr4_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sx_addr4_value,
      Q => sx_addr(4),
      R => '0'
    );
sync_interrupt_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => interrupt,
      Q => sync_interrupt,
      R => '0'
    );
sync_sleep_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => sleep,
      Q => sync_sleep,
      R => '0'
    );
t_state1_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => t_state_value(1),
      Q => WE,
      R => '0'
    );
t_state2_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => t_state_value(2),
      Q => \^bram_enable\,
      R => '0'
    );
t_state_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"0083000B00C4004C"
    )
        port map (
      I0 => WE,
      I1 => \^bram_enable\,
      I2 => sync_sleep,
      I3 => internal_reset,
      I4 => special_bit,
      I5 => '1',
      O5 => t_state_value(1),
      O6 => t_state_value(2)
    );
upper_parity_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => arith_logical_result(2),
      I1 => arith_logical_result(3),
      I2 => arith_logical_result(4),
      I3 => arith_logical_result(5),
      I4 => arith_logical_result(6),
      I5 => arith_logical_result(7),
      O => upper_parity
    );
upper_reg_banks: unisim.vcomponents.RAM32M
    generic map(
      INIT_A => X"0000000000000000",
      INIT_B => X"0000000000000000",
      INIT_C => X"0000000000000000",
      INIT_D => X"0000000000000000",
      IS_WCLK_INVERTED => '0'
    )
        port map (
      ADDRA(4) => bank,
      ADDRA(3 downto 0) => instruction(7 downto 4),
      ADDRB(4) => sx_addr(4),
      ADDRB(3 downto 0) => instruction(11 downto 8),
      ADDRC(4) => bank,
      ADDRC(3 downto 0) => instruction(7 downto 4),
      ADDRD(4) => sx_addr(4),
      ADDRD(3 downto 0) => instruction(11 downto 8),
      DIA(1 downto 0) => alu_result(5 downto 4),
      DIB(1 downto 0) => alu_result(5 downto 4),
      DIC(1 downto 0) => alu_result(7 downto 6),
      DID(1 downto 0) => alu_result(7 downto 6),
      DOA(1 downto 0) => register_vector(5 downto 4),
      DOB(1) => upper_reg_banks_n_2,
      DOB(0) => upper_reg_banks_n_3,
      DOC(1 downto 0) => register_vector(7 downto 6),
      DOD(1) => upper_reg_banks_n_6,
      DOD(0) => upper_reg_banks_n_7,
      WCLK => clk,
      WE => register_enable
    );
upper_zero_lut: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBFF000000000000"
    )
        port map (
      I0 => instruction(14),
      I1 => instruction(15),
      I2 => instruction(16),
      I3 => '1',
      I4 => '1',
      I5 => '1',
      O => upper_zero_sel
    );
use_zero_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => use_zero_flag_value,
      Q => use_zero_flag,
      R => '0'
    );
use_zero_flag_lut: unisim.vcomponents.LUT6_2
    generic map(
      INIT => X"A280000000F000F0"
    )
        port map (
      I0 => instruction(13),
      I1 => instruction(14),
      I2 => instruction(15),
      I3 => instruction(16),
      I4 => '1',
      I5 => '1',
      O5 => strobe_type,
      O6 => use_zero_flag_value
    );
write_strobe_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => write_strobe_value,
      Q => write_strobe,
      R => active_interrupt
    );
zero_flag_flop: unisim.vcomponents.FDRE
    generic map(
      INIT => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      IS_R_INVERTED => '0'
    )
        port map (
      C => clk,
      CE => flag_enable,
      D => zero_flag_value,
      Q => zero_flag,
      R => internal_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_kcpsm6_1_0 is
  port (
    address : out STD_LOGIC_VECTOR ( 11 downto 0 );
    instruction : in STD_LOGIC_VECTOR ( 17 downto 0 );
    bram_enable : out STD_LOGIC;
    in_port : in STD_LOGIC_VECTOR ( 7 downto 0 );
    out_port : out STD_LOGIC_VECTOR ( 7 downto 0 );
    port_id : out STD_LOGIC_VECTOR ( 7 downto 0 );
    write_strobe : out STD_LOGIC;
    k_write_strobe : out STD_LOGIC;
    read_strobe : out STD_LOGIC;
    interrupt : in STD_LOGIC;
    interrupt_ack : out STD_LOGIC;
    sleep : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_kcpsm6_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_kcpsm6_1_0 : entity is "design_1_kcpsm6_1_0,kcpsm6,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_kcpsm6_1_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_kcpsm6_1_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_kcpsm6_1_0 : entity is "kcpsm6,Vivado 2022.2";
end design_1_kcpsm6_1_0;

architecture STRUCTURE of design_1_kcpsm6_1_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_clk_1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of interrupt : signal is "xilinx.com:signal:interrupt:1.0 interrupt INTERRUPT";
  attribute X_INTERFACE_PARAMETER of interrupt : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute X_INTERFACE_INFO of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute X_INTERFACE_PARAMETER of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
inst: entity work.design_1_kcpsm6_1_0_kcpsm6
     port map (
      address(11 downto 0) => address(11 downto 0),
      bram_enable => bram_enable,
      clk => clk,
      in_port(7 downto 0) => in_port(7 downto 0),
      instruction(17 downto 0) => instruction(17 downto 0),
      interrupt => interrupt,
      interrupt_ack => interrupt_ack,
      k_write_strobe => k_write_strobe,
      out_port(7 downto 0) => out_port(7 downto 0),
      port_id(7 downto 0) => port_id(7 downto 0),
      read_strobe => read_strobe,
      reset => reset,
      sleep => sleep,
      write_strobe => write_strobe
    );
end STRUCTURE;
