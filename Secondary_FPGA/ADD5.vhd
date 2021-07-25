library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ADD5 is
	port
	(
		-- Input ports
		a	:	in std_logic_vector(4 downto 0);
		b	:	in std_logic_vector(4 downto 0);
		c0	:	in std_logic;
		
		-- Output ports
		f	:	out std_logic_vector(4 downto 0);
		c5	: 	out std_logic
	);
end;

architecture add5 of ADD5 is
	 signal carryVector : std_logic_vector(5 downto 0);
begin
	carryVector(0) <= c0;
	c5 				<= carryVector(5);
	
	add10 : entity work.add1 port map(
		--input signals
		a		=>	a(0),
		b		=>	b(0),
		cin	=> carryVector(0),
		
		--output signals
		f		=> f(0),
		cout	=> carryVector(1)
	);
	
	add11 : entity work.add1 port map(
		--input signals
		a		=>	a(1),
		b		=>	b(1),
		cin	=> carryVector(1),
		
		--output signals
		f		=> f(1),
		cout	=> carryVector(2)
	);
	
	add12 : entity work.add1 port map(
		--input signals
		a		=>	a(2),
		b		=>	b(2),
		cin	=> carryVector(2),
		
		--output signals
		f		=> f(2),
		cout	=> carryVector(3)
	);
	
	add13 : entity work.add1 port map(
		--input signals
		a		=>	a(3),
		b		=>	b(3),
		cin	=> carryVector(3),
		
		--output signals
		f		=> f(3),
		cout	=> carryVector(4)
	);
	
	add14 : entity work.add1 port map(
		--input signals
		a		=>	a(4),
		b		=>	b(4),
		cin	=> carryVector(4),
		
		--output signals
		f		=> f(4),
		cout	=> carryVector(5)
	);
end;

