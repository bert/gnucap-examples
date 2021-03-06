# Example 002.

Networks of Resistors and Sources

The previous example covers enough concepts to model arbitrarily complex
networks of resistors and sources. These are essentially linear circuits
that have no relation to time.

A more elaborate example is presented below:

	.title NETWORK OF RESISTORS AND VOLTAGE SOURCES
	V1 2 1 10
	V2 4 3 5
	V3 0 3 3
	R1 1 2 220
	R2 2 3 4.7k
	R3 4 5 3k3
	R4 3 5 10k
	R5 0 1 22k
	R6 0 5 15k

Run this with:

	gnucap -b eg2.ckt
	print dc v(1) v(2) v(3) v(4) v(5)
	dc
	quit

Note that this is about the limit of what can be done with these two
components.

