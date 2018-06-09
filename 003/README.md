# Example 003.

Other components that offer further possibilities are the current source
(any component with a name that begins with "I" is a current source) and the
dependent sources:

| first letter of name | output type | input type |
| -------------------- | ----------- | ---------- |
| E                    | voltage     | voltage    |
| F                    | current     | current    |
| G                    | current     | voltage    |
| H                    | voltage     | current    |

Each of these has a gain value expressing the relation between its
output and its input and they allow the modeling of linear amplifiers
and other such devices. As mentioned above, none of these components
understand time nor can they be used to represent a nonlinear device.

Thus, any network constructed from the components that have been seen
so far will be reducible to a Thevenin or Norton equivalent circuit
when considered from the point of view of one particular node and the
ground node 0.


	NETWORK OF RESISTORS AND DEPENDENT SOURCES
	*
	* Reduce this complicated collection of dependencies
	* down to a single Thevenin equivalent between node 2 and
	* the ground node 0
	*
	I1 1 4 2
	V1 1 0 5
	E1 5 2 1 3 0.4
	F1 5 6 R1 3e-2
	G1 2 3 4 6 1.3
	H1 3 0 R3 1
	R1 4 5 2.2
	R2 1 2 470
	R3 0 2 330
	R4 3 6 1k
	R5 5 6 1e4
	*
	* Look at the voltage at node 2 and the impedance looking into node 2
	*
	.print dc v(2) z(2)
	.dc
	.end

Notice that this example file contains some lines that begin with a dot.
These are command lines and behave exactly like the commands you type
in interactive mode. These command lines are dotted because of the old
SPICE tradition of executing all of the component lines first and then
the command lines, gnucap doesn't bother with this, it executes every line
in the order that it sees them, but it still follows the old idea of dotting
the command lines as a little tribute to SPICE and to make it easier to
see what is going on when you read a .ckt file.

When you run this example, you might try:

	gnucap -b eg3.ckt

And (all going well) you will see that node 2 is equivalent to a
source of 54.343 volts in series with an 0.83888 ohm resistor.
You should also notice that gnucap never goes into interactive command mode.
This is because of the ".end" command that tells gnucap to finish at this point.
You may want to use this example circuit in interactive mode, to achieve this
you could either delete the .end command, or (from the system prompt) type:

	gnucap
	get eg3.ckt

Then you can use other interactive commands. Note that you can modify the
circuit interactively too. Consider adding another resistor by typing the
following at the gnucap interactive prompt:

	build R3
	R6 3 4 12k
	<blank line>

Which allows you to adjust the topology of the circuit in memory. This
includes adding components and modifying existing components. You can
interactively remove components from the circuit using the "delete" command
or you can wipe out the entire circuit using the "clear" command.
To put the adjusted topology into a file you use the save command:

	save eg3_mod.ckt
	quit
	cat eg3_mod.ckt

Looking at what you have saved you will probably notice a few things:
firstly, gnucap has remembered your comment lines and command lines and
saved them too; secondly, your extra line was inserted into the file
before the line containing component "R3", this is caused by the
argument on the "build" command and allows you to insert your build
lines where you want them.

