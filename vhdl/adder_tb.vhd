use std.textio.all;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_textio.all;

entity adder_tb is
end adder_tb;

architecture sim of adder_tb is
    constant RUNNING_time : time := 1000 ns;
    constant clk_hz : integer := 100000000;
    constant clk_period : time := 1 sec / clk_hz;
    constant N : integer := 8; --N bit

    signal clk : std_logic := '1';
    signal rst : std_logic := '0';
    signal A : std_logic_vector(N-1 downto 0) :=x"0A";
    signal B : std_logic_vector(N-1 downto 0) :=x"0B";
    signal S : std_logic_vector(N-1 downto 0) :=x"00";
    signal S2 : std_logic_vector(N-1 downto 0):=x"00";
    signal CO1 : std_logic := '0';
    signal CO2 : std_logic := '0';
    
    begin

    
    DUT : entity work.fulladder1(behav)
    generic map(N => N)
    port map (
        clk => clk,
        rst => rst,
        A => A,
        B => B,
        S => S,
        Cout => CO1
        );
        
    DUT2 : entity work.fulladder2(behav)
    generic map( N => N)
    port map (
    clk => clk,
    rst => rst,
    A => A,
    B => B,
    S => S2,
    Cout => CO2
    );

                    
Reading_text : process is
    file stimulus_file : text open read_mode is "input.csv";
    file out_file : text open write_mode is "output.csv";
    variable text_line : line;
    variable data : integer;
    variable int: integer;
    variable com:character;
    variable wait_time : time;
    
    begin 
    rst <= '1';
    while not endfile(stimulus_file) loop
    		readline(stimulus_file,text_line);
            read(text_line, int);
            wait_time := int*1 ns;
            read(text_line, com);
            read(text_line, data);
    		A<=std_logic_vector(to_unsigned(data, A'length));
            wait for wait_time;
    		read(text_line,com);
    	    read(text_line,data);	
    		B<=std_logic_vector(to_unsigned(data, B'length));
    		wait for wait_time;
            int := to_integer(unsigned(S));
            write(text_line,int);
            write(text_line,com);
            -- int := CO1;
            write(text_line,CO1);
            write(text_line,com);
            int := to_integer(unsigned(S2));
            write(text_line,int);
            write(text_line,com);
            -- int := CO2;
            write(text_line,CO2);
            writeline(out_file,text_line);
            wait for wait_time;
    end loop;

    wait;

end process Reading_text;

end architecture;