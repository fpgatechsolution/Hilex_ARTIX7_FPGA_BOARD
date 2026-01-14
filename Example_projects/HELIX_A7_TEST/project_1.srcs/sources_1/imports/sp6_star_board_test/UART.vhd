----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- company      : fpgatechsolution
-- module name  : uart
-- url     		: www.fpgatechsolution.com
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------


library ieee;
use ieee.std_logic_1164.all;

	entity uart is
		generic
		(
			frequency		: integer:= 100000000;
			baud			: integer:= 115200
		);
		port
		(
			clk				: in std_logic;
			rxd				: in std_logic;
			txd				: out std_logic;
			txd_data		: in std_logic_vector(7 downto 0);
			txd_start		: in std_logic;
			txd_busy		: out std_logic;
			rxd_data		: out std_logic_vector(7 downto 0);
			rxd_data_ready	: out std_logic
		);
	end entity uart;

architecture uart_beh of uart is


	component uart_receiver
		generic
		(
			frequency		: integer;
			baud			: integer
		);
		port
		(
			clk				: in std_logic;
			rxd				: in std_logic;
			rxd_data		: out std_logic_vector(7 downto 0);
			rxd_data_ready	: out std_logic
		);
	end component uart_receiver;
	
	component uart_transmitter
		generic
		(
			frequency		: integer;
			baud			: integer
		);
		port
		(
			clk				: in std_logic;
			txd				: out std_logic;
			txd_data		: in std_logic_vector(7 downto 0);
			txd_start		: in std_logic;
			txd_busy		: out std_logic
		);
	end component uart_transmitter;


begin



	receiver : uart_receiver
	generic map
		(
			frequency		=> frequency,
			baud			=> baud
		)
	port map
		(
			clk				=> clk,
			rxd				=> rxd,
			rxd_data		=> rxd_data,
			rxd_data_ready	=> rxd_data_ready
		);
	
	
	
	
	
	transmitter : uart_transmitter
	generic map
		(
			frequency		=> frequency,
			baud			=> baud
		)
	port map
		(
			clk				=> clk,
			txd				=> txd,
			txd_data		=> txd_data,
			txd_start		=> txd_start,
			txd_busy		=> txd_busy
		);
	
	
end uart_beh;
