set style data lines
set terminal postscript eps color
set output "eg7_1.ps"
plot 'eg7_1.dat' using 1:2, 'eg7_1.dat' using 1:3, 'eg7_1.dat' using 1:4, 'eg7_1.dat' using 1:5, 'eg7_1.dat' using 1:6
set output "eg7_2.ps"
plot 'eg7_2.dat' using 1:2, 'eg7_2.dat' using 1:3
set output "eg7_3.ps"
plot 'eg7_3.dat' using 1:2, 'eg7_3.dat' using 1:3
# set output back to default
set output
# reset terminal type
set terminal pop

