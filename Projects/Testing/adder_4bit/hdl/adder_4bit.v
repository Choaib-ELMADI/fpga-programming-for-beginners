library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity adder_4bit is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Sum : out  STD_LOGIC_VECTOR (3 downto 0);
           Carry : out  STD_LOGIC );
end adder_4bit;

architecture Behavioral of adder_4bit is
begin
    process(A, B)
    begin
        variable temp : STD_LOGIC_VECTOR(4 downto 0);
        temp := ('0' & A) + ('0' & B);
        Sum <= temp(3 downto 0);
        Carry <= temp(4);
    end process;
end Behavioral;
