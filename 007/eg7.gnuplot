set style data lines

set terminal png

set output "eg7_1.png"
plot 'eg7_1.dat' using 1:2 title "V(3)", \
     'eg7_1.dat' using 1:3 title "V(2)", \
     'eg7_1.dat' using 1:4 title "V(E1.X1)", \
     'eg7_1.dat' using 1:5 title "V(E2.X1)", \
     'eg7_1.dat' using 1:6 title "V(E3.X1)"
set output "eg7_2.png"
plot 'eg7_2.dat' using 1:2 title "V(3)", \
     'eg7_2.dat' using 1:3 title "V(2)"
set output "eg7_3.png"
plot 'eg7_3.dat' using 1:2 title "V(3)", \
     'eg7_3.dat' using 1:3 title "V(2)"

# set output back to default
set output

# reset terminal type
set terminal pop

