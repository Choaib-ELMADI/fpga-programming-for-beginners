library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity tb_adder_4bit is
-- Testbench has no ports
end tb_adder_4bit;

architecture Behavioral of tb_adder_4bit is
    -- Signal declarations for testbench
    signal A, B : STD_LOGIC_VECTOR (3 downto 0);
    signal Sum : STD_LOGIC_VECTOR (3 downto 0);
    signal Carry : STD_LOGIC;

    -- Component declaration for the unit under test (UUT)
    component adder_4bit
        Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
               B : in  STD_LOGIC_VECTOR (3 downto 0);
               Sum : out  STD_LOGIC_VECTOR (3 downto 0);
               Carry : out  STD_LOGIC );
    end component;

begin
    -- Instantiate the UUT
    uut: adder_4bit Port Map (
        A => A,
        B => B,
        Sum => Sum,
        Carry => Carry
    );

    -- Stimulus process
    stim_proc: process
    begin
        -- Test case 1
        A <= "0001"; B <= "0001";
        wait for 10 ns;
        assert (Sum = "0010" and Carry = '0') report "Test case 1 failed" severity error;

        -- Test case 2
        A <= "0110"; B <= "0101";
        wait for 10 ns;
        assert (Sum = "1011" and Carry = '0') report "Test case 2 failed" severity error;

        -- Test case 3 (with carry)
        A <= "1111"; B <= "0001";
        wait for 10 ns;
        assert (Sum = "0000" and Carry = '1') report "Test case 3 failed" severity error;

        -- Add more test cases as needed

        wait;
    end process;
end Behavioral;
