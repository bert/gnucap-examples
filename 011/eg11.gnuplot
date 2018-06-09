set style data lines

set terminal png

set output "eg11_1.png"
plot 'eg11.dat' using 1:2 title "I(L1)", \
     'eg11.dat' using 1:3 title "V(2)", \
     'eg11.dat' using 1:4 title "V(3)"

set output "eg11_2.png"
plot 'eg11.dat' using 1:5 title "V(5)"

# set output back to default
set output

# reset terminal type
set terminal pop

