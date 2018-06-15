set term png

set output "lpf.png"

set style data lines

# setup Y-axis
set grid ytics lt 1 lw 1 lc rgb "#bbbbbb"
set mytics
set ylabel "Voltage [dB]"

#setup X-axis
set logscale x 10
set grid xtics lt 1 lw 1 lc rgb "#bbbbbb"
set xlabel "Frequency [Hz]"

plot 'lpf.dat' using 0:1 title "v(2)"

# set output back to default
set output

# reset terminal type
set terminal pop

