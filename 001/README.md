# Example 001.

The simplest possible circuit file: single resistor driven by a voltage
source:

	Vsupply 0 2 10
	R1 0 2 1k

This file defines a circuit containing two nodes and two components.
The components have the names ``Vsupply'' and ``R1'', the first letter of
the component name tells what that component is so ``Vsupply'' is a voltage
source and ``R1'' is a resistor. Each component has a value, the voltage
source is 10 volts and the resistor is 1000 ohms. The nodes have the
numbers ``0'' and ``2''. Note that there is no node ``1'' but this doesn't
matter, not every node number needs to be used. Like SPICE version 2 (but
unlike version 3) nodes must be numbered in gnucap.

In order to load this circuit into the simulator the following command
would be used:

	gnucap -b eg1.ckt

What happens is that gnucap loads in the circuit, finds no commands to execute
(since this file has no command lines) and so enters interactive mode with
a ``-->'' prompt. From the interactive mode it is possible to exercise the
circuit model, firstly by putting a probe on the node that needs measuring
(using the print statement) then by starting the simulation:

	print dc v(2)
	dc

Needless to say, ``dc'' is a steady state direct current analysis and
the ``print'' command used here is saying, ``when you do a DC analysis,
tell me the voltage at node 2''. The result should be -10 volts. At
first glance, it might seem like it should be 10 volts... but (same as SPICE)
the voltage sources are listed with their positive terminal first, then
their negative terminal. Node 0 is the ground node (or reference node) which
is always 0 volts so node 2 is at -10 volts. Wiring ``Vsupply'' the other way
around would change the answer to 10 volts. Things get trickier when dealing
with current sources where the node at the tail end of the current source
arrow is listed first (and called ``+'') and the pointy head end of the arrow
is listed second (and called ``-''). Although this convention may seem
disorienting to someone who was brought up testing their circuits with
batteries or a bench power supply and poking their meter probes into things,
it is a well established SPICE convention and probably never going to change.

However, the voltage of the node may not be the answer required. What about
the current going through the source? We can move our probe to look at
current instead:

	print dc i(R1) i(Vsupply)
	dc

Now we can see 10 milliamps going through both components, note the sign
convention when probing current; once more this is something that you must
simply learn, you might draw diagrams of the main components and mark the
important conventions of [+] terminal, [-] terminal and current flow.
You might also realise that this convention does have its own logical
consistency which makes it easier to remember. For example, consider a
resistor: the terminal called [+] is listed first and the internal current
flow is positive when current flows into the [+] terminal, through the
resistor and out of the [-] terminal. In the case of a resistor this sounds
quite sensible because the [+] terminal WOULD be more positive when
the current flows in this manner. The sources merely maintain the same
convention as is applied to a resistor, what is important to remember is
that [+] and [-] terminals are just names that provide a sign convention
they don't insist that one terminal is a higher voltage than the other.

This example should provide enough information for analysis of any network
of voltage sources and resistors and for inspection of any current or voltage
in such a circuit. The power and resistance of each component can be measured:

	print dc p(R1) p(Vsupply) r(R1) r(Vsupply)
	dc
	quit

Note that the supply shows negative power to it is putting power into
the system while the resistor shows positive power meaning that it is
taking power out of the system. Also notice that the resistance measurement
will attempt to find the resistance of the source without error but the
resulting value is huge (this seems wrong, I would expect it to be zero).

