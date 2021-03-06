# Example 005.

Current Sources in Series.

	.title CURRENT SOURCES IN SERIES
	I1 0 1 2.0001
	I2 1 0 2.0
	.print dc v(1) i(I1) i(I2)
	.dc
	.end

The case of putting two current sources in series is much the same
concept as two voltage sources in parallel. However notice that gnucap
copes with it in a different manner. It cannot find a compromise current
that is partway between the two sources and it always gives a huge
value for the voltage at node 1. At least it doesn't crash and it does
give results that give some suggestion as to where the problem might
be. There is no option that introduces resistance into a current
source but you can explicitly add these resistors if you like by putting
the resistor in parallel with the current source.

What if you had a big, complex circuit, you messed up by putting
two current sources in series but you never thought about checking
the strange node? How would you ever know that the circuit was broken?
Try this exercise:

	gnucap
	get eg5.ckt
	alarm dc v(*)(-1e3,1e3)
	dc
	quit

Now you get a warning whenever any component gets more that 1000 volts
across it. This can be used to test component breakdown if you know
that you are using components that cannot tolerate high voltages. It can
also be used to ensure that your simulated circuit stays within what you
might expect to be the absolute maximum values.

