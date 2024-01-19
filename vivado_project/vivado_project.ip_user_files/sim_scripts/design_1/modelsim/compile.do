vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/blk_mem_gen_v8_4_5
vlib modelsim_lib/msim/xlconstant_v1_1_7

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap blk_mem_gen_v8_4_5 modelsim_lib/msim/blk_mem_gen_v8_4_5
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7

vlog -work xpm  -incr -mfcu  -sv \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/design_1/ip/design_1_kcpsm6_0_0/sim/design_1_kcpsm6_0_0.v" \
"../../../bd/design_1/ip/design_1_kcpsm6_1_0/sim/design_1_kcpsm6_1_0.v" \

vlog -work blk_mem_gen_v8_4_5  -incr -mfcu  \
"../../../../final_project_2.gen/sources_1/bd/design_1/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \

vlog -work xlconstant_v1_1_7  -incr -mfcu  \
"../../../../final_project_2.gen/sources_1/bd/design_1/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_BRAM1_0_0/sim/design_1_BRAM1_0_0.v" \
"../../../bd/design_1/ip/design_1_BRAM0_0_0/sim/design_1_BRAM0_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

