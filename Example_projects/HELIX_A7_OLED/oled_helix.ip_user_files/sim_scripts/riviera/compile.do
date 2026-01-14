vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 "+incdir+../../../../../../FPGA_DEMO/Artix 7/oled_test/project_oled/project_oled.gen/sources_1/ip/clk_wiz_0" \
"C:/Vitis/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Vitis/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../../../FPGA_DEMO/Artix 7/oled_test/project_oled/project_oled.gen/sources_1/ip/clk_wiz_0" \
"../../../../../../FPGA_DEMO/Artix 7/oled_test/project_oled/project_oled.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../../../../FPGA_DEMO/Artix 7/oled_test/project_oled/project_oled.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

