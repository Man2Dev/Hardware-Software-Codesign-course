LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.ALL;
----------------------------------------------------------------------------------
ENTITY MEM IS
    PORT (
        ADDRESS : IN STD_LOGIC_VECTOR (5 DOWNTO 0);
        DATA : OUT STD_LOGIC_VECTOR (5 DOWNTO 0));
END MEM;
----------------------------------------------------------------------------------
ARCHITECTURE Behavioral OF MEM IS
    ----------------------------------------------------------------------------------
    TYPE mem_array IS ARRAY(0 TO 63) OF STD_LOGIC_VECTOR(5 DOWNTO 0);
    CONSTANT ROM : mem_array := (
        --------------TEST Loop (second part of project) ----------------------
        "000011", --Load R0
        "001000", --8
        "000111", --Load R1
        "000101", --5
        "001000", -- Load R2
        "000000", -- 0
        "011000", -- Add R2 R0
        "000011", -- Load R0
        "000000", -- 0
        "010001", -- Add R0 R1
        "000111", -- Load R1
        "000000", -- 0
        "010110", -- Add R1 R2
        "000000", --HLT
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000",
        "000000"
    );
    ----------------------------------------------------------------------------------
BEGIN
    ----------------------------------------------------------------------------------
    pr : PROCESS (ADDRESS)
    BEGIN
        DATA <= ROM(to_integer(unsigned(ADDRESS(5 DOWNTO 0))));
    END PROCESS; -- pr
    ----------------------------------------------------------------------------------
    ----------------------------------------------------------------------------------
END Behavioral;