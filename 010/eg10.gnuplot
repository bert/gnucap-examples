set term png

set output "eg10.png"

set style data lines

plot 'eg10.dat' using 1:2 title "I(L1)", \
     'eg10.dat' using 1:3 title "V(1)"

# set output back to default
set output

# reset terminal type
set terminal pop

