#######################################################################################
## WWW.FPGATECHSOLUTION.COM
## HELIX ARTIX7 FPGA BOARD MASTER XDC
## PART NUMBER XC7A35FTG256-1
#######################################################################################
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]


#######################################################################################
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]


#######################################################################################
## Clock signal
#######################################################################################

set_property -dict { PACKAGE_PIN P10    IOSTANDARD LVCMOS33 } [get_ports { clk_100mhz }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk_100mhz}];


#######################################################################################
## LEDs
#######################################################################################
set_property -dict { PACKAGE_PIN F5	   IOSTANDARD LVCMOS33 } [get_ports {FPS}]; 



set_property -dict { PACKAGE_PIN T7	   IOSTANDARD LVCMOS33 } [get_ports {SCL}]; 
set_property -dict { PACKAGE_PIN R7	   IOSTANDARD LVCMOS33 } [get_ports {SDA}]; 






#output SCL,         //OLED serial Clock
#output SDA,         //OLED serial Data
#output FPS         //Output to measure FPS


