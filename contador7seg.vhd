library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity contador7seg is
port (clk, rst, updown : in std_logic;
			Q : inout std_logic_vector(3 downto 0);
			F : inout std_logic_vector(6 downto 0)
		);
end contador7seg;

architecture ale of contador7seg is 
begin
CONTADOR:process(clk, rst)
begin
if(clk 'event and clk = '1') then
if(updown = '0') then
if(rst = '1') OR (Q = "1001") then
Q <= "0000";
else
Q <= Q+1;
end if;
else
if(rst = '1') OR (Q = "0000") then
Q <= "1001";
else
Q <= Q-1;
end if;
end if;
end if;
end process CONTADOR;
DISPLAY:process(Q)
begin
case Q is
when "0000" => F <= "0000001";
when "0001" => F <= "1001111";
when "0010" => F <= "0010010";
when "0011" => F <= "0000110";
when "0100" => F <= "1001100";
when "0101" => F <= "0100100";
when "0110" => F <= "0100000";
when "0111" => F <= "0001111";
when "1000" => F <= "0000000";
when "1001" => F <= "0000100";
when others => F <= "0000000";
end case;
end process DISPLAY;
end ale;