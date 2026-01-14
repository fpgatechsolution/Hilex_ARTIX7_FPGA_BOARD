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

# Clock signal

set_property -dict {PACKAGE_PIN P10 IOSTANDARD LVCMOS33} [get_ports osc_clk_in]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports osc_clk_in]


##Buttons
set_property -dict {PACKAGE_PIN E3 IOSTANDARD LVCMOS33} [get_ports KEY_0]
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS33} [get_ports KEY_1]
set_property -dict {PACKAGE_PIN F2 IOSTANDARD LVCMOS33} [get_ports KEY_2]
set_property -dict {PACKAGE_PIN E1 IOSTANDARD LVCMOS33} [get_ports KEY_3]
set_property -dict {PACKAGE_PIN D3 IOSTANDARD LVCMOS33} [get_ports KEY_4]


#speaker
set_property -dict {PACKAGE_PIN C11 IOSTANDARD LVCMOS33} [get_ports speaker]

## SLIDE SW
set_property -dict {PACKAGE_PIN F4	 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[0]}]
set_property -dict {PACKAGE_PIN G5	 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[1]}]
set_property -dict {PACKAGE_PIN H4	 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[2]}]
set_property -dict {PACKAGE_PIN H5	 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[3]}]
set_property -dict {PACKAGE_PIN J3	 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[4]}]
set_property -dict {PACKAGE_PIN K3	 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[5]}]
set_property -dict {PACKAGE_PIN L5	 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[6]}]
set_property -dict {PACKAGE_PIN M4	 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[7]}]
set_property -dict {PACKAGE_PIN E13 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[8]}]
set_property -dict {PACKAGE_PIN E12 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[9]}]
set_property -dict {PACKAGE_PIN F13 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[10]}]
set_property -dict {PACKAGE_PIN G14 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[11]}]
set_property -dict {PACKAGE_PIN H13 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[12]}]
set_property -dict {PACKAGE_PIN G11 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[13]}]
set_property -dict {PACKAGE_PIN H12 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[14]}]
set_property -dict {PACKAGE_PIN K13 IOSTANDARD LVCMOS33} [get_ports {SLIDE_SW[15]}]


## LEDs
set_property -dict {PACKAGE_PIN F5	    IOSTANDARD LVCMOS33} [get_ports {LED[0]}]
set_property -dict {PACKAGE_PIN G4	     IOSTANDARD LVCMOS33} [get_ports {LED[1]}]
set_property -dict {PACKAGE_PIN H3	     IOSTANDARD LVCMOS33} [get_ports {LED[2]}]
set_property -dict {PACKAGE_PIN J5	     IOSTANDARD LVCMOS33} [get_ports {LED[3]}]
set_property -dict {PACKAGE_PIN J4		 IOSTANDARD LVCMOS33} [get_ports {LED[4]}]
set_property -dict {PACKAGE_PIN K5		 IOSTANDARD LVCMOS33} [get_ports {LED[5]}]
set_property -dict {PACKAGE_PIN N3		 IOSTANDARD LVCMOS33} [get_ports {LED[6]}]
set_property -dict {PACKAGE_PIN N4		 IOSTANDARD LVCMOS33} [get_ports {LED[7]}]
set_property -dict {PACKAGE_PIN D14	 IOSTANDARD LVCMOS33} [get_ports {LED[8]}]
set_property -dict {PACKAGE_PIN D13	 IOSTANDARD LVCMOS33} [get_ports {LED[9]}]
set_property -dict {PACKAGE_PIN F14	 IOSTANDARD LVCMOS33} [get_ports {LED[10]}]
set_property -dict {PACKAGE_PIN G12	 IOSTANDARD LVCMOS33} [get_ports {LED[11]}]
set_property -dict {PACKAGE_PIN H14	 IOSTANDARD LVCMOS33} [get_ports {LED[12]}]
set_property -dict {PACKAGE_PIN H11	 IOSTANDARD LVCMOS33} [get_ports {LED[13]}]
set_property -dict {PACKAGE_PIN K12	 IOSTANDARD LVCMOS33} [get_ports {LED[14]}]
set_property -dict {PACKAGE_PIN M12	 IOSTANDARD LVCMOS33} [get_ports {LED[15]}]



#######################################################################################
###HDMI out  
#######################################################################################

set_property -dict { PACKAGE_PIN T13 IOSTANDARD TMDS_33 } [get_ports DATA_N[0]];
set_property -dict { PACKAGE_PIN R13 IOSTANDARD TMDS_33 } [get_ports DATA_P[0]];
set_property -dict { PACKAGE_PIN T15 IOSTANDARD TMDS_33 } [get_ports DATA_N[1]];
set_property -dict { PACKAGE_PIN T14 IOSTANDARD TMDS_33 } [get_ports DATA_P[1]];
set_property -dict { PACKAGE_PIN R16 IOSTANDARD TMDS_33 } [get_ports DATA_N[2]];
set_property -dict { PACKAGE_PIN R15 IOSTANDARD TMDS_33 } [get_ports DATA_P[2]];
set_property -dict { PACKAGE_PIN P13 IOSTANDARD TMDS_33 } [get_ports CLK_N];
set_property -dict { PACKAGE_PIN N13 IOSTANDARD TMDS_33 } [get_ports CLK_P];

      

#######################################################################################
#RGB LED
#######################################################################################
set_property -dict { PACKAGE_PIN E5 IOSTANDARD LVCMOS33 } [get_ports {RGB_LED1[0]}]; 
set_property -dict { PACKAGE_PIN D5 IOSTANDARD LVCMOS33 } [get_ports {RGB_LED1[1]}]; 
set_property -dict { PACKAGE_PIN E6 IOSTANDARD LVCMOS33 } [get_ports {RGB_LED1[2]}]; 
set_property -dict { PACKAGE_PIN C6 IOSTANDARD LVCMOS33 } [get_ports {RGB_LED2[0]}]; 
set_property -dict { PACKAGE_PIN C7 IOSTANDARD LVCMOS33 } [get_ports {RGB_LED2[1]}]; 
set_property -dict { PACKAGE_PIN D6 IOSTANDARD LVCMOS33 } [get_ports {RGB_LED2[2]}]; 




#VGA
set_property -dict {PACKAGE_PIN F12 IOSTANDARD LVCMOS33} [get_ports VGA_HS]
set_property -dict {PACKAGE_PIN C13 IOSTANDARD LVCMOS33} [get_ports VGA_VS]
set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVCMOS33} [get_ports {VGA_R[0]}]
set_property -dict {PACKAGE_PIN D16 IOSTANDARD LVCMOS33} [get_ports {VGA_R[1]}]
set_property -dict {PACKAGE_PIN E15 IOSTANDARD LVCMOS33} [get_ports {VGA_R[2]}]
set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVCMOS33} [get_ports {VGA_R[3]}]
set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS33} [get_ports {VGA_G[0]}]
set_property -dict {PACKAGE_PIN G15 IOSTANDARD LVCMOS33} [get_ports {VGA_G[1]}]
set_property -dict {PACKAGE_PIN G16 IOSTANDARD LVCMOS33} [get_ports {VGA_G[2]}]
set_property -dict {PACKAGE_PIN H16 IOSTANDARD LVCMOS33} [get_ports {VGA_G[3]}]
set_property -dict {PACKAGE_PIN J16 IOSTANDARD LVCMOS33} [get_ports {VGA_B[0]}]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {VGA_B[1]}]
set_property -dict {PACKAGE_PIN E11 IOSTANDARD LVCMOS33} [get_ports {VGA_B[2]}]
set_property -dict {PACKAGE_PIN C12 IOSTANDARD LVCMOS33} [get_ports {VGA_B[3]}]



##Buzzer
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports BUZZER]


#SEVEN SIG
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports SIG_A]
set_property -dict {PACKAGE_PIN M1 IOSTANDARD LVCMOS33} [get_ports SIG_B]
set_property -dict {PACKAGE_PIN L2 IOSTANDARD LVCMOS33} [get_ports SIG_C]
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS33} [get_ports SIG_D]
set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS33} [get_ports SIG_E]
set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS33} [get_ports SIG_F]
set_property -dict {PACKAGE_PIN H1 IOSTANDARD LVCMOS33} [get_ports SIG_G]
set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS33} [get_ports SIG_PD]
set_property -dict {PACKAGE_PIN T3 IOSTANDARD LVCMOS33} [get_ports SEL_DISP1]
set_property -dict {PACKAGE_PIN T4 IOSTANDARD LVCMOS33} [get_ports SEL_DISP2]
set_property -dict {PACKAGE_PIN N1 IOSTANDARD LVCMOS33} [get_ports SEL_DISP3]
set_property -dict {PACKAGE_PIN N2 IOSTANDARD LVCMOS33} [get_ports SEL_DISP4]


set_property -dict {PACKAGE_PIN R12 IOSTANDARD LVCMOS33} [get_ports RX_232]
set_property -dict {PACKAGE_PIN T12 IOSTANDARD LVCMOS33} [get_ports TX_232]



#LCD
set_property -dict {PACKAGE_PIN T5 IOSTANDARD LVCMOS33} [get_ports {lcd_data[4]}]
set_property -dict {PACKAGE_PIN R6 IOSTANDARD LVCMOS33} [get_ports {lcd_data[5]}]
set_property -dict {PACKAGE_PIN R7 IOSTANDARD LVCMOS33} [get_ports {lcd_data[6]}]
set_property -dict {PACKAGE_PIN T7 IOSTANDARD LVCMOS33} [get_ports {lcd_data[7]}]
set_property -dict {PACKAGE_PIN R5 IOSTANDARD LVCMOS33} [get_ports lcd_en]
set_property -dict {PACKAGE_PIN G1 IOSTANDARD LVCMOS33} [get_ports lcd_rs]

set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
