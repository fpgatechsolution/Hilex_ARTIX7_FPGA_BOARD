#######################################################################################
## Clock signal
#######################################################################################

set_property -dict { PACKAGE_PIN P10    IOSTANDARD LVCMOS33 } [get_ports { clk }];
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {clk}];

#######################################################################################
##Buttons
#######################################################################################
set_property -dict { PACKAGE_PIN D3 IOSTANDARD LVCMOS33 } [get_ports { set_clk_ena }]; #PUSH4 FOR TIME SET
    set_property -dict { PACKAGE_PIN R7 IOSTANDARD LVCMOS33 } [get_ports { scl }]; 
set_property -dict { PACKAGE_PIN T7 IOSTANDARD LVCMOS33 } [get_ports { sda }]; 

set_property -dict { PACKAGE_PIN E3 IOSTANDARD LVCMOS33 } [get_ports { reset }]; 
set_property -dict { PACKAGE_PIN T12 IOSTANDARD LVCMOS33 } [get_ports { usb_uart_tx }]; 

set_property PULLUP true [get_ports scl]
set_property PULLUP true [get_ports sda]


 
    
### LEDs
set_property -dict { PACKAGE_PIN F5   IOSTANDARD LVCMOS33 } [get_ports {LED[0]}]; 
set_property -dict { PACKAGE_PIN G4   IOSTANDARD LVCMOS33 } [get_ports {LED[1]}]; 
set_property -dict { PACKAGE_PIN H3   IOSTANDARD LVCMOS33 } [get_ports {LED[2]}]; 
set_property -dict { PACKAGE_PIN J5   IOSTANDARD LVCMOS33 } [get_ports {LED[3]}]; 
set_property -dict { PACKAGE_PIN J4	   IOSTANDARD LVCMOS33 } [get_ports {LED[4]}]; 
set_property -dict { PACKAGE_PIN K5	   IOSTANDARD LVCMOS33 } [get_ports {LED[5]}]; 
set_property -dict { PACKAGE_PIN N3	   IOSTANDARD LVCMOS33 } [get_ports {LED[6]}]; 
set_property -dict { PACKAGE_PIN N4	   IOSTANDARD LVCMOS33 } [get_ports {LED[7]}]; 
set_property -dict { PACKAGE_PIN D14	   IOSTANDARD LVCMOS33 } [get_ports {LED[8]}]; 
set_property -dict { PACKAGE_PIN D13	   IOSTANDARD LVCMOS33 } [get_ports {LED[9]}]; 
set_property -dict { PACKAGE_PIN F14	   IOSTANDARD LVCMOS33 } [get_ports {LED[10]}]; 
set_property -dict { PACKAGE_PIN G12	   IOSTANDARD LVCMOS33 } [get_ports {LED[11]}]; 
set_property -dict { PACKAGE_PIN H14	   IOSTANDARD LVCMOS33 } [get_ports {LED[12]}]; 
set_property -dict { PACKAGE_PIN H11	   IOSTANDARD LVCMOS33 } [get_ports {LED[13]}]; 
set_property -dict { PACKAGE_PIN K12	   IOSTANDARD LVCMOS33 } [get_ports {LED[14]}]; 
set_property -dict { PACKAGE_PIN M12	   IOSTANDARD LVCMOS33 } [get_ports {LED[15]}]; 



#SEVEN SIG
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports SIG_A]
set_property -dict {PACKAGE_PIN M1 IOSTANDARD LVCMOS33} [get_ports SIG_B]
set_property -dict {PACKAGE_PIN L2 IOSTANDARD LVCMOS33} [get_ports SIG_C]
set_property -dict {PACKAGE_PIN K1 IOSTANDARD LVCMOS33} [get_ports SIG_D]
set_property -dict {PACKAGE_PIN J1 IOSTANDARD LVCMOS33} [get_ports SIG_E]
set_property -dict {PACKAGE_PIN H2 IOSTANDARD LVCMOS33} [get_ports SIG_F]
set_property -dict {PACKAGE_PIN H1 IOSTANDARD LVCMOS33} [get_ports SIG_G]
set_property -dict {PACKAGE_PIN K2 IOSTANDARD LVCMOS33} [get_ports SIG_PD]

set_property -dict {PACKAGE_PIN N1 IOSTANDARD LVCMOS33} [get_ports SEL_DISP1]
set_property -dict {PACKAGE_PIN N2 IOSTANDARD LVCMOS33} [get_ports SEL_DISP2]
set_property -dict {PACKAGE_PIN T3 IOSTANDARD LVCMOS33} [get_ports SEL_DISP3]
set_property -dict {PACKAGE_PIN T4 IOSTANDARD LVCMOS33} [get_ports SEL_DISP4]

