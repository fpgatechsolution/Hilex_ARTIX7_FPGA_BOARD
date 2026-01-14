
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
Library UNISIM;
use UNISIM.vcomponents.all;

entity dvid is
    Port ( dvi_clk       : in  STD_LOGIC;
           dvi_clk_n     : in  STD_LOGIC;
           clk_pixel : in  STD_LOGIC;
           red_p     : in  STD_LOGIC_VECTOR (7 downto 0);
           green_p   : in  STD_LOGIC_VECTOR (7 downto 0);
           blue_p    : in  STD_LOGIC_VECTOR (7 downto 0);
           blank     : in  STD_LOGIC;
           hsync     : in  STD_LOGIC;
           vsync     : in  STD_LOGIC;
           --DVI Signals out
           DATA_P    : out STD_LOGIC_VECTOR (2 downto 0);
           DATA_N    : out STD_LOGIC_VECTOR (2 downto 0);
           CLK_P     : out STD_LOGIC;
           CLK_N     : out STD_LOGIC
           
           
           
);
end dvid;

architecture Behavioral of dvid is
   COMPONENT TDMS_encoder
   PORT(
      clk     : IN  std_logic;
      data    : IN  std_logic_vector(7 downto 0);
      c       : IN  std_logic_vector(1 downto 0);
      blank   : IN  std_logic;          
      encoded : OUT std_logic_vector(9 downto 0)
      );
   END COMPONENT;

   signal encoded_red, encoded_green, encoded_blue : std_logic_vector(9 downto 0);
   signal latched_red, latched_green, latched_blue : std_logic_vector(9 downto 0) := (others => '0');
   signal shift_red,   shift_green,   shift_blue   : std_logic_vector(9 downto 0) := (others => '0');
   
   signal shift_clock   : std_logic_vector(9 downto 0) := "0000011111";

   signal  green_s   :  STD_LOGIC;
   signal  blue_s    :  STD_LOGIC;
   signal  red_s    :  STD_LOGIC;
   signal  clock_s   :  STD_LOGIC;
           
   constant c_red       : std_logic_vector(1 downto 0) := (others => '0');
   constant c_green     : std_logic_vector(1 downto 0) := (others => '0');
   signal   c_blue      : std_logic_vector(1 downto 0);

begin   
   c_blue <= vsync & hsync;
   
   TDMS_encoder_red:   TDMS_encoder PORT MAP(clk => clk_pixel, data => red_p,   c => c_red,   blank => blank, encoded => encoded_red);
   TDMS_encoder_green: TDMS_encoder PORT MAP(clk => clk_pixel, data => green_p, c => c_green, blank => blank, encoded => encoded_green);
   TDMS_encoder_blue:  TDMS_encoder PORT MAP(clk => clk_pixel, data => blue_p,  c => c_blue,  blank => blank, encoded => encoded_blue);

   ODDR2_red   : ODDR2 generic map( DDR_ALIGNMENT => "C0", INIT => '0', SRTYPE => "ASYNC") 
      port map (Q => red_s,   D0 => shift_red(0),   D1 => shift_red(1),   C0 => dvi_clk, C1 => dvi_clk_n, CE => '1', R => '0', S => '0');
   
   ODDR2_green : ODDR2 generic map( DDR_ALIGNMENT => "C0", INIT => '0', SRTYPE => "ASYNC") 
      port map (Q => green_s, D0 => shift_green(0), D1 => shift_green(1), C0 => dvi_clk, C1 => dvi_clk_n, CE => '1', R => '0', S => '0');

   ODDR2_blue  : ODDR2 generic map( DDR_ALIGNMENT => "C0", INIT => '0', SRTYPE => "ASYNC") 
      port map (Q => blue_s,  D0 => shift_blue(0),  D1 => shift_blue(1),  C0 => dvi_clk, C1 => dvi_clk_n, CE => '1', R => '0', S => '0');

   ODDR2_clock : ODDR2 generic map( DDR_ALIGNMENT => "C0", INIT => '0', SRTYPE => "ASYNC") 
      port map (Q => clock_s, D0 => shift_clock(0), D1 => shift_clock(1), C0 => dvi_clk, C1 => dvi_clk_n, CE => '1', R => '0', S => '0');





OBUFDS_blue  : OBUFDS port map ( O  => DATA_P(0), OB => DATA_N(0), I  => blue_s  );
OBUFDS_red   : OBUFDS port map ( O  => DATA_P(1), OB => DATA_N(1), I  => green_s );
OBUFDS_green : OBUFDS port map ( O  => DATA_P(2), OB => DATA_N(2), I  => red_s   );
OBUFDS_clock : OBUFDS port map ( O  => CLK_P, OB => CLK_N, I  => clock_s );
    -- generic map ( IOSTANDARD => "DEFAULT")   
    
    
    


   process(clk_pixel)
   begin
      if rising_edge(clk_pixel) then 
            latched_red   <= encoded_red;
            latched_green <= encoded_green;
            latched_blue  <= encoded_blue;
      end if;
   end process;

   process(dvi_clk)
   begin
      if rising_edge(dvi_clk) then 
         if shift_clock = "0000011111" then
            shift_red   <= latched_red;
            shift_green <= latched_green;
            shift_blue  <= latched_blue;
         else
            shift_red   <= "00" & shift_red  (9 downto 2);
            shift_green <= "00" & shift_green(9 downto 2);
            shift_blue  <= "00" & shift_blue (9 downto 2);
         end if;
         shift_clock <= shift_clock(1 downto 0) & shift_clock(9 downto 2);
      end if;
   end process;
   
end Behavioral;
