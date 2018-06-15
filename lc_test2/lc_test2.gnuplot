# setup terminal
set term png

# setup graph
set output "lc_test2_V.png"
set title "Testing a bridge of rectifier diodes with buffer capacitor - Transient response"

# setup Y-axis
set grid ytics lt 1 lw 1 lc rgb "#bbbbbb"
set mytics
set ylabel "Voltage [V]"

#setup X-axis
set grid xtics lt 1 lw 1 lc rgb "#bbbbbb"
set xlabel "Time [s]"

# setup plot style
set style data lines
plot 'lc_test2.dat' using 1:2 title "V(1)"

# setup graph
set output "lc_test2_I.png"

# setup Y-axis
set ylabel "Current [A]"

plot 'lc_test2.dat' using 1:3 title "I(RL)"

# set output back to default
set output

# reset terminal type
set terminal pop

