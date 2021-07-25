library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ADD1 is
	port
	(
		-- Input ports
		a		: in std_logic;
		b		: in std_logic;
		cin	: in std_logic;
		
		-- Output ports
		f		:	out std_logic;
		cout	:	out std_logic
	);
end;

architecture add1 of ADD1 is
begin
	f 		<= a xor b xor cin;
	cout 	<= (a and b) or (cin and(a or b));
end;

