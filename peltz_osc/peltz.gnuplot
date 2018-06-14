# setup terminal
set term png

# setup graph
set output "peltz.png"
set title "Peltz oscillator - Transient response"

# setup Y-axis
set grid ytics lt 1 lw 1 lc rgb "#bbbbbb"
set yrange [-5:5]
set mytics
set ylabel "Voltage [V]"

#setup X-axis
set grid xtics lt 1 lw 1 lc rgb "#bbbbbb"
set xlabel "Time [s]"

# setup plot style
set style data lines
plot 'peltz.dat' using 1:2 title "V(2)", \
     'peltz.dat' using 1:3 title "V(4)"

# set output back to default
set output

# reset terminal type
set terminal pop

