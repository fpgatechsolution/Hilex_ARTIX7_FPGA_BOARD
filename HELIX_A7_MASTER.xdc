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

set_property -dict { PACKAGE_PIN P10    IOSTANDARD LVCMOS33 } [get_ports { clk100 }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk100}];

#######################################################################################
##Buttons
#######################################################################################
set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { push1 }]; 
set_property -dict { PACKAGE_PIN F3 IOSTANDARD LVCMOS33 } [get_ports { push2 }];
set_property -dict { PACKAGE_PIN F2 IOSTANDARD LVCMOS33 } [get_ports { push3 }];
set_property -dict { PACKAGE_PIN E1 IOSTANDARD LVCMOS33 } [get_ports { push4 }];
set_property -dict { PACKAGE_PIN D3 IOSTANDARD LVCMOS33 } [get_ports { push5 }]

#######################################################################################
## LEDs
#######################################################################################
set_property -dict { PACKAGE_PIN F5	   IOSTANDARD LVCMOS33 } [get_ports {LED[0]}]; 
set_property -dict { PACKAGE_PIN G4	   IOSTANDARD LVCMOS33 } [get_ports {LED[1]}]; 
set_property -dict { PACKAGE_PIN H3	   IOSTANDARD LVCMOS33 } [get_ports {LED[2]}]; 
set_property -dict { PACKAGE_PIN J5	   IOSTANDARD LVCMOS33 } [get_ports {LED[3]}]; 
set_property -dict { PACKAGE_PIN J4	   IOSTANDARD LVCMOS33 } [get_ports {LED[4]}]; 
set_property -dict { PACKAGE_PIN K5	   IOSTANDARD LVCMOS33 } [get_ports {LED[5]}]; 
set_property -dict { PACKAGE_PIN N3	   IOSTANDARD LVCMOS33 } [get_ports {LED[6]}]; 
set_property -dict { PACKAGE_PIN N4	   IOSTANDARD LVCMOS33 } [get_ports {LED[7]}]; 
set_property -dict { PACKAGE_PIN D14   IOSTANDARD LVCMOS33 } [get_ports {LED[8]}]; 
set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports {LED[9]}]; 
set_property -dict { PACKAGE_PIN F14   IOSTANDARD LVCMOS33 } [get_ports {LED[10]}]; 
set_property -dict { PACKAGE_PIN G12   IOSTANDARD LVCMOS33 } [get_ports {LED[11]}]; 
set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports {LED[12]}]; 
set_property -dict { PACKAGE_PIN H11   IOSTANDARD LVCMOS33 } [get_ports {LED[13]}]; 
set_property -dict { PACKAGE_PIN K12   IOSTANDARD LVCMOS33 } [get_ports {LED[14]}]; 
set_property -dict { PACKAGE_PIN M12   IOSTANDARD LVCMOS33 } [get_ports {LED[15]}];


#######################################################################################
## SLIDE SW
#######################################################################################
set_property -dict { PACKAGE_PIN F4	 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[0]}]; 
set_property -dict { PACKAGE_PIN G5	 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[1]}]; 
set_property -dict { PACKAGE_PIN H4	 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[2]}]; 
set_property -dict { PACKAGE_PIN H5	 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[3]}]; 
set_property -dict { PACKAGE_PIN J3	 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[4]}]; 
set_property -dict { PACKAGE_PIN K3	 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[5]}]; 
set_property -dict { PACKAGE_PIN L5	 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[6]}]; 
set_property -dict { PACKAGE_PIN M4	 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[7]}]; 
set_property -dict { PACKAGE_PIN E13 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[8]}]; 
set_property -dict { PACKAGE_PIN E12 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[9]}]; 
set_property -dict { PACKAGE_PIN F13 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[10]}]; 
set_property -dict { PACKAGE_PIN G14 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[11]}]; 
set_property -dict { PACKAGE_PIN H13 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[12]}]; 
set_property -dict { PACKAGE_PIN G11 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[13]}]; 
set_property -dict { PACKAGE_PIN H12 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[14]}]; 
set_property -dict { PACKAGE_PIN K13 IOSTANDARD LVCMOS33 } [get_ports {SLIDE_SW[15]}];


####################################################################################### 
## OV7670            
#######################################################################################
set_property -dict { PACKAGE_PIN L3 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[0]}];
set_property -dict { PACKAGE_PIN L4 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[1]}];
set_property -dict { PACKAGE_PIN M5 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[2]}];
set_property -dict { PACKAGE_PIN M6 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[3]}];
set_property -dict { PACKAGE_PIN P3 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[4]}];
set_property -dict { PACKAGE_PIN N6 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[5]}];
set_property -dict { PACKAGE_PIN P5 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[6]}];
set_property -dict { PACKAGE_PIN P4 IOSTANDARD LVCMOS33 } [get_ports {ov7670_data[7]}];
set_property -dict { PACKAGE_PIN R2 IOSTANDARD LVCMOS33 } [get_ports ov7670_href];
set_property -dict { PACKAGE_PIN P6 IOSTANDARD LVCMOS33 } [get_ports ov7670_pclk];
set_property -dict { PACKAGE_PIN T2 IOSTANDARD LVCMOS33 } [get_ports ov7670_sioc];
set_property -dict { PACKAGE_PIN R3 IOSTANDARD LVCMOS33 } [get_ports ov7670_siod];
set_property -dict { PACKAGE_PIN R1 IOSTANDARD LVCMOS33 } [get_ports ov7670_vsync];
set_property -dict { PACKAGE_PIN P1 IOSTANDARD LVCMOS33 } [get_ports ov7670_xclk];
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {ov7670_pclk_IBUF}];	





#######################################################################################
##ESP8266 WIFI UART
#######################################################################################
set_property -dict { PACKAGE_PIN N9 IOSTANDARD LVCMOS33 } [get_ports { usb_uart_rxd }]; 
set_property -dict { PACKAGE_PIN P9 IOSTANDARD LVCMOS33 } [get_ports { usb_uart_txd }];




#######################################################################################
##USB UART
#######################################################################################
set_property -dict { PACKAGE_PIN R12 IOSTANDARD LVCMOS33 } [get_ports { usb_uart_rxd }]; 
set_property -dict { PACKAGE_PIN T12 IOSTANDARD LVCMOS33 } [get_ports { usb_uart_txd }];

#######################################################################################
## XADC 
#######################################################################################
set_property -dict { PACKAGE_PIN C8 IOSTANDARD LVCMOS33 } [get_ports { LDR_P }]; #AD0P
set_property -dict { PACKAGE_PIN C9 IOSTANDARD LVCMOS33 } [get_ports { LDR_N }]; #AD0N

set_property -dict { PACKAGE_PIN H8 IOSTANDARD LVCMOS33 } [get_ports { POT_P }]; #VP_P
set_property -dict { PACKAGE_PIN J7 IOSTANDARD LVCMOS33 } [get_ports { POT_N }]; #VP_N


set_property -dict { PACKAGE_PIN C14 IOSTANDARD LVCMOS33 } [get_ports { TMP_P }]; #AD10P
set_property -dict { PACKAGE_PIN B14 IOSTANDARD LVCMOS33 } [get_ports { TMP_N }]; #AD10N




#######################################################################################
###HDMI out  
#######################################################################################

set_property -dict { PACKAGE_PIN T13 IOSTANDARD TMDS_33 } [get_ports data_n[0]];
set_property -dict { PACKAGE_PIN R13 IOSTANDARD TMDS_33 } [get_ports data_p[0]];
set_property -dict { PACKAGE_PIN T15 IOSTANDARD TMDS_33 } [get_ports data_n[1]];
set_property -dict { PACKAGE_PIN T14 IOSTANDARD TMDS_33 } [get_ports data_p[1]];
set_property -dict { PACKAGE_PIN R16 IOSTANDARD TMDS_33 } [get_ports data_n[2]];
set_property -dict { PACKAGE_PIN R15 IOSTANDARD TMDS_33 } [get_ports data_p[2]];
set_property -dict { PACKAGE_PIN P13 IOSTANDARD TMDS_33 } [get_ports clk_n];
set_property -dict { PACKAGE_PIN N13 IOSTANDARD TMDS_33 } [get_ports clk_p];


#######################################################################################
#LCD 16by2 4bit
#######################################################################################
set_property -dict { PACKAGE_PIN T5 IOSTANDARD LVCMOS33 } [get_ports {lcd_data[4]}];
set_property -dict { PACKAGE_PIN R6 IOSTANDARD LVCMOS33 } [get_ports {lcd_data[5]}];
set_property -dict { PACKAGE_PIN R7 IOSTANDARD LVCMOS33 } [get_ports {lcd_data[6]}];
set_property -dict { PACKAGE_PIN T7 IOSTANDARD LVCMOS33 } [get_ports {lcd_data[7]}]; 
set_property -dict { PACKAGE_PIN R5 IOSTANDARD LVCMOS33 } [get_ports {lcd_en}];
set_property -dict { PACKAGE_PIN G1 IOSTANDARD LVCMOS33 } [get_ports {lcd_rs}];



#######################################################################################
#VGA
#######################################################################################
set_property -dict { PACKAGE_PIN F12 IOSTANDARD LVCMOS33 } [get_ports {VGA_HS}]; 
set_property -dict { PACKAGE_PIN C13 IOSTANDARD LVCMOS33 } [get_ports {VGA_VS}]; 
set_property -dict { PACKAGE_PIN D15 IOSTANDARD LVCMOS33 } [get_ports {VGA_R[0]}]; 
set_property -dict { PACKAGE_PIN D16 IOSTANDARD LVCMOS33 } [get_ports {VGA_R[1]}]; 
set_property -dict { PACKAGE_PIN E15 IOSTANDARD LVCMOS33 } [get_ports {VGA_R[2]}]; 
set_property -dict { PACKAGE_PIN E16 IOSTANDARD LVCMOS33 } [get_ports {VGA_R[3]}]; 
set_property -dict { PACKAGE_PIN F15 IOSTANDARD LVCMOS33 } [get_ports {VGA_G[0]}]; 
set_property -dict { PACKAGE_PIN G15 IOSTANDARD LVCMOS33 } [get_ports {VGA_G[1]}]; 
set_property -dict { PACKAGE_PIN G16 IOSTANDARD LVCMOS33 } [get_ports {VGA_G[2]}]; 
set_property -dict { PACKAGE_PIN H16 IOSTANDARD LVCMOS33 } [get_ports {VGA_G[3]}]; 
set_property -dict { PACKAGE_PIN J16 IOSTANDARD LVCMOS33 } [get_ports {VGA_B[0]}]; 
set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports {VGA_B[1]}]; 
set_property -dict { PACKAGE_PIN E11 IOSTANDARD LVCMOS33 } [get_ports {VGA_B[2]}]; 
set_property -dict { PACKAGE_PIN C12 IOSTANDARD LVCMOS33 } [get_ports {VGA_B[3]}];


#######################################################################################
##Buzzer
#######################################################################################
set_property -dict { PACKAGE_PIN G2 IOSTANDARD LVCMOS33 } [get_ports { buzzer}];

#######################################################################################
#AUDIO
#######################################################################################
set_property -dict { PACKAGE_PIN C11 IOSTANDARD LVCMOS33 } [get_ports { AUDIO_L}];
set_property -dict { PACKAGE_PIN D10 IOSTANDARD LVCMOS33 } [get_ports { AUDIO_R}];

#######################################################################################
#RGB LED
#######################################################################################
set_property -dict { PACKAGE_PIN E5 IOSTANDARD LVCMOS33 } [get_ports {RGB_LED1[0]}]; 
set_property -dict { PACKAGE_PIN D5 IOSTANDARD LVCMOS33 } [get_ports {RGB_LED1[1]}]; 
set_property -dict { PACKAGE_PIN E6 IOSTANDARD LVCMOS33 } [get_ports {RGB_LED1[2]}]; 
set_property -dict { PACKAGE_PIN C6 IOSTANDARD LVCMOS33 } [get_ports {RGB_LED2[0]}]; 
set_property -dict { PACKAGE_PIN C7 IOSTANDARD LVCMOS33 } [get_ports {RGB_LED2[1]}]; 
set_property -dict { PACKAGE_PIN D6 IOSTANDARD LVCMOS33 } [get_ports {RGB_LED2[2]}]; 


#######################################################################################
#MIPI CAMERA 
#######################################################################################


set_property -dict { PACKAGE_PIN N16 IOSTANDARD LVCMOS33 } [get_ports {MIPI_L0_N}]; 
set_property -dict { PACKAGE_PIN M16 IOSTANDARD LVCMOS33 } [get_ports {MIPI_L0_P}];
set_property -dict { PACKAGE_PIN P16 IOSTANDARD LVCMOS33 } [get_ports {MIPI_L1_N}]; 
set_property -dict { PACKAGE_PIN P15 IOSTANDARD LVCMOS33 } [get_ports {MIPI_L1_P}];
set_property -dict { PACKAGE_PIN P14 IOSTANDARD LVCMOS33 } [get_ports {MIPI_CLK_N}]; 
set_property -dict { PACKAGE_PIN N14 IOSTANDARD LVCMOS33 } [get_ports {MIPI_CLK_P}];
set_property -dict { PACKAGE_PIN N12 IOSTANDARD LVCMOS33 } [get_ports {MIPI_D_N}]; 
set_property -dict { PACKAGE_PIN N11 IOSTANDARD LVCMOS33 } [get_ports {MIPI_D_P}];


set_property -dict { PACKAGE_PIN L14 IOSTANDARD LVCMOS33 } [get_ports {MIPI_GPIO}]; 
set_property -dict { PACKAGE_PIN P11 IOSTANDARD LVCMOS33 } [get_ports {MIPI_CLK }];
set_property -dict { PACKAGE_PIN M14 IOSTANDARD LVCMOS33 } [get_ports {MIPI_SCL }]; 
set_property -dict { PACKAGE_PIN L13 IOSTANDARD LVCMOS33 } [get_ports {MIPI_SDA }];



#######################################################################################
#FLASH
#######################################################################################
set_property -dict { PACKAGE_PIN L12 IOSTANDARD LVCMOS33 } [get_ports { FLASH_CS }];
set_property -dict { PACKAGE_PIN M15 IOSTANDARD LVCMOS33 } [get_ports { FLASH_CLK }];
set_property -dict { PACKAGE_PIN J13 IOSTANDARD LVCMOS33 } [get_ports { FLASH_DATA0 }];
set_property -dict { PACKAGE_PIN J14 IOSTANDARD LVCMOS33 } [get_ports { FLASH_DATA1 }];
set_property -dict { PACKAGE_PIN K15 IOSTANDARD LVCMOS33 } [get_ports { FLASH_DATA2 }];
set_property -dict { PACKAGE_PIN K16 IOSTANDARD LVCMOS33 } [get_ports { FLASH_DATA3 }];


#######################################################################################
#DAC
#######################################################################################
set_property -dict { PACKAGE_PIN D8 IOSTANDARD LVCMOS33 } [get_ports { FLASH_CS }];
set_property -dict { PACKAGE_PIN D11  IOSTANDARD LVCMOS33 } [get_ports { FLASH_CLK }];
set_property -dict { PACKAGE_PIN D9 IOSTANDARD LVCMOS33 } [get_ports { F_DAC_DATA }];


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
#SD CARD
#######################################################################################
set_property -dict { PACKAGE_PIN R8	 IOSTANDARD LVCMOS33 } [get_ports { SD_CD }];
set_property -dict { PACKAGE_PIN T9	 IOSTANDARD LVCMOS33 } [get_ports { SD_CLK }];
set_property -dict { PACKAGE_PIN T10 IOSTANDARD LVCMOS33 } [get_ports { SD_CMD }];
set_property -dict { PACKAGE_PIN P8	 IOSTANDARD LVCMOS33 } [get_ports {SD_DATA[0]}]; 
set_property -dict { PACKAGE_PIN T8	 IOSTANDARD LVCMOS33 } [get_ports {SD_DATA[1]}]; 
set_property -dict { PACKAGE_PIN R11 IOSTANDARD LVCMOS33 } [get_ports {SD_DATA[2]}]; 
set_property -dict { PACKAGE_PIN R10 IOSTANDARD LVCMOS33 } [get_ports {SD_DATA[3]}]; 



#######################################################################################
##PMOD JA
#######################################################################################
set_property -dict { PACKAGE_PIN E2    IOSTANDARD LVCMOS33 } [get_ports { JA_1 }]; ## P
set_property -dict { PACKAGE_PIN D1    IOSTANDARD LVCMOS33 } [get_ports { JA_2 }]; ## N
set_property -dict { PACKAGE_PIN C1    IOSTANDARD LVCMOS33 } [get_ports { JA_3 }]; ## P
set_property -dict { PACKAGE_PIN B1    IOSTANDARD LVCMOS33 } [get_ports { JA_4 }]; ## N
set_property -dict { PACKAGE_PIN B2    IOSTANDARD LVCMOS33 } [get_ports { JA_5 }]; ## P
set_property -dict { PACKAGE_PIN A2    IOSTANDARD LVCMOS33 } [get_ports { JA_6 }]; ## N
set_property -dict { PACKAGE_PIN A5    IOSTANDARD LVCMOS33 } [get_ports { JA_7 }]; ## P
set_property -dict { PACKAGE_PIN A4    IOSTANDARD LVCMOS33 } [get_ports { JA_8}];  ## N
#JA_9 3.3V
#JA_10 GND


#######################################################################################
##PMOD JB
#######################################################################################
set_property -dict { PACKAGE_PIN B12    IOSTANDARD LVCMOS33 } [get_ports { JB_1 }]; ## P
set_property -dict { PACKAGE_PIN A12    IOSTANDARD LVCMOS33 } [get_ports { JB_2 }]; ## N
set_property -dict { PACKAGE_PIN A13    IOSTANDARD LVCMOS33 } [get_ports { JB_3 }]; ## P
set_property -dict { PACKAGE_PIN A14    IOSTANDARD LVCMOS33 } [get_ports { JB_4 }]; ## N
set_property -dict { PACKAGE_PIN B15    IOSTANDARD LVCMOS33 } [get_ports { JB_5 }]; ## P
set_property -dict { PACKAGE_PIN A15    IOSTANDARD LVCMOS33 } [get_ports { JB_6 }]; ## N
set_property -dict { PACKAGE_PIN C16    IOSTANDARD LVCMOS33 } [get_ports { JB_7 }]; ## P
set_property -dict { PACKAGE_PIN B16    IOSTANDARD LVCMOS33 } [get_ports { JB_8}];  ## N

#JB_9 3.3V
#JB_10 GND


#######################################################################################
##PMOD JC
#######################################################################################
set_property -dict { PACKAGE_PIN B7	    IOSTANDARD LVCMOS33 } [get_ports { JC_1 }]; ## P
set_property -dict { PACKAGE_PIN A7	    IOSTANDARD LVCMOS33 } [get_ports { JC_2 }]; ## N
set_property -dict { PACKAGE_PIN A8	    IOSTANDARD LVCMOS33 } [get_ports { JC_3 }]; ## P
set_property -dict { PACKAGE_PIN A9	    IOSTANDARD LVCMOS33 } [get_ports { JC_4 }]; ## N
set_property -dict { PACKAGE_PIN B9	    IOSTANDARD LVCMOS33 } [get_ports { JC_5 }]; ## P
set_property -dict { PACKAGE_PIN A10    IOSTANDARD LVCMOS33 } [get_ports { JC_6 }]; ## N
set_property -dict { PACKAGE_PIN B10    IOSTANDARD LVCMOS33 } [get_ports { JC_7 }]; ## P
set_property -dict { PACKAGE_PIN B11    IOSTANDARD LVCMOS33 } [get_ports { JC_8}];  ## N
#JC_9 3.3V
#JC_10 GND


#######################################################################################
##PMOD JD
#######################################################################################
set_property -dict { PACKAGE_PIN C3    IOSTANDARD LVCMOS33 } [get_ports { JD_1 }];  ## P
set_property -dict { PACKAGE_PIN C2    IOSTANDARD LVCMOS33 } [get_ports { JD_2 }];  ## N
set_property -dict { PACKAGE_PIN D4    IOSTANDARD LVCMOS33 } [get_ports { JD_3 }];  ## P
set_property -dict { PACKAGE_PIN C4    IOSTANDARD LVCMOS33 } [get_ports { JD_4 }];  ## N
set_property -dict { PACKAGE_PIN B4    IOSTANDARD LVCMOS33 } [get_ports { JD_5 }];  ## P
set_property -dict { PACKAGE_PIN A3    IOSTANDARD LVCMOS33 } [get_ports { JD_6 }];  ## N
set_property -dict { PACKAGE_PIN B6    IOSTANDARD LVCMOS33 } [get_ports { JD_7 }];  ## P
set_property -dict { PACKAGE_PIN B5    IOSTANDARD LVCMOS33 } [get_ports { JD_8 }];  ## N
#JD_9 3.3V
#JD_10 GND












