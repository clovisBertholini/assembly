Question 5

What are the interrupts?

Answer

	Interrupts are the way to change the order of execution of a program by an external event of this program. After a signal
(internal or external) is caught, a program's execution is suspended, some registers are saved and the CPU starts executing a special
routine to handle the situation. For exaples:

	(a) A signal from an external device (external signal);
	(b) Zero division (internal signal);
	(c) Invalid instruction (when the CPU failed to recognize an instruction by its binary representation - internal signal);
	(d) An attempt to execute a privileged instruction in a non-privileged mode (internal signal).
