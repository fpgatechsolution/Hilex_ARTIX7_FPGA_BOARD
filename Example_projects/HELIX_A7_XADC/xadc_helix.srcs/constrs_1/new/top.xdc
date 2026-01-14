#######################################################################################
## WWW.FPGATECHSOLUTION.COM
## EISLER ARTIX7 FPGA BOARD XDC
## PART NUMBER XC7A35TCSG324-1
#######################################################################################

set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
#######################################################################################
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 33 [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]


#######################################################################################
## Clock & Reset signal
#######################################################################################
set_property PACKAGE_PIN P10 [get_ports CLK100MHZ]							
set_property IOSTANDARD LVCMOS33 [get_ports CLK100MHZ]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports CLK100MHZ]

set_property -dict { PACKAGE_PIN D3 IOSTANDARD LVCMOS33 } [get_ports { reset }]; 

#######################################################################################
## LEDs
#######################################################################################
set_property -dict { PACKAGE_PIN F5   IOSTANDARD LVCMOS33 } [get_ports {led[0]}]; 
set_property -dict { PACKAGE_PIN G4   IOSTANDARD LVCMOS33 } [get_ports {led[1]}]; 
set_property -dict { PACKAGE_PIN H3   IOSTANDARD LVCMOS33 } [get_ports {led[2]}]; 
set_property -dict { PACKAGE_PIN J5   IOSTANDARD LVCMOS33 } [get_ports {led[3]}]; 
set_property -dict { PACKAGE_PIN J4	   IOSTANDARD LVCMOS33 } [get_ports {led[4]}]; 
set_property -dict { PACKAGE_PIN K5	   IOSTANDARD LVCMOS33 } [get_ports {led[5]}]; 
set_property -dict { PACKAGE_PIN N3	   IOSTANDARD LVCMOS33 } [get_ports {led[6]}]; 
set_property -dict { PACKAGE_PIN N4	   IOSTANDARD LVCMOS33 } [get_ports {led[7]}]; 
set_property -dict { PACKAGE_PIN D14	   IOSTANDARD LVCMOS33 } [get_ports {led[8]}]; 
set_property -dict { PACKAGE_PIN D13	   IOSTANDARD LVCMOS33 } [get_ports {led[9]}]; 
set_property -dict { PACKAGE_PIN F14	   IOSTANDARD LVCMOS33 } [get_ports {led[10]}]; 
set_property -dict { PACKAGE_PIN G12	   IOSTANDARD LVCMOS33 } [get_ports {led[11]}]; 
set_property -dict { PACKAGE_PIN H14	   IOSTANDARD LVCMOS33 } [get_ports {led[12]}]; 
set_property -dict { PACKAGE_PIN H11	   IOSTANDARD LVCMOS33 } [get_ports {led[13]}]; 
set_property -dict { PACKAGE_PIN K12	   IOSTANDARD LVCMOS33 } [get_ports {led[14]}]; 
set_property -dict { PACKAGE_PIN M12	   IOSTANDARD LVCMOS33 } [get_ports {led[15]}]; 

#######################################################################################
#RGB LED
#######################################################################################

set_property -dict { PACKAGE_PIN E5 IOSTANDARD LVCMOS33 } [get_ports {rgb_led[0]}]; 
set_property -dict { PACKAGE_PIN D5 IOSTANDARD LVCMOS33 } [get_ports {rgb_led[1]}]; 
set_property -dict { PACKAGE_PIN E6 IOSTANDARD LVCMOS33 } [get_ports {rgb_led[2]}]; 


	
#######################################################################################
#SEVEN SIG
#######################################################################################	
set_property -dict { PACKAGE_PIN M2    IOSTANDARD LVCMOS33 } [get_ports { sig_a }];
set_property -dict { PACKAGE_PIN M1    IOSTANDARD LVCMOS33 } [get_ports { sig_b }];
set_property -dict { PACKAGE_PIN L2    IOSTANDARD LVCMOS33 } [get_ports { sig_c }];
set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { sig_d }];
set_property -dict { PACKAGE_PIN J1    IOSTANDARD LVCMOS33 } [get_ports { sig_e }];
set_property -dict { PACKAGE_PIN H2    IOSTANDARD LVCMOS33 } [get_ports { sig_f }];
set_property -dict { PACKAGE_PIN H1    IOSTANDARD LVCMOS33 } [get_ports { sig_g }];
set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { sig_pd }];

set_property -dict { PACKAGE_PIN N1    IOSTANDARD LVCMOS33 } [get_ports { sel_disp1 }];
set_property -dict { PACKAGE_PIN N2    IOSTANDARD LVCMOS33 } [get_ports { sel_disp2 }];
set_property -dict { PACKAGE_PIN T3    IOSTANDARD LVCMOS33 } [get_ports { sel_disp3 }];
set_property -dict { PACKAGE_PIN T4    IOSTANDARD LVCMOS33 } [get_ports { sel_disp4 }];


#######################################################################################
#POTENTIOMETER
#######################################################################################	

set_property -dict {PACKAGE_PIN H8 IOSTANDARD LVCMOS33} [get_ports vp_in]
set_property -dict {PACKAGE_PIN J7 IOSTANDARD LVCMOS33} [get_ports vn_in]


#######################################################################################
#TEMPERATURE SENSOR
#######################################################################################	
set_property -dict {PACKAGE_PIN C14 IOSTANDARD LVCMOS33} [get_ports vauxp3]
set_property -dict {PACKAGE_PIN B14 IOSTANDARD LVCMOS33} [get_ports vauxn3]


#######################################################################################
#LDR LIGHT SENSOR
#######################################################################################	
set_property -dict {PACKAGE_PIN C8 IOSTANDARD LVCMOS33} [get_ports vauxp11]
set_property -dict {PACKAGE_PIN C9 IOSTANDARD LVCMOS33} [get_ports vauxn11]

    
#######################################################################################
#PMOD J11
#######################################################################################	
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS33} [get_ports vauxp1]
set_property -dict {PACKAGE_PIN D1 IOSTANDARD LVCMOS33} [get_ports vauxn1]
set_property -dict {PACKAGE_PIN C1 IOSTANDARD LVCMOS33} [get_ports vauxp8]
set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVCMOS33} [get_ports vauxn8]
set_property -dict {PACKAGE_PIN A2 IOSTANDARD LVCMOS33} [get_ports vauxp0]
set_property -dict {PACKAGE_PIN B14 IOSTANDARD LVCMOS33} [get_ports vauxn0]
set_property -dict {PACKAGE_PIN C14 IOSTANDARD LVCMOS33} [get_ports vauxp9]
set_property -dict {PACKAGE_PIN F14 IOSTANDARD LVCMOS33} [get_ports vauxn9]



#######################################################################################
#PMOD J12
#######################################################################################	
set_property -dict {PACKAGE_PIN B3 IOSTANDARD LVCMOS33} [get_ports vauxp15]
set_property -dict {PACKAGE_PIN A4 IOSTANDARD LVCMOS33} [get_ports vauxn15]
set_property -dict {PACKAGE_PIN A6 IOSTANDARD LVCMOS33} [get_ports vauxp14]
set_property -dict {PACKAGE_PIN B7 IOSTANDARD LVCMOS33} [get_ports vauxn14]
set_property -dict {PACKAGE_PIN B2 IOSTANDARD LVCMOS33} [get_ports vauxp12]
set_property -dict {PACKAGE_PIN A3 IOSTANDARD LVCMOS33} [get_ports vauxn12]
set_property -dict {PACKAGE_PIN A5 IOSTANDARD LVCMOS33} [get_ports vauxp5]
set_property -dict {PACKAGE_PIN A6 IOSTANDARD LVCMOS33} [get_ports vauxn5]


#######################################################################################
#PMOD J13
#######################################################################################	
set_property -dict {PACKAGE_PIN B1 IOSTANDARD LVCMOS33} [get_ports vauxp7]
set_property -dict {PACKAGE_PIN C4 IOSTANDARD LVCMOS33} [get_ports vauxn7]
set_property -dict {PACKAGE_PIN C6 IOSTANDARD LVCMOS33} [get_ports vauxp6]
set_property -dict {PACKAGE_PIN E6 IOSTANDARD LVCMOS33} [get_ports vauxn6]
set_property -dict {PACKAGE_PIN A1 IOSTANDARD LVCMOS33} [get_ports vauxp4]
set_property -dict {PACKAGE_PIN B4 IOSTANDARD LVCMOS33} [get_ports vauxn4]
set_property -dict {PACKAGE_PIN C5 IOSTANDARD LVCMOS33} [get_ports vauxp13]
set_property -dict {PACKAGE_PIN E5 IOSTANDARD LVCMOS33} [get_ports vauxn13]


#######################################################################################
##USB UART
#######################################################################################
set_property -dict {PACKAGE_PIN R12 IOSTANDARD LVCMOS33} [get_ports usb_rx]
set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS33} [get_ports usb_tx]



#######################################################################################
##Buzzer
#######################################################################################
set_property -dict { PACKAGE_PIN G2    IOSTANDARD LVCMOS33 } [get_ports { buzzer }];
