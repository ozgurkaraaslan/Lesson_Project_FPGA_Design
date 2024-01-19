vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/blk_mem_gen_v8_4_5
vlib riviera/xlconstant_v1_1_7

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap blk_mem_gen_v8_4_5 riviera/blk_mem_gen_v8_4_5
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7

vlog -work xpm  -sv2k12 \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_kcpsm6_0_0/sim/design_1_kcpsm6_0_0.v" \
"../../../bd/design_1/ip/design_1_kcpsm6_1_0/sim/design_1_kcpsm6_1_0.v" \

vlog -work blk_mem_gen_v8_4_5  -v2k5 \
"../../../../final_project_2.gen/sources_1/bd/design_1/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vlog -work xlconstant_v1_1_7  -v2k5 \
"../../../../final_project_2.gen/sources_1/bd/design_1/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_BRAM1_0_0/sim/design_1_BRAM1_0_0.v" \
"../../../bd/design_1/ip/design_1_BRAM0_0_0/sim/design_1_BRAM0_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

