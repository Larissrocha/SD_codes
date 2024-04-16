
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY somador_4bits IS
  PORT (
 a,b : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
 carry_in : IN STD_LOGIC;
 carry_out : OUT STD_LOGIC;
 sum : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
       );
END somador_4bits;


ARCHITECTURE Behavioral OF somador_4bits IS

SIGNAL carry: STD_LOGIC_VECTOR(3 DOWNTO 0);

COMPONENT somador_1bit PORT (
	a,b : IN STD_LOGIC;
	carry_in : IN STD_LOGIC;
	carry_out : OUT STD_LOGIC;
	sum : OUT STD_LOGIC
	);
END COMPONENT somador_1bit;

BEGIN

	somador0: somador_1bit PORT MAP ( a(0), b(0), carry_in, carry(0),  sum(0)  );  
	somador1: somador_1bit PORT MAP ( a(1), b(1), carry(0), carry(1),  sum(1)  ); 
	somador2: somador_1bit PORT MAP ( a(2), b(2), carry(1), carry(2),  sum(2)  ); 
	somador3: somador_1bit PORT MAP ( a(3), b(3), carry(2), carry_out, sum(3)  ); 

END Behavioral;