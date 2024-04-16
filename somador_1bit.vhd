
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY somador_1bit IS
  PORT (
 A,B : IN STD_LOGIC;
 carry_in : IN STD_LOGIC;
 carry_out : OUT STD_LOGIC;
 sum : OUT STD_LOGIC
       );
END somador_1bit;


ARCHITECTURE Behavioral OF somador_1bit IS

BEGIN

sum <= ( A xor B xor carry_in);
carry_out <= (A and B) or (A and carry_in) or (carry_in and B);


END Behavioral;


