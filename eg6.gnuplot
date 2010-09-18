set style data lines
plot 'eg6.dat' using 1:2, 'eg6.dat' using 1:3, 'eg6.dat' using 1:4
set terminal postscript eps color
set output "eg6.ps"
replot
# set output back to default
set output
# reset terminal type
set terminal pop

