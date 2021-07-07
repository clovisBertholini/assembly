Question 1

It is time to make a first research based on the documentation [Intel 64 and IA-32 Architectures Software Developer's Manual]. 
Refer to the section 3.4.3 of the first volume to learn about register rflags. What is the meaning of flags CF, AF, ZF, OF, SF? 
What is the difference between OF and CF?

Answer

(a) Meaning of flags

3.4.3.1  Status Flags
The status flags (bits 0, 2, 4, 6, 7, and 11) of the EFLAGS register indicate the results of arithmetic instructions, such as the ADD, SUB, MUL, and DIV 
instructions. The status flag functions are:

CF (bit 0) Carry flag — Set if an arithmetic operation generates a carry or a borrow out of the most-significant bit of the result; cleared otherwise. 
This flag indicates an overflow condition for unsigned-integer arithmetic. It is also used in multiple-precision arithmetic.

PF (bit 2) Parity flag — Set if the least-significant byte of the result contains an even number of 1 bits; cleared otherwise.

AF (bit 4) Auxiliary Carry flag — Set if an arithmetic operation generates a carry or a borrow out of bit 3 of the result; cleared otherwise. 
This flag is used in binary-coded decimal (BCD) arithmetic.

ZF (bit 6) Zero flag — Set if the result is zero; cleared otherwise.

SF (bit 7) Sign flag — Set equal to the most-significant bit of the result, which is the sign bit of a signed integer. (0 indicates a positive value and 1 indicates 
a negative value.)

OF (bit 11) Overflow flag — Set if the integer result is too large a positive number or too small a negative number (excluding the sign-bit) to fit in the 
destination operand; cleared otherwise. This flag indicates an overflow condition for signed-integer (two’s complement) arithmetic.

(b) Difference between OF and CF

If the result of an arithmetic operation is treated as an unsigned integer, the CF flag indicates an out-of-range condition (carry or a borrow); if treated 
as a signed integer (two’s comple-ment number), the OF flag indicates a carry or borrow. In other words, CF works with unsigned integers and OF works with signed
integers.
