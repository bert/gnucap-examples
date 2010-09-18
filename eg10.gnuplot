set style data lines
set terminal postscript eps color
set output "eg10.ps"
plot 'eg10.dat' using 1:2, 'eg10.dat' using 1:3
# set output back to default
set output
# reset terminal type
set terminal pop

