	
	LIBRARY IEEE;
	USE IEEE.STD_LOGIC_1164.ALL;
	USE IEEE.STD_LOGIC_ARITH.ALL;
	USE IEEE.STD_LOGIC_UNSIGNED.ALL;
	LIBRARY xil_defaultlib;
	
	ENTITY TOP IS
	PORT(
			osc_clk_in : IN  STD_LOGIC;
	
		   lcd_rs : out std_logic;		-- LCD RS control
           lcd_en : out std_logic;		-- LCD Enable
           lcd_data : out std_logic_vector(7 downto 4);
           		
			
			RGB_LED1: out std_logic_vector(2 downto 0);
			RGB_LED2: out std_logic_vector(2 downto 0);
			
			KEY_0 :IN STD_LOGIC;
			KEY_1 :IN STD_LOGIC;
			KEY_2 :IN STD_LOGIC;
			KEY_3 :IN STD_LOGIC;
			KEY_4 :IN STD_LOGIC;
			
			BUZZER:OUT STD_LOGIC;
			
            VGA_HS:OUT STD_LOGIC;
            VGA_VS:OUT STD_LOGIC;
            VGA_R:OUT std_logic_vector(3 downto 0);
            VGA_G:OUT std_logic_vector(3 downto 0);
            VGA_B:OUT std_logic_vector(3 downto 0);
            
            
           DATA_P    : out STD_LOGIC_VECTOR (2 downto 0);
           DATA_N    : out STD_LOGIC_VECTOR (2 downto 0);
           CLK_P     : out STD_LOGIC;
           CLK_N     : out STD_LOGIC;
           
           
			RX_232 : in  STD_LOGIC;
            TX_232 : out  STD_LOGIC;
	
	
	       speaker: out  STD_LOGIC;
	
			SIG_A : OUT STD_LOGIC;
			SIG_B : OUT STD_LOGIC;
			SIG_C : OUT STD_LOGIC;
			SIG_D : OUT STD_LOGIC;
			SIG_E : OUT STD_LOGIC;
			SIG_F : OUT STD_LOGIC;
			SIG_G : OUT STD_LOGIC;
			SIG_PD: OUT STD_LOGIC;
			SEL_DISP1 : OUT STD_LOGIC;
			SEL_DISP2 : OUT STD_LOGIC;
			SEL_DISP3 : OUT STD_LOGIC;
			SEL_DISP4 : OUT STD_LOGIC;
	
			SLIDE_SW: IN  STD_LOGIC_VECTOR (15 DOWNTO 0);	
			LED : OUT  STD_LOGIC_VECTOR (15 DOWNTO 0));
	END TOP;
	
	ARCHITECTURE BEHAVIORAL OF TOP IS	
	 CONSTANT A :std_logic_vector(7 downto 0):=X"41";
  CONSTANT B :std_logic_vector(7 downto 0):=X"42";
CONSTANT C :std_logic_vector(7 downto 0):=X"43";
CONSTANT D :std_logic_vector(7 downto 0):=X"44";
CONSTANT E :std_logic_vector(7 downto 0):=X"45";
CONSTANT F :std_logic_vector(7 downto 0):=X"46";
CONSTANT G :std_logic_vector(7 downto 0):=X"47";
CONSTANT H :std_logic_vector(7 downto 0):=X"48";
CONSTANT I :std_logic_vector(7 downto 0):=X"49";
CONSTANT J :std_logic_vector(7 downto 0):=X"4A";
CONSTANT K :std_logic_vector(7 downto 0):=X"4B";
CONSTANT L :std_logic_vector(7 downto 0):=X"4C";
CONSTANT M :std_logic_vector(7 downto 0):=X"4D";
CONSTANT N :std_logic_vector(7 downto 0):=X"4E";
CONSTANT O :std_logic_vector(7 downto 0):=X"4F";
CONSTANT P :std_logic_vector(7 downto 0):=X"50";
CONSTANT Q :std_logic_vector(7 downto 0):=X"51";
CONSTANT R :std_logic_vector(7 downto 0):=X"52";
CONSTANT S :std_logic_vector(7 downto 0):=X"53";
CONSTANT T :std_logic_vector(7 downto 0):=X"54";
CONSTANT U :std_logic_vector(7 downto 0):=X"55";
CONSTANT V :std_logic_vector(7 downto 0):=X"56";
CONSTANT W :std_logic_vector(7 downto 0):=X"57";
CONSTANT X :std_logic_vector(7 downto 0):=X"58";
CONSTANT Y :std_logic_vector(7 downto 0):=X"59";
CONSTANT Z :std_logic_vector(7 downto 0):=X"5A";
CONSTANT NL :std_logic_vector(7 downto 0):=X"0A";
CONSTANT CR :std_logic_vector(7 downto 0):=X"2D";
CONSTANT an :std_logic_vector(7 downto 0):=X"26";
CONSTANT ST :std_logic_vector(7 downto 0):=X"2A";
CONSTANT SP :std_logic_vector(7 downto 0):=X"20";
CONSTANT DT :std_logic_vector(7 downto 0):=X"2E";
  

signal	C1L1,C2L1,C3L1,C4L1,C5L1,C6L1,C7L1,C8L1,C9L1: STD_LOGIC_VECTOR(7 DOWNTO 0);
signal	C10L1,C11L1,C12L1,C13L1,C14L1,C15L1,C16L1: 	STD_LOGIC_VECTOR(7 DOWNTO 0);
signal	C1L2,C2L2,C3L2,C4L2,C5L2,C6L2,C7L2,C8L2,C9L2: 	STD_LOGIC_VECTOR(7 DOWNTO 0);
signal	C10L2,C11L2,C12L2,C13L2,C14L2,C15L2,C16L2: 	STD_LOGIC_VECTOR(7 DOWNTO 0);
  
	SIGNAL CLK_400KHZ,PWM_OUT,CLK_1S,RESET,test_sw:STD_LOGIC;
	SIGNAL COUNT: STD_LOGIC_VECTOR(26 DOWNTO 0); 
	SIGNAL TMP_SIG:STD_LOGIC_VECTOR (14 DOWNTO 0);
	SIGNAL COUNT_RGB: STD_LOGIC_VECTOR(7 DOWNTO 0); 
	SIGNAL LED_buff :   STD_LOGIC_VECTOR (15 DOWNTO 0);
	
	SIGNAL           red_p     :   STD_LOGIC_VECTOR (7 downto 0);
    SIGNAL       green_p   :   STD_LOGIC_VECTOR (7 downto 0);
    SIGNAL       blue_p    :   STD_LOGIC_VECTOR (7 downto 0);
           
           
	SIGNAL clk_125Mhz :   STD_LOGIC;
	SIGNAL clk_125Mhz_n:   STD_LOGIC;
	SIGNAL CLK_10MHZ :   STD_LOGIC;
	SIGNAL CLK_25MHZ :   STD_LOGIC;
	SIGNAL CLK_100MHZ :   STD_LOGIC;
	SIGNAL lcd_res :   STD_LOGIC;
	SIGNAL blank:   STD_LOGIC;
	
	
--	SIGNAL	lcd_rs :  std_logic;		-- LCD RS control
--    SIGNAL  lcd_en :  std_logic;		-- LCD Enable
--    SIGNAL  lcd_data :  std_logic_vector(7 downto 4);
           



	component delay_counter is
		PORT (		
		clk,reset: in STD_LOGIC;
		delay_1s: OUT STD_LOGIC		
		);
		END component delay_counter;
		
		
	component audio is
		PORT (		
		clk: in STD_LOGIC;
		speaker: OUT STD_LOGIC		
		);
		END component audio;
			
	COMPONENT design_1_clk_wiz_0_0 IS
 PORT(

          clk_out1 : OUT STD_LOGIC;
          clk_out2 : OUT STD_LOGIC;
          clk_out3 : OUT STD_LOGIC;
          clk_out4 : OUT STD_LOGIC;
          clk_out5 : OUT STD_LOGIC;
           clk_in1 : IN STD_LOGIC);
            END component design_1_clk_wiz_0_0;




SIGNAL			red_out	       : 	STD_LOGIC;
SIGNAL			green_out	   : 	STD_LOGIC;
SIGNAL			blue_out 	   : 	STD_LOGIC;
SIGNAL			horiz_sync_out : 	STD_LOGIC;
SIGNAL			vert_sync_out  : 	STD_LOGIC;

 
	BEGIN
	
	
	
	        VGA_HS<=horiz_sync_out;
            VGA_VS<=vert_sync_out;
            VGA_R(0)<=red_out;
            VGA_R(1)<=red_out;
            VGA_R(2)<=red_out;
            VGA_R(3)<=red_out;
            
            
            
            
            VGA_G(0)<=green_out;
            VGA_G(1)<=green_out;
            VGA_G(2)<=green_out;
            VGA_G(3)<=green_out;

            
            VGA_B(0)<=blue_out;
            VGA_B(1)<=blue_out;
            VGA_B(2)<=blue_out;
            VGA_B(3)<=blue_out;
            
            
            

	
	
			INST_clk_wiz: design_1_clk_wiz_0_0 
		PORT MAP (
    clk_out1 =>clk_125Mhz,
    clk_out3 =>CLK_10MHZ,
    clk_out2 =>CLK_25MHZ,
    clk_out4 =>clk_125Mhz_n,
    clk_out5 =>CLK_100MHZ,
    clk_in1 =>osc_clk_in
  );

			INST_delay_counter: delay_counter 
		PORT MAP (
    clk =>CLK_10MHZ,
    reset =>'0',
    delay_1s =>CLK_1S
  );





	INST_AUDIO:  audio 
		PORT MAP(		
		clk=>CLK_25MHZ,
		speaker=>speaker
		
		);
		

	RESET<= KEY_0;
	BUZZER<= KEY_2;
	
	
	
	
		INST_SEVEN_SEGMENT: ENTITY xil_defaultlib.SEVEN_SEGMENT 
		PORT MAP(
			CLK_100MHZ =>CLK_100MHZ ,
			RESET =>RESET ,
			SIG_PD =>SIG_PD ,
			SIG_A =>SIG_A ,
			SIG_B => SIG_B,
			SIG_C =>SIG_C ,
			SIG_D =>SIG_D ,
			SIG_E =>SIG_E ,
			SIG_F =>SIG_F ,
			SIG_G =>SIG_G ,
			SEL_DISP1 =>SEL_DISP1 ,
			SEL_DISP2 =>SEL_DISP2 ,
			SEL_DISP3 =>SEL_DISP3 ,
			SEL_DISP4 =>SEL_DISP4 ,
			DATA_DISP_1(3 DOWNTO 0) =>COUNT_RGB(3 DOWNTO 0) ,
			DATA_DISP_2(3 DOWNTO 0) =>COUNT_RGB(3 DOWNTO 0),
			DATA_DISP_3(3 DOWNTO 0) =>COUNT_RGB(3 DOWNTO 0) ,
			DATA_DISP_4(3 DOWNTO 0) =>COUNT_RGB(3 DOWNTO 0) );
	

	
	PROCESS (CLK_1S) 
		BEGIN
			IF reset='1'  THEN 
				COUNT_RGB <= (OTHERS => '0');
			ELSIF CLK_1S='1' AND CLK_1S'EVENT THEN		
				COUNT_RGB <= COUNT_RGB + 1;		
			END IF;
		END PROCESS;
	
	
RGB_LED1<=COUNT_RGB(2 DOWNTO 0);
RGB_LED2<=COUNT_RGB(2 DOWNTO 0);
	
		Inst_LED_SHIFTER: ENTITY xil_defaultlib.LED_SHIFTER 
		PORT MAP(
			IND =>COUNT_RGB(4 DOWNTO 0) ,
			LED => LED_buff--LED
		);
	
	LED<= test_sw & LED_buff(14 downto 0);
	
	test_sw<=SLIDE_SW(0) OR SLIDE_SW(1) OR SLIDE_SW(2) OR SLIDE_SW(3) OR SLIDE_SW(4) OR SLIDE_SW(5) OR SLIDE_SW(6) OR SLIDE_SW(7) OR SLIDE_SW(8)
	         OR SLIDE_SW(9) OR SLIDE_SW(10) OR SLIDE_SW(11) OR SLIDE_SW(12) OR SLIDE_SW(13) OR SLIDE_SW(14) OR SLIDE_SW(15)OR( KEY_0) OR( KEY_1)OR( KEY_2)OR( KEY_3) or (KEY_4);
	      	
	Inst_VGA_SYNC: ENTITY xil_defaultlib.VGA_SYNC 
	PORT MAP(	clock_25Mhz    =>CLK_25MHZ,
			     red_out       =>red_out,
			     green_out     =>green_out,
			     blue_out      =>blue_out,
			     blank         =>blank,
			     horiz_sync_out=>horiz_sync_out,
			     vert_sync_out =>vert_sync_out);




	       red_p     <=(red_out & red_out & red_out & red_out & red_out & red_out & red_out & red_out);
           green_p   <=( green_out & green_out & green_out & green_out & green_out & green_out & green_out & green_out   );
           blue_p   <=( blue_out & blue_out & blue_out & blue_out & blue_out & blue_out & blue_out & blue_out  );
    
    


Inst_dvid: ENTITY xil_defaultlib.dvid PORT MAP(
      dvi_clk       => clk_125Mhz,
      dvi_clk_n     => clk_125Mhz_n, 
      clk_pixel => CLK_25MHZ,
      red_p     => red_p,
      green_p   => green_p,
      blue_p    => blue_p,
      blank     => blank,
      hsync     => horiz_sync_out,
      vsync     => vert_sync_out,
      -- outputs to TMDS drivers
      data_p    =>data_p,
      data_n    =>data_n,
      clk_p     =>clk_p,
      clk_n     =>clk_n 
   );
   
   
   

	Inst_uart_control: ENTITY xil_defaultlib.UART_CONTROL 
	PORT MAP(
		CLK =>CLK_10MHZ ,
		reset =>KEY_3 ,
		TXD => TX_232,
		RXD =>RX_232 ,
		TEST_LED =>open 
	);

lcd_res<=not RESET;

Inst_LCD_4BIT: ENTITY xil_defaultlib.LCD_4_BIT PORT MAP(
    	
    	rst=>lcd_res ,
    	clk_12Mhz=>CLK_10MHZ,
    	lcd_rs=>lcd_rs,
    	lcd_en=>lcd_en,
    	lcd_data=>lcd_data,
		 C1L1 =>C1L1,
		 C2L1 =>C2L1,
		 C3L1 =>C3L1,
		 C4L1 =>C4L1,
		 C5L1 =>C5L1,
		 C6L1 =>C6L1,
		 C7L1 =>C7L1,
		 C8L1 =>C8L1,
		 C9L1 =>C9L1,
		C10L1 =>C10L1,
		C11L1 =>C11L1,
		C12L1 =>C12L1,
		C13L1 =>C13L1,
		C14L1 =>C14L1,
		C15L1 =>C15L1,
		C16L1 =>C16L1,
		C1L2  =>C1L2, 
		C2L2  =>C2L2, 
		C3L2  =>C3L2, 
		C4L2  =>C4L2, 
		C5L2  =>C5L2, 
		C6L2  =>C6L2, 
		C7L2  =>C7L2, 
		C8L2  =>C8L2, 
		C9L2  =>C9L2, 
		C10L2 =>C10L2,
		C11L2 =>C11L2,
		C12L2 =>C12L2,
		C13L2 =>C13L2,
		C14L2 =>C14L2,
		C15L2 =>C15L2,
		C16L2 =>C16L2
    	);
    	
    	
 C1L1<=F ;
 C2L1<=P ;
 C3L1<=G ;
 C4L1<=A ;
 C5L1<=T ;
 C6L1<=E ;
 C7L1<=C ;
 C8L1<=H ;
 C9L1<=S ;
C10L1<=O ;
C11L1<=L ;
C12L1<=U ;
C13L1<=T ;
C14L1<=I ;
C15L1<=O;
C16L1<=N ;

--EI$LER-ARTIX7 FPGA
C1L2<=E;
C2L2<=I;
C3L2<=X"24";
C4L2<=L;
C5L2<=E;
C6L2<=R;
C7L2<=SP;
C8L2<=A;
C9L2<=R;
C10L2<=T;
C11L2<=I;
C12L2<=X;
C13L2<=X"37";
C14L2<=SP;
C15L2<=SP;
C16L2<=SP;

	END BEHAVIORAL;
	
