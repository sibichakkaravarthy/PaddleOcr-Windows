Bitwise operators are much like the regular mathematics operators (+, * etc.) but are defined in terms of the individual bits of their operands. The full list of bitwise operators, with a brief summary of its operation:

* AND: True if both inputs are true
* OR: True if one or both inputs are true
* NOT: Invert all bits
* XOR: True if exactly one input is true
* IMP: True if both inputs are the same
* EQV: True unless first input is true and second is false

## Syntax

With the exception of NOT, all the bitwise operators take two operands:

`result = value1 AND value2`

NOT goes before the value it operates on:

`result = NOT value1`

If *value1* or *value2* are non-integer numeric types, they are rounded to the nearest integer.

## Details

Bitwise operators work by comparing the corresponding bits in each of the input values to generate a single bit in the output value. The operators differ in how they do the comparison. The table below shows the output bit for each pair of input bits:

MISSING: Truth Table

Again, note that the NOT operator only has one operand. It is shown in the same table for convenience.

If one input has more bits than the other (say, an INTEGER vs a LONG) the shorter will be considered to have 0's in the missing bit positions if it is positive, or 1's if it is negative. This scheme comes about because of the [Two's Complement](https://en.wikipedia.org/wiki/Two%27s_complement) system for representing negative numbers. As a general rule, there should not be any surprises.

## Example(s)

Use **AND** to mask certain bits in a value. In this example, the 1's in the mask (y&) specify which bits in (x&) we are interested in, forcing all others to 0. 

```vb

x& = VAL("&B101010") 'Arbitrary collection of bits 
y& = VAL("&B001100") 'A bit mask 
PRINT "Input 1: "; BIN$(x&, 6) '6 indicates we want 6 bits of output 
PRINT "Input 2: "; BIN$(y&, 6)
PRINT "Output: "; BIN$(x& AND y&, 6)

'Converts the number n& to a string of binary digits, digits& long (padding or truncating as necessary). 

FUNCTION BIN$ (n&, digits&)
  FOR i& = digits& - 1 TO 0 STEP -1
    IF (n& AND 2 ^ i&) THEN B$ = B$ + "1" ELSE B$ = B$ + "0"
  NEXT
  BIN$ = B$
END FUNCTION

```

```text

Input 1: 101010
Input 2: 001100
Output:  001000

```

Use **OR** to combine bit flags into a single value. The presence of a flag can then be tested by using the flag as a mask with **AND**: 

```vb

'The trick here is to give each flag a value corresponding to a different bit being 1
FLAG_A& = VAL("&B0001") 
FLAG_B& = VAL("&B0010") 
FLAG_C& = VAL("&B0100") 
FLAG_D& = VAL("&B1000")

flags& = FLAG_A& OR FLAG_C& 'Set flags A, C

'Use each flag as a bitmask to test for its presence: 

IF flags& AND FLAG_A& THEN PRINT "Flag A is set" 
IF flags& AND FLAG_B& THEN PRINT "Flag B is set" 
IF flags& AND FLAG_C& THEN PRINT "Flag C is set" 
IF flags& AND FLAG_D& THEN PRINT "Flag D is set"

```

```text

Flag A is set
Flag C is set

```

Use **XOR** to toggle a bit flag (that is, change its state to the opposite of what it was). This example is the same as the **OR** example above, but with one extra line added. This time we enable flags A & C, then toggle flags A & B. This will disable flag A and enable B.

```vb

'The trick here is to give each flag a value corresponding to a different bit being 1
FLAG_A& = VAL("&B0001") 
FLAG_B& = VAL("&B0010") 
FLAG_C& = VAL("&B0100") 
FLAG_D& = VAL("&B1000")

flags& = FLAG_A& OR FLAG_C& 'Set flags A, C 
flags& = flags& XOR FLAG_A& XOR FLAG_B& 'Toggle flags A, B

'Use each flag as a bitmask to test for its presence: 

IF flags& AND FLAG_A& THEN PRINT "Flag A is set" 
IF flags& AND FLAG_B& THEN PRINT "Flag B is set" 
IF flags& AND FLAG_C& THEN PRINT "Flag C is set" 
IF flags& AND FLAG_D& THEN PRINT "Flag D is set" 

```

```text

Flag B is set
Flag C is set

```