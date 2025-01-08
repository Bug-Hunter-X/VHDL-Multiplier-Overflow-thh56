```vhdl
ENTITY multiplier IS
  PORT ( 
    clk : IN STD_LOGIC; 
    a : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
    b : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
    result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) 
  ); 
END ENTITY;

ARCHITECTURE behavioral OF multiplier IS
  SIGNAL product : UNSIGNED(15 DOWNTO 0) := (OTHERS => '0');
BEGIN
  PROCESS (clk) 
  BEGIN 
    IF rising_edge(clk) THEN 
      product <= UNSIGNED(a) * UNSIGNED(b); 
    END IF; 
  END PROCESS; 
  result <= STD_LOGIC_VECTOR(product); 
END ARCHITECTURE;
```