DATA SEGMENT                
    Multiplier DW  13B7H;   The Multiplier is loaded into the data segment
    Multiplicand DW 213CH;  The Multiplicand is loaded into the data segment
    Result DD 00000000H;    The Result is initialised to 00000000H
DATA ENDS

CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:
    MOV AX,DATA;            The starting address is loaded into the AX register
    MOV DS,AX;              The starting address of the segment is loaded into DS
    MOV AX,[Multiplier];    The Multiplier from the DATA segment is loaded into AX
    MOV BX,[Multiplicand];  The Multiplicand from the DATA segment is loaded into BX
    MUL BX;                 Multiplication of data inside AX and BX 
    MOV [Result],AX;        The lower word of the result from the AX register is stored
    MOV [Result+2],DX;      The higher word of the result from the DX register is stored
    HLT
CODE ENDS
END START