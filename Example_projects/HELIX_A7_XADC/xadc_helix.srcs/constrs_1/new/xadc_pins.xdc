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

set_property -dict { PACKAGE_PIN P10    IOSTANDARD LVCMOS33 } [get_ports { CLK100MHZ }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {CLK100MHZ}];

#######################################################################################
##Buttons
#######################################################################################
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { reset }]; 

#######################################################################################
## LEDs
#######################################################################################
set_property -dict { PACKAGE_PIN F5	   IOSTANDARD LVCMOS33 } [get_ports {led[0]}]; 
set_property -dict { PACKAGE_PIN G4	   IOSTANDARD LVCMOS33 } [get_ports {led[1]}]; 
set_property -dict { PACKAGE_PIN H3	   IOSTANDARD LVCMOS33 } [get_ports {led[2]}]; 
set_property -dict { PACKAGE_PIN J5	   IOSTANDARD LVCMOS33 } [get_ports {led[3]}]; 
set_property -dict { PACKAGE_PIN J4	   IOSTANDARD LVCMOS33 } [get_ports {led[4]}]; 
set_property -dict { PACKAGE_PIN K5	   IOSTANDARD LVCMOS33 } [get_ports {led[5]}]; 
set_property -dict { PACKAGE_PIN N3	   IOSTANDARD LVCMOS33 } [get_ports {led[6]}]; 
set_property -dict { PACKAGE_PIN N4	   IOSTANDARD LVCMOS33 } [get_ports {led[7]}]; 
set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports {led[8]}]; 
set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports {led[9]}]; 
set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports {led[10]}]; 
set_property -dict { PACKAGE_PIN G12   IOSTANDARD LVCMOS33 } [get_ports {led[11]}]; 
set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports {led[12]}]; 
set_property -dict { PACKAGE_PIN H11   IOSTANDARD LVCMOS33 } [get_ports {led[13]}]; 
set_property -dict { PACKAGE_PIN K12   IOSTANDARD LVCMOS33 } [get_ports {led[14]}]; 
set_property -dict { PACKAGE_PIN M12   IOSTANDARD LVCMOS33 } [get_ports {led[15]}];


#######################################################################################



####################################################################################### 


#######################################################################################
##USB UART
#######################################################################################
set_property -dict { PACKAGE_PIN R12 IOSTANDARD LVCMOS33 } [get_ports { usb_rx }]; 
set_property -dict { PACKAGE_PIN T12 IOSTANDARD LVCMOS33 } [get_ports { usb_tx }];

#######################################################################################
## XADC 
#######################################################################################
set_property -dict { PACKAGE_PIN C8 IOSTANDARD LVCMOS33 } [get_ports { vauxp0 }]; #AD0P
set_property -dict { PACKAGE_PIN C9 IOSTANDARD LVCMOS33 } [get_ports { vauxn0 }]; #AD0N

set_property -dict { PACKAGE_PIN H8 IOSTANDARD LVCMOS33 } [get_ports { vp_in }]; #VP_P
set_property -dict { PACKAGE_PIN J7 IOSTANDARD LVCMOS33 } [get_ports { vp_in }]; #VP_N


set_property -dict { PACKAGE_PIN C14 IOSTANDARD LVCMOS33 } [get_ports { vauxp10}]; #AD10P
set_property -dict { PACKAGE_PIN B14 IOSTANDARD LVCMOS33 } [get_ports { vauxn10 }]; #AD10N





#######################################################################################
##Buzzer
#######################################################################################
set_property -dict { PACKAGE_PIN G2 IOSTANDARD LVCMOS33 } [get_ports {buzzer}];


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
set_property -dict { PACKAGE_PIN T3    IOSTANDARD LVCMOS33 } [get_ports { sel_disp1 }];
set_property -dict { PACKAGE_PIN T4    IOSTANDARD LVCMOS33 } [get_ports { sel_disp2 }];
set_property -dict { PACKAGE_PIN N1    IOSTANDARD LVCMOS33 } [get_ports { sel_disp3 }];
set_property -dict { PACKAGE_PIN N2    IOSTANDARD LVCMOS33 } [get_ports { sel_disp4 }];




#######################################################################################
 



#######################################################################################
##PMOD JA
#######################################################################################
set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 } [get_ports { vauxp15 }]; ## P
set_property -dict { PACKAGE_PIN D1    IOSTANDARD LVCMOS33 } [get_ports { vauxn15 }]; ## N
set_property -dict { PACKAGE_PIN C1    IOSTANDARD LVCMOS33 } [get_ports { vauxp7 }]; ## P
set_property -dict { PACKAGE_PIN B1    IOSTANDARD LVCMOS33 } [get_ports { vauxn7 }]; ## N
set_property -dict { PACKAGE_PIN B2    IOSTANDARD LVCMOS33 } [get_ports { vauxp14 }]; ## P
set_property -dict { PACKAGE_PIN A2    IOSTANDARD LVCMOS33 } [get_ports { vauxn14 }]; ## N
set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { vauxp5 }]; ## P
set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { vauxn5}];  ## N
#JA_9 3.3V
#JA_10 GND


#######################################################################################
##PMOD JB
#######################################################################################
set_property -dict { PACKAGE_PIN B12    IOSTANDARD LVCMOS33 } [get_ports { vauxp9 }]; ## P
set_property -dict { PACKAGE_PIN A12    IOSTANDARD LVCMOS33 } [get_ports { vauxn9 }]; ## N
set_property -dict { PACKAGE_PIN A13    IOSTANDARD LVCMOS33 } [get_ports { vauxp2 }]; ## P
set_property -dict { PACKAGE_PIN A14    IOSTANDARD LVCMOS33 } [get_ports { vauxn2 }]; ## N
set_property -dict { PACKAGE_PIN B15    IOSTANDARD LVCMOS33 } [get_ports { vauxp3 }]; ## P
set_property -dict { PACKAGE_PIN A15    IOSTANDARD LVCMOS33 } [get_ports { vauxn3 }]; ## N
set_property -dict { PACKAGE_PIN C16    IOSTANDARD LVCMOS33 } [get_ports { vauxp11 }]; ## P
set_property -dict { PACKAGE_PIN B16    IOSTANDARD LVCMOS33 } [get_ports { vauxn11}];  ## N

#JB_9 3.3V
#JB_10 GND


#######################################################################################
##PMOD JC
#######################################################################################
set_property -dict { PACKAGE_PIN B7	    IOSTANDARD LVCMOS33 } [get_ports { vauxp4 }]; ## P
set_property -dict { PACKAGE_PIN A7	    IOSTANDARD LVCMOS33 } [get_ports { vauxn4 }]; ## N
set_property -dict { PACKAGE_PIN A8	    IOSTANDARD LVCMOS33 } [get_ports { vauxp8 }]; ## P
set_property -dict { PACKAGE_PIN A9	    IOSTANDARD LVCMOS33 } [get_ports { vauxn8 }]; ## N
set_property -dict { PACKAGE_PIN B9	    IOSTANDARD LVCMOS33 } [get_ports { vauxp1 }]; ## P
set_property -dict { PACKAGE_PIN A10    IOSTANDARD LVCMOS33 } [get_ports { vauxn1 }]; ## N

#JC_9 3.3V
#JC_10 GND


#######################################################################################
##PMOD JD
#######################################################################################
set_property -dict { PACKAGE_PIN C3    IOSTANDARD LVCMOS33 } [get_ports { vauxp6 }];  ## P
set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { vauxn6 }];  ## N

set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports { vauxp12 }];  ## P
set_property -dict { PACKAGE_PIN B5    IOSTANDARD LVCMOS33 } [get_ports { vauxn12 }];  ## N
#JD_9 3.3V
#JD_10 GND


set_property -dict { PACKAGE_PIN C7    IOSTANDARD LVCMOS33 } [get_ports { vauxp13 }];  ## P
set_property -dict { PACKAGE_PIN C6    IOSTANDARD LVCMOS33 } [get_ports { vauxn13 }];  ## N









