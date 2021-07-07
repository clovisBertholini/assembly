Question 2

What are the key principles of von Neumann architecture?

Answer:

	(a) Memory stores only bits (a unit of information, a value equal 0 or 1)
	
	(b) Memory stores both encoded instructions and data to operate on. There are no means to distinguish data from code:
	both are in fact bit strings.
	
	(c) Memory is organized into cells, which are labeled with their respective indices in a natural way (for example, the 
	cell #43 follows the cell #42). The indices start at 0. Cell size may vary (Von Neumann thought that each bit should have
	its address). Moderns computers take one byte (eight bits) as a memory cell size. So, the 0-th byte holds the first eight
	bits os the memory.

	(d) The program consists of instructions that are fetched one after another. Their execution is sequential unless a special
	jump instruction is executed.
