-makelib xcelium_lib/xpm -sv \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "C:/Xilinx/Vivado/2022.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_kcpsm6_0_0/sim/design_1_kcpsm6_0_0.v" \
  "../../../bd/design_1/ip/design_1_kcpsm6_1_0/sim/design_1_kcpsm6_1_0.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_5 \
  "../../../../final_project_2.gen/sources_1/bd/design_1/ipshared/25a8/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_blk_mem_gen_0_0/sim/design_1_blk_mem_gen_0_0.v" \
-endlib
-makelib xcelium_lib/xlconstant_v1_1_7 \
  "../../../../final_project_2.gen/sources_1/bd/design_1/ipshared/badb/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
  "../../../bd/design_1/ip/design_1_BRAM1_0_0/sim/design_1_BRAM1_0_0.v" \
  "../../../bd/design_1/ip/design_1_BRAM0_0_0/sim/design_1_BRAM0_0_0.v" \
  "../../../bd/design_1/sim/design_1.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

