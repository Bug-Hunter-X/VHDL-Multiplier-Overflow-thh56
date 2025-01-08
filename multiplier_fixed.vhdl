```vhdl
ENTITY multiplier_fixed IS
  PORT ( 
    clk : IN STD_LOGIC; 
    a : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
    b : IN STD_LOGIC_VECTOR(7 DOWNTO 0); 
    result : OUT STD_LOGIC_VECTOR(15 DOWNTO 0); 
    overflow : OUT STD_LOGIC 
  ); 
END ENTITY;

ARCHITECTURE behavioral OF multiplier_fixed IS
  SIGNAL product : UNSIGNED(15 DOWNTO 0) := (OTHERS => '0');
BEGIN
  PROCESS (clk) 
  BEGIN 
    IF rising_edge(clk) THEN 
      IF (UNSIGNED(a) * UNSIGNED(b)) > 2**15 - 1 THEN  -- Overflow check
        overflow <= '1'; 
        product <= (OTHERS => '0');  -- Or handle it appropriately 
      ELSE
        overflow <= '0';
        product <= UNSIGNED(a) * UNSIGNED(b); 
      END IF; 
    END IF; 
  END PROCESS; 
  result <= STD_LOGIC_VECTOR(product); 
END ARCHITECTURE;
```