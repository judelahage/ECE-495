library IEEE;
use IEEE.std_logic_1164.all;

entity bcd_7seg_display is 
	port (
		sw: in std_logic_vector(9 downto 1);
		segments: out std_logic_vector(0 to 6)
	);
end bcd_7seg_display;

architecture dataflow of bcd_7seg_display is
signal encoders : std_logic_vector(3 downto 0);
begin
	
	encoders(3) <= sw(8) or sw(9);
	encoders(2) <= sw(4) or sw(5) or sw(6) or sw(7);
	encoders(1) <= sw(2) or sw(3) or sw(6) or sw(7);
	encoders(0) <= sw(1) or sw(3) or sw(5) or sw(7) or sw(9);
	
	segments <= "0000001" when encoders = "0000" else
	            "1001111" when encoders = "0001" else
	            "0010010" when encoders = "0010" else
	            "0000110" when encoders = "0011" else
	            "1001100" when encoders = "0100" else
	            "0100100" when encoders = "0101" else
	            "0100000" when encoders = "0110" else
	            "0001111" when encoders = "0111" else
	            "0000000" when encoders = "1000" else
	            "0000100" when encoders = "1001" else
	            "1111111";
		
end dataflow;
		
