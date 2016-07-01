set term png
set output "eg6.png"
set ylabel "Output Voltage [V]"
set xlabel "Input Voltage [V]"
set yrange [0:5]
set style data lines
plot 'eg6.dat' using 1:2 title "V(2)", 'eg6.dat' using 1:3 title "V(3)", 'eg6.dat' using 1:4 title "V(4)"
replot
# set output back to default
set output
# reset terminal type
set terminal pop

