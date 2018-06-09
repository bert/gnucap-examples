# Example 007.

Multiplying Two Voltages Using Diode Nonlinearity

The above example shows diode voltage drop behaviour but the diode can
also be used as an exponential function. In this example, a group of
diodes are used to construct a voltage multiplier. Most circuit components
add and subtract voltages and currents but multiplication is a bit special.
What is done in this circuit is to use the exponential behaviour of the
diodes to take the logarithm of two input voltages, then add those up and
use another diode to find the exponential of the sum. This works in the same
way as a slide rule does.

	.title MULTILPLY TWO NUMBERS
	.subckt multiplier 1 2 3
	* 1 = input A (voltage)
	* 2 = input B (voltage)
	* 3 = output (voltage)
	* Note that there are scaling factors on inputs and output to keep
	* diodes in the exponential region.
	.model dexp D EG=0 CJ=0 FC=0 gparallel=0
	G1 0 4 1 0 1e-3
	D1 4 0 dexp
	G2 0 5 2 0 1e-3
	D2 5 0 dexp
	I3 0 6 1
	D3 6 0 dexp
	E1 7 0 4 0 1
	E2 8 7 5 0 1
	E3 8 9 6 0 1
	V1 9 10 0
	D4 10 0 dexp
	H1 3 0 V1 1e6
	.ends
	V1 1 0 0
	V2 2 0 0.5
	X1 1 2 3 multiplier
	R1 3 0 1
	.options vmin=-1e5 vmax=1e5
	.print dc V(3) V(2) V(E1.X1) V(E2.X1) V(E3.X1)
	.!rm eg7_1.dat eg7_2.dat eg7_3.dat
	.dc v1 0 1 0.01 > eg7_1.dat QUIET
	.modify V2=100
	.dc v1 0 1 0.01 > eg7_2.dat QUIET
	.dc v1 0 1000 1 > eg7_3.dat QUIET
	.end

This example does not attempt to go beyond the multiplication of two
numbers, using the DC sweep to test a few ranges of the inputs.
The output files can be plotted to check the linearity of the outputs.
If you wanted to build a real circuit to perform analog multiplication,
you would need something a lot more complex than the above example
because the dependent voltage and current sources used in this example
would not be possible to construct in a real circuit.

Even with those ideal simulator components available, this example will
still only multiply correctly within a limited range. Using it outside
that range requires adjustment of the input and output scaling factors
so that the diodes themselves stay close to exponential functions.

This example introduces the concept of a subcircuit which is like a macro
facility for circuit simulation. The subcircuit is contained between the
``.subckt'' and ``.ends'' lines and nodes within the subcircuit can use their
own numbering, independent of the outside world. The subcircuit gets a
name (in this case ``multiplier'') and the component ``X1'' becomes an
instance of that subcircuit. Note the way that probes can be put on devices
inside the subcircuit, for example ``E1.X1'' refers to the sub-component
named ``E1'' inside the subcircuit ``X1''.

Another new command here is ``.modify''. In this example, we want to test
the multiplier on a few DC sweeps but want to change the value of ``V2''
between the sweeps. This allows a single batch run to test multiple
possibilities, or it can also be used interactively to trim a component
value into the value that gives the desired operating point.

