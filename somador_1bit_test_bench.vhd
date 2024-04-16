
LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY somador_1bit_test_bench IS 
END somador_1bit_test_bench;

ARCHITECTURE behavior OF somador_1bit_test_bench IS 

	COMPONENT somador_1bit
	PORT(
		a : IN std_logic;
		b : IN std_logic;
		carry_in : IN std_logic;
		sum : OUT std_logic;
		carry_out : OUT std_logic
		);
	END COMPONENT; 

	--Inputs
	signal a : std_logic := '0';
	signal b : std_logic := '0';
	signal carry_in : std_logic := '0';
	--Outputs 
	signal sum : std_logic;
	signal carry_out : std_logic; 

BEGIN 

	uut: somador_1bit PORT MAP (
		a => a,
		b => b,
		carry_in => carry_in,
		sum => sum,
		carry_out => carry_out
		);

	--Stimulus process
	stim_proc : process 
	begin 
		--hold reset state for 100ns 
		-- Aqui colocamos as possibilidades que queremos testar na simulação 
		wait for 100 ns;
		a <= '0';
		b <= '0';
		carry_in <= '0';
		wait for 100 ns;
		a <= '1';
		b <= '0';
		carry_in <= '0';
		wait for 100 ns;
		a <= '0';
		b <= '1';
		carry_in <= '0';
		wait for 100 ns;
		a <= '1';
		b <= '1';
		carry_in <= '1';

		wait;
	end process; 

END; 