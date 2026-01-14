// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Thu Dec 18 14:44:43 2025
// Host        : Nishikant running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/FPGA_DEMO/Artix 7/Helix
//               7/HELIX_A7_TEST/project_1.gen/sources_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_stub.v}
// Design      : design_1_clk_wiz_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35tftg256-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module design_1_clk_wiz_0_0(clk_out1, clk_out2, clk_out3, clk_out4, clk_out5, 
  clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,clk_out3,clk_out4,clk_out5,clk_in1" */;
  output clk_out1;
  output clk_out2;
  output clk_out3;
  output clk_out4;
  output clk_out5;
  input clk_in1;
endmodule
