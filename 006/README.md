# Example 006.

Nonlinear Devices - Diodes.

All of the previous circuits have been linear. This is to say that all
the devices (voltage sources, current sources, dependent source and
resistors) are linear devices and the overall ``shape'' of the problem
does not change as the values of the system are scaled up or down.
For example, if a circuit is solved once, then after that all of the voltage
sources in the circuit are doubled, the circuit doesn't need to be solved
a second time because all the node voltages will merely be double those
of the first solution. Try it yourself if you disbelieve.

Linear circuits also obey the principle of ``superposition'' which is
to say that the circuit can be solved for each source separately and
then all of those solutions can be added up to get the solution of a
circuit containing many sources. A textbook in basic circuit theory will
explain superposition in linear circuits and you can try working through
the textbook examples on the simulator using what has been explained so far.

At this point, we take the step into nonlinear circuits which do NOT
obey superposition and do NOT scale. The most elementary nonlinear
component is a diode.

	.title DIODE CASCADE
	.model 1N4148 D IS=2e-14
	Vcc 1 0 5
	Dx 1 10 1N4148
	Dy 10 20 1N4148
	Dz 20 30 1N4148
	Rd1 10 0 1k
	Rd2 20 0 1k
	Rd3 30 0 1k
	.print dc v(10) v(20) v(30)
	.dc Vcc 0 5 0.5
	.end

You can run this example and look at the results like so:

	gnucap -b eg6.ckt
	gnuplot
	set data style lines
	plot 'eg6.dat' using 1:2, 'eg6.dat' using 1:3, 'eg6.dat' using 1:4
	exit

You may not like using gnuplot and may prefer some other plotting program
such as gwave or gle. Gnucap output can be used by most plotting programs
in much the same manner as above by using the redirection arrow on the
command that runs the simulation (``dc'' in this case). Note that it usually
won't work to redirect the normal output to a file using your shell and then
cut and paste that output into your plotting program because the normal output
does not use standard scientific notation, using the internal redirection
option provided by gnucap also guarantees you get a nice, portable data file
in standard exponential notation.

If the above did work you should have been able to see the node voltages
as a function of supply voltage and see the diodes move into their conductive
band one by one. And see the traditional 0.7 volt drop across each diode.
However, various diodes behave differently so gnucap needs to know what sort
of diode you are using. That is what the ``.model'' command line is doing
for you -- it associated parameters in the diode model with a name that
you choose to assign to your diodes. (By the way, I have no idea what the
true measured parameters are for a real 1N4148).

