library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity adder_4bit is
  port
  (
    A     : in std_logic_vector  (3 downto 0);
    B     : in std_logic_vector  (3 downto 0);
    Sum   : out std_logic_vector (3 downto 0);
    Carry : out std_logic
  );
end adder_4bit;

architecture Behavioral of adder_4bit is
begin
  process (A, B)
  begin
    variable temp : std_logic_vector(4 downto 0);
    temp := ('0' & A) + ('0' & B);
    Sum   <= temp(3 downto 0);
    Carry <= temp(4);
  end process;
end Behavioral;
