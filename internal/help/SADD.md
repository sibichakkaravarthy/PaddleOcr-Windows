The **SADD** function returns the address of a [STRING](STRING) variable as an offset from the current data segment.

## Syntax

> SADD(stringvariable)

* The argument may be a simple string variable or a single element of a string array. You may not use fixed-length strings.
* Use this function carefully because strings can move in the BASIC string space storage area at any time.
* Adding characters may produce a run-time error. Don't add characters to the ends of parameters.

## See Also
 
* [VARSEG](VARSEG), [VARPTR](VARPTR), [DEF SEG](DEF-SEG)
