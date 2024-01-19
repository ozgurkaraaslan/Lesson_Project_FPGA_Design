// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
// Date        : Thu Jan 18 14:56:54 2024
// Host        : DESKTOP-NOGC60I running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/fb29_/Desktop/EHB_embedded/Final/final_project_2/final_project_2.gen/sources_1/bd/design_1/ip/design_1_blk_mem_gen_0_0/design_1_blk_mem_gen_0_0_sim_netlist.v
// Design      : design_1_blk_mem_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_blk_mem_gen_0_0,blk_mem_gen_v8_4_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_5,Vivado 2022.2" *) 
(* NotValidForBitStream *)
module design_1_blk_mem_gen_0_0
   (clka,
    wea,
    addra,
    dina,
    douta,
    clkb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_WRITE_MODE READ_WRITE, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [7:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [7:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [7:0]addra;
  wire [7:0]addrb;
  wire clka;
  wire clkb;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [7:0]doutb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7033 mW" *) 
  (* C_FAMILY = "kintex7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "NONE" *) 
  (* C_INIT_FILE_NAME = "design_1_blk_mem_gen_0_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "256" *) 
  (* C_READ_DEPTH_B = "256" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "256" *) 
  (* C_WRITE_DEPTH_B = "256" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "kintex7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_blk_mem_gen_0_0_blk_mem_gen_v8_4_5 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(clkb),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2022.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VHPlDkoDlWlBfBMvPBmGYmaek3s9hXXhjF28kllYPnaNm3TSnzzpXHWHc8Ye9/2L2yiQfJ1hTWou
Ia/zeQ8h9/dtr6QB5YkyW4wlb/LbMgXb+DGIXPSllNl0IMsRQIcQDbcQm1bO/nlhb+2pjxiuaQrl
DbvxoDwPs7z3LunRxsg=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lmIhoX8hXuc7tNV1sXY1K2/gXL7Y7Hq73qQF7+x03UWWTRd3uhGmVQtOMVbhIW+66UkWUHiD26zL
fzqGor8bgSNGpSFyS11k4TwLQT4OfAMGO8C9Qmmh4+VENBnpS9TW+wHzCv8oUwht7xYtYRZvOvYK
F3fMppz2sBkUd1lciw98ZE/UmNkhqBuMfIYF43j45DEJ55PBhOZNg91Ls4v3qBHyBAaYPFFoMry3
d5Fw1PZyFQSEOSSpwgyds2aN0g6oIwl7zm0LJrM9VDAOxBUE50hk+oHr4jj8J8UhHQJnlEHm1Idm
rvxKygNKRvfSpa90NYxZJFYgqnrMYg+19+9aZA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
VkyCjO2onoeZWEoYQ/4ue7X5mkHyTYVW9xjdoTsGS4GdP/Q64VaCZL/jr6R8DVDXPMnH7tRMrDpo
jpYBnyzSgOkfgqM+96ioC2fDyAaG4gYgGLmrBR6qK3/mxXwAZZX+GJ9R/eWXkc9h8xN+gsSSX6/M
jIQCgeT6q7PB4dWT6KY=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Iub91V+TnhVlZCSLu6iKmFjix71y6/l83OPTs8uewWvkE7WcqYxEKi9fonXEkzAtWzuKwEUqnOlN
VBsNJqPUdKcd22q523mrdt89mpdosWD+hvZdO7ELhJniY5u9h49FFkubpN2JiUTcIcKEYxVNlds4
wyvaYUqbPVH5v2ooJwDdimS4GVn9HerCOgPwfshvQDNlMTxLcYju4v8BHMc5Rub9Q/ihvpQU74v2
ouZ9XIwA+C6pBLwvaqS8jE7HXOokgqJilaX/W/t+KEgiFry/txRTMU9WMD7tCN7lcfjCydmS3Lq+
3u6Hsr0S8BwNjcaDpZDnBTygUJd4JSqREnk33w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
U46EWFmKmpZGaWfyL+dokyQtJtaOYsa7HCW/+fdtw9/yHKTWFpmqKBZngBj5rPkNhtTDDCJkqsYj
tUXg1j4tgIBaCQn9B0q/aG+B3gPLrudp9hLL25mVbsfiTzdekiV2hJMmhuMoavKKPJHC6zyW7kZi
80er82OQy8h+Df/fe6TRjH9xEt3/b80tRKUMbxkLfnnkAyyf1KfOhB6/uyI4mwXuQR+DsAbzybKR
YtXpOiW72tGrXTFlzcwbHamWZefqsilVpBw6V5dh33vYKGx50xwWpj76maAkpQrOpB7zufeldJe4
W1UOEN84AZdRTLkVSxamWo/wp8nP9fiGS/ItRw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_07", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
qczgIJYpE/SzErzK7eWJBGcDFEzDLm8cKbwJbPXuM6YnJxx44W+E60R3war7K2QGFAkOoCDUtDC7
SghJGF32btaDLzeKm0tQ669sBtQmMIaBrlt7I9QBkNM8zN9GL92qxNC9o3UVWMOYy5BmH8nUPgcE
O6lRubeltlrTuDe7UJQ2nEPHcXjpUJJ8dxktyW+LovBy1OxW8g4GRAsmEJsoOEg0HuDdWcc4IshJ
PvwPJ7LblELAKsdkSt65y9VaklaEm7MlH4ImlgIa74TgRmutLUbWxM1QYhGE5rAzFhGU5i3RJOdx
L3N7GGGvLMW2z9NSHbIFX+/eNII9fNJ9nZbgLA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ti1NUgDv8YPk90APMwfu/mRr38QYwAxZfv0T6zQ89YS55t2EquEGVqrEafYX6rTydLOw8le1Oucv
f2oERpSSSTih/ScZneSZmuPE/Zh2BU1Ajv0j+/+0uEWXU+5lLPbDJjnapTmJXih1MYPf0SHpZZmE
BKj2IEBI9MPZlh6bxpa5BWJnyPdAvHf+UNaMXU9+pmbtrzUVebql4mFJu45Z3+ehmFY4FBW3zXMF
44C4TlHACLwL3vHVMCVfeKhgdVDbpE+/IFhTStz7mZ9h9RKGanQcs6YDVM1R+2RKA1QT1fX4FiQc
1V+FGmrm1ujxmFGXwpfNKByVlfCY0oWhRJCYYQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
HuEXFK0NXt09xU2yxxjng1OLsT+ZEM4EhqBgpr9D2ljw2vDaMBrqEsRQTc2B9soDq3ewDduHJXBd
OGYxkPnoN6LhjULtB2nTgjcH6NxA4puZ1ZNcndDndVBo8rTW5W1OqHq6InAG0CqPpTIkuqz3ECPl
EysI++MCDfH6tIzlekxJFIJ1McJsTq5rFuLzMMcrmkBxgcayDpOcCFuzZzCczxmt/cCCIKmDybwT
OQXmOcLJoYLP4sFu6R9c6xO8i6p++crv2N3eIxZHKbek9xBBZqQM9EYuEtsbkqAs9XZpa16i5njR
BDFxTKcP6r7JgFALJE89AZhBbate5JXWp0v4ECZD18aEL17CipwcWPutNMdG1apzSPP5y59n7rMG
yxBPz1gKHc3Emkl4WcO0hjICxqmO6dMXoY8JvBSf6ry2l0sH9Ihr3Bq5WWmlhPHnoaNr5jl//vNe
KfToWtn97eoVSt1LnmXXnSpdigbHr0UIg8AdkpdkuNRaWdVicDdgSo49

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
mokwst2bn6UxD6V9UdIgCIG1QQ/d0FiJqYGOTI2eHPV6YElaLjnJ8DnQmZnGS95o3x93FDOoa58C
RwYsX1fVoVtXkj1LuZq0k7q9vEe4T8xMjpkeYtIHY9k0Xhy1Lq/xRlfzGAf9fvf9e+f4r7aR/Sb/
uCZxxugG5niTwLENY1n3NthYL0jvo8Fmdw4Qg0nTCGWlVCws+09K0g9/lx6I9EcuHHemcHO3fOZG
lMc4NaPNozKwnyDMoWUkwiVxyFEPFaQLNYqzjvR+CqrWfhFLo96JWhL+eaDoNuZoBVYQtNH5ZwBL
BoO27Pw10lgcReGlZBz3BLO7T4ddynCx0+eSnw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PiP7AjOQqqouyQMoBQqgWIDhUSViq94rIvGiIJ/UKMDspM/yXw1caE8AhWHTjYckC4yLpPAz5P6s
1Z6flzDPrzVwg4e59X2cc4IMCHhedna0rDO804njcc6amRDTeLsMLTkWfvomB4xwszm2AgT+PRnB
WHd09ZUDVFjiBXT+Oa9AicgGJHrX3w823yBPuAa704kje/SzgtiDpcTU1eLmLhLW7LpEd9KIHd9s
ER7Uk9Orws0Kq9PMTqMX4hMn5K5mFakOeOURiEbUjdv5RiIJ2g/PlQXSItM8fHsBTQa6fOaJwQTI
vHwK3a8ZBHpfT1YH+n7wNiNUZwD4SFXm1QVx4g==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Ul5ZfTHJwMctaNhYRortUZizYMPYRef7uYqPSuMkxsArnxI/cjGh+KRMwzV86hyp/6TXSJIjm5ec
2wX2UONdPN+DOJ84jYC4JbgJQrPnTj7ioD8uLX/WlyPcQzyF5keqFgj5eR5s13FskVWCuAWf5m9w
mhFEKFjVXDAr7gVgAJh/hL8P6Psrnf+LGfiM8JhnDepsHEYykGlpD3fzru2BGgqHWqPqFMcnyVGl
vysaIXiJz/eYKvO8RGcgd3DJAM/wPm9A0m/DWcmSnczOgTjoqkHcBg2H5uJMLvufzmjImi6LYEqq
v04ESDEN31cSUzqUYcayvMFOnI/WNsWbFIa5+Q==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21568)
`pragma protect data_block
wjVQf12BXQODAOLnll/64aLUadM88GcxkNMvyQ9XXgV84ZhJCi5sOO9Cxh0/Mo38GBH8y3pFZGxv
q2FQdPm5sP0doApJyg8kpXBkUEmo8z7arZyE+UjxatbGolUqV906SZyjAT+cCz5F8wwvuGGw56ZV
5mrrUU5OxiLXKuXdh7/h778Ijwl7YEDocLmgzmGSQwfNh0Dwea6QqoD9gLrBwoKE1cYbuzhtJkFZ
s3oOdvtb4ke85HzepS/FiSUEwSlqYIYbfX0FyPBdJr9ufS5KycQX0UiKHSbYi73uhYKwqHett7G+
JNh9d1taz1a5TnBftwAhANFqkUbcYoqhvXB9of0DGJFwVyUBDyfm1UojiZIcfXOMruz16uAkBbKG
49T+6A2Tsm0672IGKXx0YIF6CEEyP7WtOGuuGffErQPy/mQxybkX1p9+jGOP6I2DpGtsUZjkLiFK
GN3E3txKHAP990gIjNq31tgwrsb35bYTfCRUgQ6VWEZtqOCKWxM09wpnLpq2MLwX8p/w8Xca7om/
M1PaoNtZby2mk2+JWMcRecl5trzeIVhJmeDrsm0r7ij/bEWNHp1OWMxvZixl2SuPEUUnWTaNNpBv
tdY0xyIbYWTOJEXknqMMgR5HrCDWCbycE3nnDKaYSCwOUwnU3CKWZ4dtZB1zox+kArcWBFsiSFlc
1qrcbEA+NHYMXlTUlbBD4fYkuWcdQbD3SjVwAsXDXtIdj+AnvQ7ckAU1MJIOnLMgKm6GVPezmrPk
YgYMd7tH8ECoZd/yU7bgRP5uPZdD+LZtrLvHFpH9BsbBvMHBo9JyNrVnpTHEZhiA0t+qxQq8YU+Q
NNgXjI+DiQdtgODOxYrgbC/6kNlbAwQP9rt5ohYaH76fve9dWT6WpNMK0VFDbDHGsoNlKXQQjwH1
JKCGopxGaBXd9eXzr70maEJvWCJxrdtRzTAdhbPRTOoqqzkK3fxFOCEROFR70Zt3QF1vlI1ypNbG
2dkqWEqHE+L8i3KKccdOlRRSgW/0BTOU9oRM/DRZeN2MIOhJB7BqdX9c5y8ik3henF9fPjtY9aPi
IWzM98AR6W4LDvr75acDxB6gO0Br7BmeAeUeYv261nT5k9H/kHQNat+XvL7z5xO7sjo4UFFQXAeE
bdaqbI3L4HK3mRm8WMigRqMXvE2E+3r2fAB2hqe/nnk4rF9ZrCnc1BTmZovCt5INCpZk2G3zupRL
2Yu+8elk26JZCm1moCkzUKNEgJFtdzKfAsj1CWmN1Z2CSS5PC9+u+3M8+2dqmY1B99PiCF9duSrk
lMw6xPldj+ckFkUR0adQ0JTIodEZ8YkLJ+4aVK+HPfyS2rCqybwemJnTb2jDYNgzQ2yKgKsqUkrf
QpH+pcIhopM9ezLTwwU7pQKZoLVo3IfZghnI2KBWR1ivze7gCJ5Q+GY3EZxWyonFEsu8lKsdezZW
CnpdPfHVz4iXC+iJOi2xVDBs9KY59O0UyKvQ4bXWlIPjxpGBRA7A0LDV+QkcYUEimE5t1i4uhPUJ
46TnxqXj2NOJ9Y32+MoYzB16yJojU/ymiYVtfctG23oebdNth3eCBZLFueipgDBgKbGn9XWsN2vb
X+LkwTYlyTeJ/FWP5KP97aYuR3CxyHca7IlkqVNgablHEK/QWpZ9tbqDUUsnuzm3vrcd7/mYgOzl
Gz3ooD36yPyWDcbr4iK1+cjdCh8imD36ZpGiihsHzLDXpYxGgczljGycgcvHsHqBiCFsY741QOCh
SzdrA58erkS9uDiOP0SFWYg5neSGhjLRS+SVyoxSBmk+IWvF5kldo0qAzz6y3x/7GcKtYQtR/hrR
DiGtCL0NxMoWZ1fSH2cTVQzv6lFeUBbKPefnNPEgQnfbn58VODlfB9bxYEe4Rv4zRRF0T70Iau+F
WXcsldmQ2zwNOWOB7ivMTaX7xv16k7/ZnBzR98fYIOIvlEX7nE2PXyClruE9TMFyaM325a+77Jkr
eiRV6ZL4nXgqu2bxkGNrA0/REBfXndI7jhMZ0pNlCK13bw5vYoyCoi5htNbX2LSAmY8TOzddr9hu
4qvEt0O5Hw8qWCtki4rh9OaEi6uzTFtRgoKsavlj9CfU9j1G2BDa1xqVcdAI0BeNIobqW8IxeYeo
wUctabc65kG9ysDhsV7DaTeGJZ21mN88Jahf6H5J/xrwfKE9M3NRv4DT5OJykbDz05342FKK5uIp
wsspZvfMOo29NK9T43suIW+x/3FTLDN9xUWGRXq9p3wQU6r9+bsksPeK4+2e2IM5Tp/2ERM8x761
skocDywSxEDDay5+UD7vrHuAuigoiHxGVrX/O+6sPriSXoqDWafxLqoP/fVca4IubRvntS+/vl4j
vuo9AyYOC/zXOF94UkOhHxxP1/e5CynYzWU9B7byzCfIHkOj+RNYkYT9fxtFOkvd3sGWCJp3sluE
+vgWAuaU+6hw55s44uBk5iMdubOjIvGZXsY4wNAz1nDqoBUqSUcQkbx1A8Zq+Zu33J+AHJofkQr3
aM1emaDVCKUXi2K7YMzMhaN5s8Rn3cNSwBkTF4VTf+/YFe7eOXyxBr5ZCvjAR/hu/UItNR/a2edS
8cZp/NapJbhj5hXGGdmGnL5MLXUFIVFD7frk+ps28zwBiQxWWP+V2MFp2LF7+XJ5v03Cod2AxqsD
e3CczbzRBTYPZ7ZmVMddd43OWu6crEmP3oXaVHwSNtn7SPzX3Weg5ArG3gi/D2zN/ClJDNOKjM5p
Pzh6/emhLwdAZeMsOed8yu8zVqaGStQYhBLtOb61zMIiAm94YVKnCRTwXTtYVVoqoILvKUxpv0i1
CpSOoM94kr0TjToM4hzyU33duOWiCt7YrR9tyqFwe+JQAejrgOa22j8o+Jq+NufMZ1Z2LQQL2KKA
1usQC9NEaujc2b2a8FErvZrSywuXudhzwA82KYTGfpC3upc37TyhzPj5dvuFHZsnBViTJalgLOgp
6o6rHf79W6E2T70+b6neTXIiwKA4wC9RnAdWBvx8OHZ05yI0OnimA8PK30ewt9U+tbFT72+n5WKC
hsBvTGEzz91cT0BPz7Wzk+zUjN+M5YWl5FucpjWjGSVyz2Cj+cmQ2tvy3RWLomU6q5WYydDFyvb+
GfWdr48EP+qOreX9ZRQb/enQK+gfAyLAOAGxuh+gb/q7xjGeyFr5+22Ncwrt20MaqlFQ+YFYlTpQ
qv18Tvu5zBpm2QzawOiJUHCCZfS20edcnCBw7DJJusZLHq7OYAmLL5vXgknkWbpm0Fu4987NnFSY
N6ULqi2qcyAE9BJJP2+USYNXD7cKgaMtRpjRuM53SHZDuy1aTY6aBpbGFyXbY4BFElgSK9M5CUrY
botRfDcwaNFpOCouK744AxOws6J2+wNd+KOdmDeH8z2iPS0McslEPW2P5MZxOy7xy/JfAmMOu1V3
ls6z6VqLYgE7meo1j0dpwbZyeHo7wqlU6k51Gkp9Lf/qc9vJtVGxKysnqx+FVeixxcEaXcSqL5My
TM5LXRI/6oXL5LrNPF0p/ZJKcycIww84gTlQibTNn1ch1fMTSfs3tiIay48ScU3TENf/rNH4oPxw
akf32pDcaIP3wCN/XsKK0gVR0YHGtbH8r6OdeukdXemmKLMlx/FR3JGmbt+bN1wadmiIdDsnvNs5
4roS0Kw+nIaviYdms7qfzpWq8knI8IOt6D1M1H151MHIdlBpVKlGM3ZeXL0GrR/ado/jW1yGINHQ
YsqYLLbj431pnYiIteAO2juVpz6aU+IH2lnkYByQlmUZ9I+Zarz4ke2n3Udc8P8tT2X2fCvBIdDW
UpU0xz+vGIcR4PLwtnsMEWIUxuv7dW7l+10EbZDZmVCXFOPsyVT/58pbzr5cpg7tmzCMSl39xoIj
o5FWjCPbKOxD8tkC742+X+xVosDFVX3IHJYXVE+wSA8FAJIY9zKNbPkcs7ktYIO80NRHyiW3h6JU
F2yS+VtGYhUw9zWFZi7Kf8ZF50dIhlAycyT7CopGKqBS2Y7RiKLQ/S6CWjcXl53pBh6wb/BUbz3N
tjfpNfUEiYG+IaamWX+9SB7Zeml+5X1Km1Abhadr41Ba9O23EtpgUdNFBjQv/6WhpD8Z7M/Vk1Nm
wf+GGrJO9pXcHF4PFSfRyvnxHjjQ7/Nkw4iEItjDdi0zHau0GImvXcBDMK4iKJdrJE0txhJ22gvU
/1P17Be23BdtYCPXVKm1jRg2+H7HLyqmcbSn3m1OzqLeiJigyy66djxRlurQl11jmoImLhrNZJ+L
FNf9E85W4KwNkY32AJxDdfxr6l49onSKTqi1G4XjOlLR6KLDTLlRXCU9YJ+5PiAF0Sl0SQVNIjX/
j8R/C1CZwQy5Y40ozl5MK3XTQHzgVOeHnxBxstRVecWMgg9z/VBkRYAS87kosqdx7tPj11IXn0hQ
de7gWK21pVk44CqTTt9nAtbY9tg4is7aYULSRFls8fx9lRAsChK7swrsWNDQ1eTc3R1aLj0TflaM
EhOZuVQoUJC0YMkQeRPO6kglDP19CCIAb48YiQ3NbL7UrBpMP1KveS7C8nBuxgZsZ3hzDnWsh3Mw
fYc8DAXTMuMo9ZYQl5do/E4iJRNsYCjurRXWzKefEFF1v6wHA2Yge8OVYvATw9l0Re6H1+7MYYZI
B+Kc911DrG/6gHy12ycpnRh1FeI1V68hx+oi/GDcbxbo5ISwv/C0aypw1LOce3phEaY+fkXA3V6p
WdB4hMmcSfJY8FFADdpFbkbLC5Ibg1Vr56gy7dVoYMxPjV4bMVBTCJXYXCcj47tsWyhkPy5i7eKi
3aJrsllPYV/VV5VpC1h6TpHqMf4ce8qeRWq2Jzro+d3tnuXoLm6et6CYRIZnoowTcj6fSXuxVB+d
iE8jALqXrQ+oiEoIUdYR5XwFqzs2mhqQ+DwYtPyLy4lM9HQpKJELc1zzc84JJtgvEeVOaJQtoDxi
lMU/W826c6ng8D1+GYoO61uCJIyh+mxvlqc5Eji6U4yQ5n+clsYrfA6ZDVBb+VeVHHU3vexobgNm
2dKFVgFsQ7KjwyEV4hRe3GZJUNJXZaRdBhlR9orbcEs/+xOihmBPbF+HKLqvsvLaSe4QWrlSt14+
jeZaKz5laTV8aoltv2Keh1NmfyaInGHqId/lAA9TWorbTCOgWM7SONFRQaqsHIhmW50PVQ7aOeih
wnvtdqxv6/bjctuwec5CfkI+5TbkgTO/7+22tu0364/kKyBrOEguBSrnNHdHXPuS9KeS6zAtv2fw
Dlkb0HqlWPT7eHJQVZ5tcCYRd+CyeHORjjht7IbObAVD1knQ/TFT+NrkUsU+GqS6nxDKwX2n19d6
t38MJ2N4rw4VJ+tO64wStq6UuLTdpUVw1DoyYv6kDcOSdVsSQ2RDIH9/VAmXZ1KTjLTe4YiKQX/x
2t/h0C5BJeHDOWeqnvDwgY2xhv8jwrN8wnTklKunJMctWYUH+Mmw50C0b4Fqdq9zKCB+ubyp0NXD
Vnr1tZvkwrBIL0nqF9AXQNCSKv0KhLA5qbSpDable45WEEPK4hfDCzWjmtXTFriKQOyHoDNgxhtT
SX7zlsCCRI97ZfZ6xcDtpETQQrzIQ/kaapKjXGciMdduSHvl79cmCYiSwtBFVySA34+u0jREIE7O
DCX0o8hnPxuBEHOmcluJeQsb3TMhQl93Mocfg7BTdR0hWq4RnP2dE0jG2PuPz921HNUh/Ob9Sr2g
ZDE4NNjyUfz1cjMdrdoYXSoUXHnGcINlFWUDdvut1hON3askbUHrWe+jGjigoleGILIY0v6ooxWc
4q39ssynumd2/z7cJyDsbXxhBSKBLV0LRR3jvH43ORzXHDBdS8+/vanSBP0+aJsD5neKXEsK3nu3
9lUL+nIMfPxQ/Bx9r1l2Io8WLi6YJAWJ5Rv3swRHbQdKbnCDPCMdBBnzoBlUG+ESmHgYjW04JsgO
qjCD35zdvNqVwKbeXBvn6SVfIqY1RjpEJfc8E3VWAPVZ1V0g2sc2KvUHuhCXsFYpn3PN2OEaKFrT
IfdpDdalzb1d3wgSM6W7MUfje53erAtdIuNWZRWeQctaoe+GA1l5VfzGGmZo6qSwyzPS3d+VJtXr
mpC80grFx2B1YbpSpMDvbS1HekQ39evSi3jK3rhqB8qYzsd4SfQPA1fr76XXGlHeXGEQQQrgH7Ho
t6SRXqlb9pmUvj8erhvVijyVoKqN+0Oy6dIfqHFsmqYiEHy3tflM8s72d0YSdd0qV5XWImRR20da
EKajLbnXvwA6Fm5D/dDTPXW05Ut+J3Y7PPWJI74cP4uk6ZHkfrUEd1iHugO/1SEGRFZWNUkjB5j/
6URevg4JRCup+Saoe1Zpc+uONargYDK9pRm1mUWMlao/j5e1nLi7O6Byc5FZx7+ANf8c/CN+9LDW
kJUZ2hHmgy0W9WSS5iaoEn4IXp9JpUjYcjU6Zjd8CdsZ2ytEAG2W3vmUgGi3DX/YZhEFNbbdIBsd
JhietjDfgJUyVW4sinGvxTsKnuzGzIc26Mx+P57mzJvabM8n4loNBD6Bm3N+6MqdbzmliBhyo8+l
ofnKIrnO40o/jRANHzDRjVKK/rSaB5xGVAD7HvQ53UnIgXQ0FyYiKiQgPK0i4/TgjdvvPLzdKuCR
INczvr3yB8Hn8UnXf+Q44jP98Cz8wET8f3eEUDJP0b/dntu2hk5utbv97+C9tQLe2C5Dqih9XGsb
NJDCCA28+FcauZ9zS1eGwHblOn9WRUOIpw+T/x6G2/y8/lowZ2dAN7OcKk37zlmOq7od1SI8aqBN
1CZw82s4p5Vr7lF85bC2Mx8E4IDaxC1DwCbwNIduAqOU076RnZrNL1VS9mmsVh7jX9eEZEB2X31R
T+HGONbn1QQmJI6j5tRF0FhJjgJwI2F6WHiXnPt+bKwCeyLrQXMU8J8C1zT+x45wXoXEB/WQC4BW
udBu/l1Kw3+N4aytV3FY9gCKFXoFMJHaLCFHniV06rPWjHGxIm0qtPGDWbZDAq6qaUBvAK9HaB65
0VOphxvypunWITsAYwObHYc2sFKSQ/3EJtIWNnknJW/FoLdgwTWNDxeHtiKOUxkekop/nbJnFQb7
ZBfIyLFra3O+lWSBi9M9pzr1LsQFyhs3/SCvXCIB5NhBKjZXWC3+YSIsuXDTqb1KZv+MQokvaPrb
M4tdi3lZAnENYvvgyY3mn2qtDYLcQDhTWIZMxP9GpkR0iaBkqXVqnssNL0mk3Pa7E2DmeM3LJQ22
w321uOgnushngj5u5fN9ZwThRy2KWAjEsfAIXnP1psmyk5la5R2b890Azdm9FnmvkfSVtnpfSD7R
uQgaGTmzEnVUxHyw1y0knkEu95eAX4OtHYB0AXdny7xCc+UU97H6CMcxWV7vubGr4xXbdB++DrDA
fdi8xiYm+r/7uUXhUdo4CiTrAu3eENhfh6EneVlRtsZ3S7qIP1bMIw7BFEl6xA5lr+5aP5ygsWcT
PXTiiYfif4QIHsbTXYyX7Y5By4ylM0RgweAtWhGwJAEdJztflDNsd8f1EMoWduWMTjTpi1R0Jq5a
sfZtTQ0zWkwZmImf2ihF3EQ7ZAj9VwB9O0sKHOuctfNW9z0msatnMTGgvZcK3GazZREsusbSZTQB
1HcU+JDUcMMt29liAOF+vVVEh/YnDmeGoThAXwHUcqzlz31boDhTcBiGLTdtkbmyKh1zQBdDvTk3
XsLzzl9sJuMBrKihajpX0rB1csty1coV+iQ3q/1yl9sANdMEE+2j0vgT4ydyGqwwGoVymbQpN0CJ
r42S03vfcCIef2+hSuOSVRtHkPwLm4o03eqLolmWVJPuzP4ooOhQ9uwCZNSPAVGLLHym2oNLEmii
5FLnvYcwF2FcA2m4H3fhFGj2LYSS2FehdNBIGb8Bs5a488Z0aW0CRN5aROEvT0j+4ghMQpkEdq97
DG/SiwDDkhhW5WrfYuyDb5TEun5ha4FNsEGsQNcRnJXBOe0hRrOaZSAbyhRtWCwoZmHSfEyCYHjf
nWZr+uyrVuP4Xz7sKZ9yNNCcHV52x86MRbgzfj9XsNtnnWO/8K7jTP/qv3xFnNixOCaOBUcAYnTT
aSWgRWZU0YqNa834W6vBGfXDGtgUtWZYpfOPW4k/5t6eewTHBWhiSeFR896lnxFoA2Lr7PrmfGra
19MGNtNNyleV+YN9+plyXG4I32cvL1Gfo0RBcf07vf4lp7CCMhpwxrlbgnNev1VFfTktovPcrNp+
b4NuoYVBy6tD91PMCjFYEa6xr8/mZHUsLkOUqa3rhJ3FvAxrC/8or63KZonuwMJN7hvqtbXDPSq0
UfwzN9QYBxeE728emFHK5Rq5ey8/gK+d2gWUmaSAdrcXUi7WEGfVgLflPa7z+Q/pK7mqlrWGcgQY
kg/qqIpBrIdd/FSrxtya7vWOZpO0J2S2hmsv8rXnYaTeaNTLOONSjOigd1DYta5V7CCKJRO1GWcc
AU4ksiE0OpB6wtPfVgrepsE3/fElsCxnrP5Rbn2BcOzgjWW3Ep93RXqQxecdcF3+szRNxjgDn+Zr
+X39xBN5lD/CEtBlsqV+iOjGL79z6kXs6dODc2lfsUBm8oiAEaWO89VP3ONVHXBWnpFRxn4nlBln
U7xTViKv5cA1U36sKCrdGlTaprI2JvTfMNlZhyh3IJMjq7l16uFYKmeoXsYWxyTqOJy8ayG4fpWN
6MChPv1BBGRehEyPX7KugMJdCB2t7MMwNYgAMJjXF3+WzeqGMrlPRj0YUtiL8+mACoQzlD2hbkEJ
qx3Nd+8dsDfMP26UBSMsRFC0HcIERFoAvwe1920EEyFduxRHczbgLsVWNiYxjFifGnDZViSi6QDQ
dmXH7Fjl5/WnHML9NFo0+6yGS8oU2NDEmV/3YHxLmFf8GS/Z/Pu6ezZ16o3VKZWltk84EaWmuH2n
pVXAVqoZ5SXo5A0g8Zv6oo5jSWw0qRWr3VAGcVNmWhL8OSgCEiCnmmeIQW8MyDu1Km/eePiN3C2y
ld8rlkd+XbnVJY4DTdg/1Wk9Vzpdbs1cs0TcQLGCYhHj9HWwjuIcTnD7xTxTmO5lseQx+EFwE4Uc
nKf1SujvIMA1MBrLwtSMmBxYYU1D67jbNbEzOIAb9AsNipBvm18hQgHK/1yJh1T8EyvKrvJGhBV8
BpOpARlhBydMG8N2qufJCqiqKn2ZYfwuesGnO6xY+iY/+pqIjNjM4vgX9U31zx6I7sd3G+KEDVcQ
zK9QoglP4afzKtIgo5uz2gVzahZSlCC0hlEvZGnEUmK+NiDpVXGL5IN8Ccgot+gk/0cMRHIcS+VI
wKek+VXUljIyQ+FOWo3997B/dJG6QY9A9zEz1qOZ7h8/Q+3oWKnX97Tr6bAygUu5jiXFOXFIXW4i
aahZ/jxSrZyuMw4QvoLpnd1z9HTbPGm8KujZul6/icnjN/M0rReshchzA2f21HfPR//3Spb8ZT8C
K8O0A0dXz6IRuVYTQrWZbDj0xpZQYp7AnndW5P8ecR3yQvooR+/z+YTfdDAt6DNlD8Iho93F6d4s
oIYQ3V/Lu+az3N8kdrGgsuEgHemw06K98i9sjwTQ1COZwQAETMeqBji5epffdjsWLOlG3qv91GXD
/8Cvu3cgOsQpvFhmE6RZB7VNXGZIXhZdNe2qiSExGEsOWInmJ3M4lCDV7VkQMdewMGPkPw1oR3Nv
k3jkocY40x8WHabAOZGRXUYZ+KOfICKDbHMWX9hOv63abfKLoPsn2hBKKKWOY3Vh+hGcNLUDt7uE
RBqP2T1MK9Hn8IMId9qgaHERq7wKx/LQdbH8ye1J7pX0R5oxSgOFSyRjZcVAnm18+aLQ0+hf/9Fl
+3tIj4yCEaU3gUHOkTioGQ8lX7hGCvu6RXxwSWhIiBfX/SkjFJVwHx9/uyUAqtypb9PCGKaPQGAp
DCHXRlzVUiOro5/SRShoRdxBGyRD6kXEnSgJb7TpnWos27HCEN45jyJ0x7SUr0oaLRx/Ar5OTD2X
8owxXZY94+vQoCliCz8Ihuwg0sxYINI3NZw3ge9y51uuCC696b9PAXRMKDREidYRWXton+IeuJQM
IoxFFR8BrNi+oXI/DDRcFZxSOTe0vKE0nSdAWWGAnHSUZP3BatWsdn9g/JhSkL1oXLLhys0SeWbK
1m7mlN5Q9slEFMVFuAptD7tMgGO4Q/GCgi0pH1C/D6DtE1VWbPCEYncrkGlb6RhTOwGrgkAF5qLB
DskFR4X6inLkchnfgO72fvhD7WNkj5wbcwKlH+bdXVZJ8TMNaUIJ3GSwabqiEecdbs0zFQkhqVLu
3kfw2ggHPrAYeHHOTy19IMiwEAdHCunTK7xxFqyKbADI32ZbdI1c+rnc/qu4JOMW2cIIJo2dWo2F
YWvAW+rbUT6tSypudJ+AzAgidfRd2DGB7pgTBA1+vTGc3IAk2EgppUN6o0ZnHNeizTqtcmBqXUsC
Ja1R48Q6MyZ6VefcatzglIEwwPi7AHb+H34zde4eRIch4I0HdlZgbNQyVmkKdBJhE4uZXwHcx+k+
X0Sxv/ue03afg/o2bCwhPA6Zqkvn92GoZdtfq6qi9F5Q+EWu2VhUtdaYs/Gp0QRpMEyrMW5B3FVg
y054WhTlBWIh5dZmhwta53M9CNKd7kdCX9UQj5IaOU+N4D0QZybmO6O32VPRw52kbRmTt/1cjfAr
oEaFiGHpPGgmvQKh/wlNa8wj16iDd9wcYsFKfkib7VJ0zGWwKHEGNss7XlOJuqF601mE9qbOrYsW
j4c8Gm/iRX+0X9YoUexm79zsahBoH3NqTMXJlVhpRgK4MilgGbV5lUSB09vPVib9M7ZtM2hlIH1I
1l2T9zVx5U53LulzP7UQNiFyFAqZp8mu+w6h/HYdeswmag52oVsR3FW8i9CYi/NSj4dENDDZsScP
S8rzOaDT8515py6mwkkdh3r664X0uFmK/ewGIxeRs448MyTSsuacQ5RBxsG8HjaAtd0zzXcnrfLb
E4Q1hMvnPDV76BVZ0o2C5S+JBxqjOCkXVXDQZujTEWwtf5j0An7D8ZAuVnqbEIkUp7z6anzg6ceo
vD39c82csI1uxzZPdL71NA9KpEuR8LjJucNAYwgvcbQu6NHZ6ZVqqRxVNDZTudrXEV9OCPFg3dxV
I0qSrpujHR6dY1ENgIpsNr+Kg9yiUi1tddWzVmnLxHbJJgGeU2aX87Z3K9h/7SLXENfr4d0yOgr8
AVXIcGkGhT9Im3Q7kYauMiBNopAIiTstgB07ZpG6YcYFLzRUpTWEJlw/pBJeed84vccTigDB6/4O
m9ar5JEBR7TKqP6X3stVePpZoNDlIRAsnYXfzEgT2b56Hg4HjE56rlInakjsIC2SiY5RKh+bbrJt
faY+r0s5KHKtsMWbxQ/JZifpZSfslblXIDI/k5T6A5JVN3fR4J+SsZRp1LvxwCEgFETdLWxNMmnI
2k5X9UJXdYipew2OXk0L2jGgb5FyI9k/QMi6d15SH8NkLNWHSuCAfbnmXgIfnO6ot33bYsaMbCLL
vLMg2Keq+XXZisdnziwJVfkI2X4NQU4LtfVivFlcvdAFVENHMnNeoLJvn9oT8MtgysL+KI4DiwU8
FnjrDZGxsW58jOOPm7gYuNQuSCqU2XNxMowS4tPb6MO0mmg4tm1mDNlvLUIkthze+wChIwLXkrOp
uh+7kQDRJS5pcAwdHNUeRLPni+RPYJH/i9+4PC5vMDOm70F90NGjbknOA+B46srgDgXhvAD3KI+h
YsYvGlr3bIoHgtMSh3dLIYtMK68+D1k0Cp+gfBQX7+FgRuXhBvQPPebQdhfloMopm4TWTyHPUgyZ
2y0/8QsR2yNJyHVtcjHaD8HOu8658Jd9DDhogDlVVLkgEoSD+dXHz3vfMTAv94oosuDlmu3KXWAu
ENu9pL0x0NwuN3lrE134h4eG587oMoccAaxuQ68aTvrQqNfOnhFVHDD4c1S/MRILRiWb6w7F/XVL
Q7wqeA4v+/nJM8FmkQKc827yvjvYrUNyGig2KQLvcXFWVCc3Ef31SuOXqn9R7k/kI8YhmG4mAzoY
TrSKJupRYFN4++xPbKSmah0DVJAdjqRzNuDKnMwzrD4RX8xEjPZtVLtEctEaH4vYN/sLR12R3ozB
b4+PqhFlw4BBr2dsJppX7Udr4j4l/cW0ZCEgOFW5UvaumsDKPrkTETmuWpYogy0bmD7vc/gdlWwP
fiWELLQ8z96chm/ECKmpnvKqL4l4HqGobh9UlIfZtpCnExt/0kCzWJq+bXxL5Dauw5u1/kGdHF+d
XJL7qqpbu10loncWsM/B+fqJf/yMieYTpNO/5LbMSxEgE13DtwtGKoAdak4NxgxOpp15+X/6kFMt
rNdOOo9iDhuQnNSrNC04Nv1iWf8NUr9mdAbw85RKGiB2vNFMTbAkT4cbNHygXpu+reh+o1NxD4mb
8L199Q4OjrUSZ1XCyf2w+/ufkZwUzlsivETb9VbNTAd0SMC9pimGWPrzmaZJHVco9VUyhlQCztN4
pDFDg9G6tV+IDZF9tDUdgkRQPf1QRM/hTKuB8jbEAwp5muknGdaZT1UNJ67uziQY4OOo16vGHBI1
buVz1verEbBaHhT70dIcRqFYH7GvYfGAdgdM0gr5kEv4ckbZuiU1P9f+uGDPx2P+N6tY62ozoKdr
78pOQW8wFjsvlkhGby/6xZPBpgfFmxbZy9Znc4BSQaAxASLdVSoxTNG3whrUURoKNBZa1O/+k+g1
5qEjrtq4uJL4IJUc4+sfMIfoN5Jgsrbd8eJHCUhWbZMgmzUBVAGUcTnAVcSm/uvGOLmZ7uRTmFUu
TwiQwvLO78yuzlHMXZVM3El9t6TYNRzZcyjJVHiZdApR5NpuLoiZoWeCVE2i8W0NHHJSLdoK+biA
9mqBNfjw6fedkgGvTGbqFRD50G7397ysNUtw2fwsbXysU4n021tvF/HXpp9gGDk9qPqjHyG3deBE
deKFXeVqUoc/GatQQCFq/Ivi92Zvukk+/CbyQ6fFT3MPELOd+jfR9TGUSbsOAJWfLmrRGZGodTXD
1E1w25VJld/HencQjwEqfSmGZX7BCtIJ0FijOc9p8EyIetcRp3W+NZiS4of03GiaKqOvytI4HFCQ
+PNUxkpDvrDSYXYM5Ooq6OzGLH8NtwviB2UhSNlRIAEQ0kly8QjL+gOSjuJr9jiNBabJ7JsYmHBb
kh2A9171IvmK4xcPRYz7V5n074mvWFJhgPejcEVQ0eNGf7XHZ1e5D7Y66De6c6o6M6yIVvSD4vPe
rL9XiaSmOnv9TSCgyrgfkJtWcVNr/bqRLu4wVQKkisgXRJPhJGIY12PUk2Q9C10zNzsp/iZWqi7/
fhN3glxNV8ZXRfIBYBWi1Bg64NpnJjmAJ0gcMCm936iiwwZNHPjVAFQuZKNT9o5UPY9yirL+YxA4
D3fZhO7aFXxMzUDcHWBm9cMzeZn1MKN9PyKz/SL83tu5GPK7aicA5eI0WaaN+XPhCoC71Wcyeve8
OnntG/fmfco5CIa/vomTRtiysz/7j5TKcFxBDmZQI086bF89sFl4tpdZN/FxiTH1voh2oVpxFmZi
eUloaFYXPx2RKaWRCpognO8o3SX8Q9XAU6cpEqg9DxRrdbhblcMCKkyehjnViJIV0H8svizBvuM5
aD6n02U+YoxNOYIG4CntO2Hoo9pGc97nF6KWQCqhWIKdiBYmnsX1m8vLgPJc4roU7bJrZ7/K5m9m
PQ3WMdIl59vvP+uJwL1+/CSsiOlpYOE6NqBsY7Ocj9STKq2COKiqKhcudMc1JasDJTkOopKT+nX9
T6+yGE0zoaxepN3EdxCHPb5y4TXhxC9/7W9vm/Vdvgi/N9/i8Bm2gktZ0uzxCM9W07dKibhpDqLj
YHNDxk5PUsMDdzRU1Ya99bffUb98SiIf8+FLqlUzVIMK0W7empfBFROUib6aTpolxMh06pKYAPSu
pyz9vG7ZjGvUlj815mo5yI/jzKQOt3ggMCnNX6ttMhyDVBtjNBUcTLc2vLYOfOtuEQkK0Wv2B6im
aBLqPCQFNWQ9NbAObTWjdgNw9y0NRozvhDD+oYbn/EppEwGflpSD+NXfokHil4jS7PIUeus5wHik
lWsLc7s4/4XlLz7Wsfqc27HbvQ0deH70O9wmQQNXtRrWmdOr1LqH8QtxDaIlr8EPpa4/vkbA1xQy
40ODl3HOFlS/4qb3dsO9WVAFLb4L7XMuqq/2RLeyY3OSlX9JqPWtKH3QlSRMs550+IDmveF1c7C4
EDE4pE6TT71wjr5Z6EEcGU0nyt8r9S/GKdcjTF/xO6Av7GVWpvIcetw3eNZKN9jbuVeSstBNaJKh
Oi4qoV6hr5zY1Up5JCfrddqAtwrFOjC32Gz9juyAAgJ/WEJdStoJXb18HD0BKczcXz0gz2A37d0m
YwQYxGt6PmILBpDMvbUGeQyLEtj9ADx8t6p36tq8pmXB69L0NN0u3Lje6t+CDklA2WjaRTvafDCT
Q4ItRI66UyhO7szPSPxoP5t8ij7EHLJEh+ZvTByWT/CG8YZ2aSavORDTVBoDNiIZX3sJf5OWwHFf
yuA1a/3H+pZMavFXBqumC9laL2DRatcyQhgVexePP4KvH3h21cPX9js3O9tz3geRnnfCkAt0Zxgx
i/KzI7fMr8zlQpWk1mHr+SAYfL7zsJg4OTDuo6Ub/Byh0EQ81JV5iJ6eh9DNqNBTjtIIFoRcke3c
BfWj6CmaPnCmDRChrrTwt3Z1O/hSJzXTThHjepgF1bKwKfndr1LirEn/SvsWvNkV0ZeZQBiAU3pX
267SLgBogrMGWPI988rj2Xn87X1GgKvJvIP+5ARNJjVUwtTGvYa0zzfLIqPYUuM5IyzGRTUKz4yd
pjVFnwOMrTG6JFsxDFWSMKeT5inHV69yKYWqof2dD/vuWJbpHt+axwasjPFhIGQr1JagrmUF8GxR
yc6nJMj0Hhbx11M5wftjdllRvf3eH4n39gmZQR8SRGSy603BmQFkm7riG3uxQqSezYH2kp1nj/bG
iaNbiKnfyo//VwXckMWERkv+WAwGG0pDCIMOam2PdpQnxi8OsCGIibeybn6n2yb+43QrRNKATOfV
Rpsl3LNl0kAINWhgLWLrLTaSceTjRgO7c+tDbzsNRgAl8ZZe5bLj0X3hoyV+kE1HlCg4wBfQhOr3
jTN3Z9IddLmALEOad6f3WF3B/c48O7shcDn5Ld4dtm1qdM001JEdibkO18+YgiCkDOtf2P6dUxbU
E+W79TO6uM9H5ocXBg+R5Fp0ktOgLbKPccZXe/HNx4nnHauEcQG5jK+HJHtSuiOnRlYk9YeHnYDq
vlaMbmfs+1VUBaCgC+omHXLrR34xcfSgyMcWn6c4pD2FlmDq9K6xZ6qpJ0oNcqzW6J64ezbwv0v2
KBwgAw/VNBYWntlfDuaTY6lau1w0Q/QiluxWFkTHQB4eE7TamyYMNKsnuEEBtPLIz6zUpIgcUxEe
ttxlrfS4fZYToc6lyZa0n2jgkztPQweHMXPGFX7VGApQmEX2qp93Vx6a0Ro2b9KiSdsqbDAnRUaw
4o71fuko52qUFgfWdOI77jufszEmTs3vyX4KSeu/gwHSsZcdgfhxE3Ao1S3pbKPZa/KsCovGAiji
cyKKoLojbcfnPHlIlKXHu1Mt/QvEoc5ncsRtiBKm5SnMPUyrcBrtwFd4V3F/a5PAOc/P+TEhhcgI
oglYw5ZwcQlFbGuRO4YOie6hrAANIz/Q0c8qwk3HD9e7Djfu+VZbeyzNctvVSFpJSk2J4sfCu0gL
RlOYBBYjo3WsYOj6UArrqh3ARAsaGe1IMWvVhqBUSxEUxYIFKxemhEeNVA11n2ocZ03D3gTywA9Y
/EePwZFggYBj/2d4R7fOuJgEWymryPW0hFT5lts5vHiBksdmDvYWRB/W1Z03tozn1bTTiRgtUdTT
8wZOuxqPrlizoUvLB9iEtpGD9PGLONuE43MPfHQ5FKsdkWzMRtM6HbwWLBaZ60lpKoQMBXWbEJB4
5V8FaOjuuwRI/jEwEmhgFjCuK6wsbelcq0rjZENMi9ltl5/q0Y2lZLNkmvPYsxTctdGJgTq/I2OG
ApDuMM5KcaiWDXdS81VwB+RMSUkjoKMm2CCg0rO5VQdcPxxVMIeNoBiRHooZ4yTMz+eL33yEKEI2
zHubeHGmzGFJFI+Y57FcO1JmP92k3KzY+0UKq5W+rjRwTtdZprW/dkKW1oB6jBJnHm6ous2K36dG
2q+yPRSn4fYWEYkb5MDlP7a/ogBWq3TxCvs+juOZOgQE8GQRmrIK7rYOxsOmUeicZMbb6bGRPI+x
DQST0JyimYAe0cA3RntyBXfjtYjud50xD4tcnsvpWcLKYUD8FB9ntjkWM7CRUWSSIH82DKW9bklH
E8a6Uhki5jyueQ1qm8Lto2ET8KTrO5aKmvsgAyQrbPb2NrEzCV/RCSpSINAnVKf2szyGfXA6fxTE
K9ErSISy4EHLCpEO/zqDWj7wT75cHvzT0j9aLAyFlHRKzTu53vVCFmaVqTl7DRqTrN9uAA0pSq+y
LUYwHKKjTZoJ0KsjETq/p4qBEv1MvHnwjwP4WkKyKtBAbjiUKCwOpC71Mms+/9wGfEpBLw/wElU4
/9yqzgxFO9+5Rc3gX2vX5Zm9QPwTe/SQR4BbPI1ZCoM9EheKt2QOFhyVekoj6oUCVMKwcaBm3vSN
YjPxUl66+Qcrv5LpnjXLPU1dRQ4ifTnpWb6V8F9PxjHmP/KSSc3rFkNIuzYBt+gFVTau/GnVVRn7
g34wvI3IUulNGAGIgcTg8fnQckNrr3TbYFyMr+5y/SCzCrCT5HktVqbw8nJsePq3ijdyy2NEdpd4
lDMi+hSfKPKq/tv0N74JQAnV04y35E7BZpn557JmX/6co2bPfqAeoaw55QA5Y561fujj1TB1AaRD
54ODre3R8J8/+kA2Lhmf52nj5bYKilkpzWW96d48X0qqWdDe3fdpwdoNuin40VE2/VU7eDYGo5E5
C6w6YLCoIqKxsIlfPEqXiWz6ARVsO3nS4vT/yQJwzYRpH4NrbMoxONonqoXVEHRkGevVsavvejmy
wpaMrzgP+mGNEAGSGJn/hYUnVLjJA80pFouYGKG8ppGuFa05a3XZ8ERM1e+CRYx0fKkpyNtN5gcJ
Ho6DpvRJmmxn/14gFQgLf3OCyu7TGD7gwimAbM+oedHJraTULI9OV7Z2hlVYxOhCv/WIiRnP8p/L
1uN6AvoWnX7EIQnpbUJZjzjjCoeVPCBVzpgT1NpJ+MSprYEbQQLWL3ayp0FMkkLn4QfW8dHlsBbv
NwWYVebgnMU2ahEB2uuwx2rWekBp6Px0kc7TN8XEYduT86CvLW6BhFvaqkt49bRaGNLBiaF1GWla
yiLQFNDvwJQ5aW4J4FbTd89vXM8R/ugXmfL8J3Rd++P7sn4GFFAHQtlDj+hhgBTKg4ufkOX/u1b5
paVMZ4XZXnObzMthLWN5m0bQgCwipdVtSC7qGfD1D+lQrlv/CautrTFP0wsO0bKR/sqKVG7ttahr
JDKFXxuezS7fHzrF8mlUaPByZmJzwQM2PBzp8G4vJ5tMVtGmlAnnz6AF5nP94+UT1EYTyJs6AS0+
QSybrQTVjI3mve1bM0H88FXDlhiMNNdrkwt03jo5ZoCgKwl/DzLk9xOM9SfJn7/IUm9dsdnX4xT3
pKu/oIyiDDiOEYpb0zJiWKxr9BZ4goo6+WUbIO8arRg1NrptyhWuB6ukwaIheeGzpANxUW2rrn7q
LKo59UG2aIbx2HfH7lJNRpggRvM1kI2PSuILv8TCT049k7invE+ouA5LcWmZBcEn1NHCO7vXvi5/
rpYnwGYLYxrnu5HoSC8CpTaY5VDsZLRUtfEoBZEj4wxdmJMjBOOX0Hhwy5Nc/ld9Dz3x/WmbJNli
VF6fb6l7TFsdpZI+lebMXqX8Q7gUC2nZQScufyDAg81oBs8H5a+ss/e9OjIiolHCD0Q85EgpwMoU
vrwQYsqVgwtscJXr4TfLcMUDFxskzNXzqyTUj9HC6UqWHpyA6Ywyj5x68IC83dnsOByI0aNpW6P7
PApDAPG6Js3S87DJMapoYE5U/g1PB54WvWJArp0ms6H7qiRFVrXL6zlEGeh2JXrWvIfTA7NgxHd2
jTuHDn+wzWnCSD2kL9x4KrC42W2bEbae4+sNAwX82MeeW4+jjFk1hTr1gkWy4q90Y/bKWpesu7UT
A+Jfx2QSS8opi8mtkcclKWDEe0vuCNubuKGCsiwAplNqiPcHddb/tw2QMeGwt9A8sdoEDZmhEenj
w9V9TIWaiyVkay5+7srU1NsI5/fxJPqfqm+XIrt2iB3QQbHkLFMdzxUZxY10IBEqMmelb5gzG6Jj
VEZSoQkM5EEwKrKNh8mxNe0x0N5EdTT/PiB+ou4rFRo0F6E4iLW2XhQm0OkRI0WtDAg6p9/VLpNw
2EQ4/buagfpOjaunxhuAr7N0tM7ktFKn6FznWhSqczWb8eqkrhK2nSUkNmMdP6pBDqYPumZ/cE2s
sEuINiYxdaG8nH9zmJIpPWouzowGoSI9w6nUO0o8cbZl2MYIqU7uLJm28UfZvhtdCtBBKwUrNGgc
H7B373A2EpD927n4VLsPeV6ZrnP8tGx4atHJLLa4DgxN4jvP/s1gq2gWtL71kuDrGG+H7EeeoPEP
vGrwdPoe3fEOuKfSJ7N58N6csBC3Tzra8vAslG9rMfgyR+k4T6hjPYRZrivUIrCJCjPXPu+s1jVH
bwO7h/RxCiUzFgk8qGarzrnVQv91AMFP6yYbrJi0pT9gOcdegEGDzS02yvmcdcF/0q1uJ5LimX2Z
wf3jxHayvniE0IHGlmzamvpVbVCAdGjOonjiek/SHFw+Sr+eH9OzIXTg2fGHD7G5M6atrb+5LL36
FpFnwvxihnkxXxNXYK7fXAxfKGN2q2BCS3l9rDT7W2fh9ODPrVvlYJjG03LIwk2wT5B4+rhAzrhI
inys3NLYwCchyVKBbQx9MA6ZrruX9C4j9ZHC80dEeOxqOLCHqmKNJm8UOCOKnKmsZA/a7kNSpkj/
bJEaBd1OU1PfPY7KEpvx7Cgc31xoNasYn2ytRZp9kjYbL8MaVzaWPzdVtexVllKWwKUpDO3tkcaN
9fnACXolcE7/ymMuNxAesahvgxtQEWCBnJpEpsaIaUGVk/bHsgqDyPsL17F/V0KF29Ctl0OU7ut+
9zblh4a2ySVEgbbVzrwIc6NqZO0PAbg5tCjaDxtU9U2OA+Y51CKsDOAZ0u0kkL3YPOORy+DT/2f1
4qAv2p402dB9SaX6lvaAvlFY6X44QMBYWFSxi8AC+NdYjiigEOODwOulgfrcSWZkAyIpVE6UbO++
dg483QC9lt50FS84OLQVx5snuX9kBoX4qcz1xKJjm797mR2Pe41B5/bRvYybQfKWGP2bcmvHSgZ1
KtEdmqiotqjLhD9hFS4JqpaIzU1xfEkpyWSA2e+1BLkeJRTeCfZThZepAA3nBDxhlOdHTWasrHv+
NuCAlKYOfgjtIWaQwAYRUSc/hNpXkQ8WBy0GrvDIn5JIsyMA05fbxfZatTpaqcS8gAPnsi6G47ky
n/utm+hYXlYfiNOs4BMawZUL3q1a2v3h1OXIf2LAr+1BdG+aqauCQo8I4bYBy8akahSN4Y+vzh5o
zogOBCEus3iIugHBAX6jRnh7M/oZ/+H+2DCTMgb/QAJvQRAQujC/r8eBCRqjc5tVkFC0fGck5Ldo
Ax/4D5P0Farw/PRiDoyHkBssMMUGROM+Hq7IRWbRSne3oLnh25HZW3fgDyukkH0UTKvoXm/v2oNA
SGHkyNLREZkFb2f3mx9cDNSgIO/Cpk2o0gpT1Yp+IUiJ3QNOigodDvwx+64wyCoyL4bE+/29jKzE
2goBajVCaa/jZBS41/f2Ke8antSUHr0tbwy+qgn/V4zt6wNKGOJBVeGpTyshwTBvpmpXpzHsBLgZ
1y3bhj8MW7k6GVSjERoojGNt6rAU4UEjoRGTmoGSpDOCf/I8PFiXekGEHSMk9WKO2vJ8SDaBniZ2
8lW0MO/xe3SnUHM7VI8WFGBfGGnI/GAC6xvI/Nnw8ChqDzFEUwrdox4Ax2l2RbI0urse90YBtbwH
aFKaP96OsX+vr0m6paTiw3v40B3wrSmZiz8qj49/YW0CXth841y2pBGv+4//rLWHNS1gxnfsXW0A
tddWhe4FB396rNWrlr8Q2gWkMyaAnF7v9fZhbwi8hYtO6XJmv7TgehyQXNag6ZHoyyxTFAboFwdt
bfhd3p9w7BBK4nwyBC1QqXs+1Oq2qbVSYkd4syRjGuti1EGfPhFt1rx4cKvyr2OAV9TL5e9E6sP7
6Ag2OnGVj9CprvjbFs71ajP9INIbkUXunGt7wFqotPEdKKqm6i8Ok2CLHEczhMAuadMqEeK4+8v6
SDSQW0vr1uTU2r25+SuzQW0HSL6kvlcyS6JTpzjuBnQODUA3FwBoIFuuD8oDdrSomm8DE1enr6TP
PEpt2yQt+ahLi8s/B7ITCpgPIjAEyImIDXFB/7tCXNzxgesEeWoDvER38THSM4aif7Mvf/bG66u8
TWS9a19ZX2qf2wIbBLth352OwzTmpo0piSRCB2ilwRT7w2W9rFHDbE6xmZrE9duNpQdWxYCKv/vu
TtnYai4Y75f2mSJzKybINYmJ7j13rJ7Q7hLhMCTTzmFavLvf2BkRHT8N2yDG38OPaG9EIDfpQV7Q
6/M0vOH0fps27BouLJbDueL6IKSXv4rHouOqfWqx4HuVShMaiD1DPXxYuqSIkcX3I9ErDu3urHmG
yByCjvVEiSgXbmTxYL7oILvi25LFA0r/jfW323sAZIfKbfWLiHKN09icLBr7G7r8Bo6rJ0h0xQVZ
tnS3hZx7coV0j4a8aqQyTPA4BXhMScNhR1LlZ8dbVbeEZzItNc8w1we3k9OTPa+JXRxEfZuA8QCk
LN8kP6fWqk6sk8Nx6k2QXWZyDt47o++uS8Cw4Edf9fYY/nMDkScco29Jy8wgcmvFDmYQIAPbb7Xi
0Bgq1LlXfxueDuH5Xn4xrDepel4KjLW0y+FWM47oVJLVoPVtG/jhWUoCiEWbBFmEn7usRfbZ8ijr
iKe4ZvnBK/zncOij24rg5x2vxnnlldb5nDbDOtfijUIHTsgqe6SKz9YhJyGF5PPOyHJrmttpiumr
htsYuWTsScWPTGer6hTB8iHZX3o4aOdyq4ZPPbPC1l4yFY6wsLVkZ1t7/AGLaZk1NTTrVlohQo1h
qroQ7U+Surr7ztigeyQTr92SM8aBSN8WJ7GKNPHiymeo5Asom1sn3HjHjkCmxJ3BjP1pwoVt3CnZ
tn9P1ukkbnEZxhfhdgPJSA6vh8T72MJTbzjeovxtwA5246i74QSK9pjjkSFo7ZS7jWdqwDLtJ1jK
j9+4QfYKaRZLtyBsDXCTErMt5CTPXFwOm1vwReKpBKqraKl6XHMZQZ2lrLs6hQ02tVCpA1KvLp2c
Rs5mU2KkSVGIx2Z4W6yzc/5BVVYBnu1kdRuXbBXr/Ec2/a72oDdWEUrl73uvczwixGGqAQ0Yh1Ls
mTV6sL6sEw8urMhgzUpNnw1TlxRe+rJHqzT0kGCEg7+ocQMfNAgkak3hupJT5SNi04Rg16sVcP0K
/97omDtC+8OoL50Z4+Clhxs35bn1ANf8IJAU1MBhQNno2itB0+yFH4ZKq23+1wkfpS7uuBirWYqE
i/A/aiO49fkH49PhDWWwM4ipuiUoAshLslJgHR59Lk2OH5iGWkBtmFEPXOlfwNxbmMrTONwzA8/T
M3DOD8yA0SrSq9IjVlM61t2r6cXuIb86xaFRPjIVG+xrGjfYkkM2bn0zwovIgIYYC6aLHpmLaLFv
jhnklKM1U5iQnf12ogC70QgGKNOcf4F/fGVdjJM2eTMTKntydqW+mIPjbi0m1Fz0ailqdg5EyoOg
B8fbdqaImdfl1A4buiaha05W896AQK3TPKFwmLRemOc9sUyq1jDAOKrUfrFPE2PWdCOW/ukFUisj
RT8/lXgE1BLFqbyiSMT5T7dHj1Kvwl9OCaw/3u8WZC/nmsvvuZdg0fq6Ngy6SfR2iZmb5YgP2PuL
NtyCWSaiY9yc4J2c9HA/w9P9gVHbweinfnZbF+tVcWByCM/S2PtAtDex4XCBcN1xKfAy76dtZTIm
VkM5F6H91Ok809XV+lvkO/BGbZeNKuN5EQcbVxFED3tHhHRzUPgQ/xKYRFsSZnrJGX3LZQQwYJ1s
m/vQHL+OtjIO13wAD862i5sxEbjrvxSkTCCGl2prbB4qeawhDnHlwHqpgpBWFAkYn75U0/6t533Y
AiSoRwa0I5/smmbPhu1IpNwjPeXfcfiFi2WPIaJdVu10HvxMw/JpZq0RAGCYUWQOUP+nomGr2zWY
qKXS+7YNNooX6+6lvLOIJQZif1Y1F1HQDdepTfADQXMC0yXpDNIR/cAKN/Fj8ylZcY2cg9YuUzsJ
9sM+5h8EhuLkaWTUtinMvFLEoSoRSeFXjJp+TPPN8e2SWiaCu0lU6lE4XxY1YBvi0MhavaXOClU8
BcSFqaWhvH5c76cknsbJ5ifoXabq734iqWD3MXAeucllW1KrVq29BjqKt4q84FdyWwg7+/Ul/3wP
Px9pGVwFGSRBFOi3d8NImBInAWp0xsFTHYERgLpry5hYtQUjoDittRRHstVa6akm8hFB47u5rNQe
pDscr/zExiFC/2b1B5HLCCP8XXF+kZzzEFmwk5Vlqhyf+lwpk+UhUNMX10T6zufbjllE69QOi0h2
ipHFT/VE+wU9OuK6G788IlAjNFqSz7fQ0oowmnSu+jqamOaMC3P1FcdEGCvwRqAFjGleKLv+Kh7g
l4TrrxpcT64OiEumJ5WtgW1a8oPkXuW+ipslfqyjyDD/0BUM5XOaFM11HCApy60Xb6Bc1/vwwG27
QNAcgfSgzauE4BjKPBgtp5kZVyOT33HjfaRixKQiG1Pcnu4s9HnDM8mbhOLIsyNRwHktpJEm+n/J
NO8uCrmgYhj57WrBEWYM0431nks2SLpf0zr8Q0jwz+Rshvp16AerPWDQIUju1TFjeGR5w8/Ey0eW
diwM2IZ0e1ULhtdlLiMZrEndZMAIoFDbmr8JNyxAy9lVCVGQxgrMugefcrkzW4pXZFiHmGCdnuwp
RKmf82mVgtbiJxWoxKAm91TisP+LN5lpvgdRz6C3AX13oKlDQpoRQW12WrfCto9Kjf1B4ZBVDphM
AP9FRcL/5RkMsYQqOKJs2RgwuZWN7gSAGDVI5lyx1BpkXw50DE5LvsTwt4Lo2gDo6Qbyp60L9BSK
WNSqrKYFQ4l+9pvos/fxaBFUFiFdNhnfDq50LSsjnfvR4x88bjNG1kfQuyCkkJOmp50Gh0IDpZlv
L63xutpd8gU8QkitsO6xCPRkKbafSA+biQH3rcTFVFQyFXr1mQXu8Xk9iXQTEN2O1eBaDj2DkjDu
Xu8gZyIUoRzNxGRf5+Z38Dt80GJTQxyCrh7lkyJNFMHYxIvsLCE2Hwrz+WNARpbyKp4yCiqrsrEB
+WSGtWVAg9MRFq8UHM+ThzLPNtfq1ZtQgd6CXHp76KFKYOj0iUqcJm1fg4Wy6WmwqnkZdPSwaFTI
VM6wFVLO7yn4EyJG1HPpQTR8jkrW8DOXvgorCpxxejCggL03BdEdPoiJ+HrH2l1sr64lF8g1/vhK
MsWxUQP904+kNCa0WBcpM6qpE7MyPzuuWzzS9s6mWS1XWDauuBK77Kra9iO19sdTDqFPpwZS8xoN
yH8q/ez0IBjpHrRS4gOzRLFQ3tIgGOZelQwvonQNLE4Co/daFIZGLevDE2TeBUFEkSBykXFGd4AJ
AH1iXkYA1z5LAbBp0iC2RI+zjHmk3TUSrVn52FCN/3yx1oN9e596qQr1QQu6rlmEor9Y/V9BZCIM
WpXKAig515/uKoYZwa6NnAebxlClCAt9scWAxBoacGABsiW3WSNHmW5pnKmA6XtKvDKycH3AHBCb
BXoK6pBp6RFOTOUtHQRU5Rh1IHkn0o6XRijNXQXIJFzIQPmIXc/zraUKnzbxOlZ0RBPiiYCwrEvt
hw4TwKJlu4zPkP8+v4WWW6lWTfpTRKIO1OBOQ4ga6RE03q3WZ+7lwtRgrUe0cGknT+mhdGEuUGMA
2jR7COtf+7hgpHwz3cSuCCHokREcpoqWEpZ1kvYXx4rjkEc/7fnZ3c94qRdLl9Ki+wJQwqp7UW6b
31Rcy4KHqlayDitK5CAim5NfuYhAOvu0HZG3RP66iVPs+H25Y6MPLkOALosXfZDuwp4f/Q8GIqJ4
AK7pY/n50MX4uT7ZA/wUOzBrxmeCaxYQ2tz3CUHTBRC/B+oyu2w6k8bryycBQqhmZZ2brsCgm7RG
D9bECm6Heh3lzgx7WAuY9yY1J2uEvYig3AbO3e6BDu8x3KGsaU1jnLcII6jN4lYw+CDeEDy8wZyU
FtRdasBTnF7a2W5vbwOTqQuYenio71JLeOJy3IOlGoUeM/5WoNRPKiLVjFirZvUYhaAoA9jLmkzr
3ry+bTsgr1qgHBuEa7g3QMFuoOm3GRtXNDwdXv2JmTmSDnI0XVKchUP390RPv0ymEvIED+TzEyts
WAv4brOh67ke1FIe6SKLYqH3LEyAYrcUX/RgLCb+hTPEuEUk4DK5eXGFaOaqvTKPB5GrYvglvFah
21LleVPfF1kXkJnaYSmCKx2jOHnBDJN4TaJRIFEhtZC74V/hSsRcy17myMiJ9kpB0chF+/CINQ/O
CEjWTP8H+FFqWSkzHUxElmSfeXTED6rr0UX9XFzN86dCCqGZjeQ0SYhr/AZVxssAgjthqjuwXxom
kBnz1j9Tyw53pTBnp91fXukc6EeAKqJMVBzsSDC3iTYn+WcwmCFAkc0zRIa0a9gMkQDW4X6V6p8V
rQW5zHZSDD8vLVmj9qpZJSOPJylIOShklayJ7OvsX6N1YcsEXLOrmw4a+hYo+h4cNLADlCpk8vIe
KTwwKcrOvtZIf3gpcqmpIxPwXsdIsk6iqiZdGGjAjQaZyuvNzM+eQ3vC6UJCf++knK9BGrCUKoKc
uvOKOR2MIDfkYTCD2w26Xmb+UPF5Fl0UWUaFcA6I/ywXaTRgj1jW4zzuO0SkhqnOriHhS0V8lQjp
fRfD02SCMEZUhFGgdbOjWcAfZ6R7fXG9O8Km3dx5gvQASuUfFwZfNoa7xMD3ude4qVc+g09AC1IK
0LuFflgOUKgbTumf+JgAhpNVd0oQ/OzcSkQ9WpGPfpPTJRRyfHUo4zfs7wueC2uwxtqtObzYZu+p
HSmf5pgPMEVCC32+4z/9UBe/WJZUnABsQVv6AoR8GRZWcXcS89QAZimTe1fjWABdNDRzbmhJ83Y3
/+QVtS0Zx3LlvjVXpLeX67vFwrFG/RuR59PbI76Fux1lfTXaayWK+9v3tYLEj95ozNSJt1OVckB0
e5/prRykl8SQbUiIQEqx4pT+l2Cr1GVWDSgUynk5ZBCkP3Sr27/MOzMADofBNOm3Z+HZwtHtiNwk
H9vre1RyceATE5/sxWnW5idJAM7Z7dr/p+8+jlW22m7n4f873brhuunhGgz5n47K650CWLezP+A1
slQAJhpC+SGIyS4fSC3YmQa/MQLgZksFGWjlz+6dciBF4kNT03t8zhUeH8S7TKNEP79uKISnhdxe
Br8aTAemCdBSMDzNNwKrb1unxKoFTxPJ3yAEB8+sid8yn5yPgRmNp4HbD/Imqsmj/GwGed0zuAiy
fpGgS63gt3db9HUENCjJJHLvMu+U/1glJEEk2V+C2fdDb7VevpPUelQdTrxIp0a9//Nar9wMrOoH
Ocb1SjIE3yQuVnJ+C0Oj5xXuAKH37k/l32NqU3GUP5jZDKgczqGX2WCRab4nhwO5Dc63+vd98IB+
ZGCvhWlaxq5vuDgRnoB+/8dVu8pJnS6Fu7/NBLzXMRGKjwkUsC4CHCKKsMfx8ko74l7mLbChmgw6
G0ErgaD45Tkntnv9E6z7gBnHE/wOqXgsbi5GvDa/hhvSd3EcQvl0cYkf74a5Gyrw5J7nPIrIttiE
dI+TgcMhOxKzjhtgICl6BRhPrORliqgMQqHUAZ0YLYyOSTKLyG4ea0d33PnCdCG8AdmChY+q2glH
jK+Pdgdb1i8YglWyltt7GvaVtIJnUqy8Sv1xtwtRUIdbFG2RpJrbkDV+lgQawmEiS4EZT1YSzOjJ
LHd1J9MFodi7cW23W5mi5k5NuIVWs89I0Kb2WgmPA3FErNQEsKbou+Xl6OWnfwzBeicjqm+yHrJK
ycSgoS9+vGZP0wp3KDm4F4fmYW1CGzcFBis5vD+4mpGebjirvxPEUCLBqHOr6X987S1Gt76I1l14
N6Fpprisxzv3fCSdJeORqcFCdsL1DLpXPwm12JevWGl5LENojXixx7KH5ku4c7KD7gW9Ww+J6PwI
HCh1sDVZQZJvZmhTUWfIpEhd+2ZqND2/uciqBn4DzAfoox3KZUeR6AFq7c6PWKCebscPT7+N4tL2
DY3GEsNXmLaX4AeUu3OLCkCDafPdQAh2drAlRrLcUXlcfqnnxW1QhZen0SfI/8IA8B07lZFPb7vd
YjsFFscwpzBlmf5uRuf7nnRc23wNxADuPlbl/oD+ytLdis1b7Waa6PlHpd5LuDyx2JPNWhpO0313
fqqJ+q1BKK7fhViORM0lmQiYtg3fZqxf9Psp6x0BV05iGkvi14ESxXrUC1fkamr/3NoK+7vKBBS+
YW/nY/SbNLRxu0E1eUC5hyiQxVNVGeQHyr3yVGC2kK1xhrJusOXe3fitgvuxv76zdw/bks12FSLD
5pZn6UrXzWyPIaq4R2OIPOqlOJhfby2wDTSui/YTxtsFLoJwxIU2IiACa5irFQ60wbOyLHNV4G8G
oLI3esULbUGJxI7aVuHvabuWdSREuc7fuCscynJe/Lk5mN+Abhfl3P2aWZNjdXWWb4pmGCiGxsK8
mOtjhWzvqLzixIJLDd1HTAKBEUYaHakSe50a4LYFy28Bdy49tdljrIYmpWPV7AJ5DM5UIwbFzFOs
t8kmnNYmLSNkBG2Uscroad5ydBAEAvrKX9Nj43qaklAXzXwm5qCRaC2xHC2KLUopLU9SFKK53x30
KD1Fpfjh+H77QX0TNXVWJE4HHQGtIy7VNXNqWXdJ/yT9tKcJwIhTX50ktuLNc4jYNVgAd6V1U5CC
fMSs4qXPDCznwj0NosyZHMXrx798yIcIceNSjqw3yEkSziiJ74AmK7VirHnKjcIXQhoCD8moB3iq
HJgqkBCDntBnQGjsQZi87MTCkWa+BEGoJ21dNnwsrq3YzxLQpPV5oHwPb+/X4c4GNAhuBRhnwbXw
9YT2lh5JKb1l7iiNSTj2w/oclhZncZoZYchp31QxL7t9npfbWvmsiV4KTlU2dk6kPfzdW0YqoEVD
uTN4OMfE94CtTFTBHH2ctbX5macG6ln7lF6VH2H4Nb+qO9Y07KNMvIx7Ie+W6lw/3RmNrVtoWC/j
ldJzSCU00nghwyEx6mDX8pskFP1W86X2+8tIVi6kViGwl8VaQR6SnWbU4At9jGY9KW9g5xe/FjaF
NDH2MZxt77xX1jTcgF5gv0jJFTP50/nkXBk45XTJsKX74o6GccNroyeJ8JKozlAfB5IJ19o3EOJU
1pVi+8N3seXNfxKlgyYqNIrbZKvgiONuB85wVHe+d+k/zKs5Edjwne9FxCpZQ27UcIzCSlkDR+/g
V8Z2aR89zkmCja1/FU9tivrHaBm3+BwMpXlLdUzQDC+0ak1G/PVdRa9Plhmg6njupai56OV/rFuG
vcVXeYMyYSsofq/Cq1vJhf1VhoktRhOPx6ijZza6DwzEwbOKW2Glm+ODq+jpWqNWCDrUEg/jnkis
E5A0O9ArlOOMfi8G4tnvdYVRoMrcFo8PTJw1mCTh6w/hb0Eq9guYo9PwYk5SYXniqmR4a2Hz2Exa
v+I2cXOoL1o380vLtZQdSjMkuEASApXpt2ver+SgOy6PBahu3EkJuauyuiLz8AZ6e4u3fcbCTizC
9OnolbBkhSkb7RUUY1VVHNG01jaN+TyIBTFPNiRhxJQM6SLwgGsNcsMqSFM4zIf5roHtDmdK7Pbr
M2kMWvPIuhmSW+5ScWKz6CKC5dJAeTpykdeudBs5u75E+s58t7N2sogUdIk/rx143tmaXh9GkbmO
sbcUT/4I+BJWOhKMx/ClNUCN+yZ3VNBecL4R9fyNuqTwK3qxoEINkn90sihPw3hGOY3TQLL0NVKz
i9iwqQ0Q1WlobMseJeIqOt++hkW4ddjdW6wWbtfOP4qzqmzDWpzaPBLOeTfm/DRPkBUyzg78vkOA
UU4RBrQOAY2MlP1rEjOhjadlRJaedxUNRG06cVOnfvP+VYHVPJh4nQa3gnLGDxDZzn6V5rl7gOW+
0kPsy/NRuOuDY0LDEeTpx386IMKDyschtZ3P1r+Ch13bt/tCvg/pbnerZ5s+eNVEpJvW86NTVLHO
8ksbTZB+/i2sncfRlf/xG74PkHQIjlL56DOfOkTplU2KQnsWUVeNDX4q1Y6h0jWuWN0C7Bm8o6uJ
kPhdFJsyxbFkOaHGGBWExkARdJ/PNB+G7EL4ZM4tYoRSEI+XfIRg/ax0qgCfJQAJP8pJ1t6vx0OW
4opjA8FQKvVhgljTzkDAMykcwDi2L1bBn5mC9GivRhuht80Bp7jbYp2mq71f73IPLF4Gj7cc0Emt
o+wl3gsJczcmUcbRoh0j68KJKin4wL6st39dh18XLRiWHLLIMPvX69t2zIU+WrF+cvu9JF6Dc8Rz
aLosy92s7V+uBd/TDgXWizOkDmP0pQ==
`pragma protect end_protected
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
