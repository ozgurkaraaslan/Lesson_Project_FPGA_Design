library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 

entity block_design_tb is 
end block_design_tb; 

architecture Behavioral of block_design_tb is 
   component design_1_wrapper is 
	port (
            clk : in STD_LOGIC;
            ena : in STD_LOGIC;
            wea : in STD_LOGIC_VECTOR ( 0 to 0 );
            interrupt : in STD_LOGIC;
            interrupt_ack : out STD_LOGIC;
            write_strobe : out STD_LOGIC;
            k_write_strobe : out STD_LOGIC;
            read_strobe : out STD_LOGIC
           ); 
   end component design_1_wrapper; 

    signal clk : STD_LOGIC; 
    signal ena : STD_LOGIC; 
    signal wea : STD_LOGIC_VECTOR ( 0 to 0 ); 
    signal interrupt : STD_LOGIC; 
    signal interrupt_ack : STD_LOGIC; 
    signal write_strobe : STD_LOGIC; 
    signal k_write_strobe : STD_LOGIC; 
    signal read_strobe : STD_LOGIC; 


begin 
    uut: design_1_wrapper
        port map(  clk => clk, 
                   ena => ena, 
                   wea => wea,
                   interrupt => interrupt, 
                   interrupt_ack => interrupt_ack,
                   write_strobe => write_strobe,
				   k_write_strobe => k_write_strobe,
                   read_strobe => read_strobe
                ); 
    process 
    begin 
        clk <= '0'; wait for 5ns; 
        clk <= '1'; wait for 5ns; 
    end process; 
    
end Behavioral; 
