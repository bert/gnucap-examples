# Example 004.

Things That Can Go Wrong.

	.title VOLTAGE SOURCES IN PARALLEL
	V1 1 0 10.0
	V2 1 0 10.2
	.print dc v(1) i(V1) i(V2)
	.dc
	.end

Here we have V1 and V2 both driving the same node at about 10 volts.
Actually, V2 is very slightly higher than 10 volts so there will be
some argument between V1 and V2 as to exactly what the final voltage
at node 1 really is. You should see that huge currents are flowing
through the supplies (10,000 amps) just due to this small voltage
difference. Also note that gnucap does not throw in the towel and give
up, nor does it fail to converge... the answer that it gets for v(1)
is a compromise, halfway between the two sources.

What is does is introduce a slight imperfection in the voltage sources
so that they do have a small internal series resistor. This allows it
to make the best guess that it can in a difficult situation. How much is
this resistance? You can find out like so:

	gnucap
	options

Look at the value of the option called ``short'' (near the middle of
the block of options), this is the value (in ohms) of the internal
resistance of a voltage source. The ``u'' character means ``micro''
or 1e-6 so the default value of a short circuit is 1e-5 ohms. You
might decide that a different short circuit value is more appropriate
for running the above circuit so you can type (from the gnucap prompt):

	options short=0.5
	get eg4.ckt
	dc
	exit

Which should show you the same voltage (10.1) but now the current
has reduced to only one fifth of an Amp (still not small but a lot
more reasonable if you were building this with real supplies).
Other option values can be altered in much the same way and input
files can contain ``.options'' command lines in order to set these
options whenever the circuit is loaded.

