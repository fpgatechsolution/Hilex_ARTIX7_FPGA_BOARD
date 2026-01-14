vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib

vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xpm  -incr -sv "+incdir+../../../../../../FPGA_DEMO/Artix 7/oled_test/project_oled/project_oled.gen/sources_1/ip/clk_wiz_0" \
"C:/Vitis/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93 \
"C:/Vitis/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr "+incdir+../../../../../../FPGA_DEMO/Artix 7/oled_test/project_oled/project_oled.gen/sources_1/ip/clk_wiz_0" \
"../../../../../../FPGA_DEMO/Artix 7/oled_test/project_oled/project_oled.gen/sources_1/ip/clk_wiz_0/clk_wiz_0_clk_wiz.v" \
"../../../../../../FPGA_DEMO/Artix 7/oled_test/project_oled/project_oled.gen/sources_1/ip/clk_wiz_0/clk_wiz_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

