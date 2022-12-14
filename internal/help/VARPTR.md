The **VARPTR** function returns an [INTEGER](INTEGER) value that is the offset part of the variable or array memory address within it's segment. 

## Syntax

> offset% = VARPTR(variable_name[(reference_index%)])

* If variablename is not defined before VARPTR or [VARSEG](VARSEG) is called, the variable is created and it's address is returned.
* Reference index is used to set the offset address of an array index, not necessarily the lowest index.
* When a string variable, VARPTR returns the offset address location of the first byte of the string.
* Because many QBasic statements change the locations of variables in memory, use the values returned by VARPTR and VARSEG immediately after the functions are used!
* Integer array sizes are limited to 32767 elements when using [VARPTR](VARPTR) in QB and **QB64**!. Create a larger array using [_BYTE](_BYTE). Example: [DIM](DIM) [SHARED](SHARED) Memory (65535) AS [_UNSIGNED](_UNSIGNED) [_BYTE](_BYTE)
* **Warning: DEF SEG, VARSEG , VARPTR, PEEK or POKE access QB64's emulated 16 bit conventional memory block!** 
> **It is highly recommended that QB64's [_MEM](_MEM) memory system be used to avoid running out of memory.**

## See Also

* [BSAVE](BSAVE), [BLOAD](BLOAD)
* [SADD](SADD),  [DEF SEG](DEF-SEG)
* [VARPTR$](VARPTR$), [VARSEG](VARSEG),
* [POKE](POKE), [PEEK](PEEK)
