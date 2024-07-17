set style data lines

set terminal png

set output "eg12.png"
set title "Ic = f(Vce) at Ib = 10 uA"
set key left

# setup Y-axis
# set yrange [-0.1:0.1]
set grid ytics lt 1 lw 1 lc rgb "#bbbbbb"
set mytics
set ylabel "Ic [A]"

# setup X-axis
set grid xtics lt 1 lw 1 lc rgb "#bbbbbb"
set mxtics
set xlabel "Vce [V]"

# setup plot style
set style data lines
plot 'eg12.dat' using 2:3 title ""

# set output back to default
set output

# reset terminal type
set terminal pop

