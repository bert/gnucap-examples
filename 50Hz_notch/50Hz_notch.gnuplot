# setup terminal
set term png

# setup graph
set output "50Hz_notch.png"
set title "50 Hz Notch filter - Frequency response"

# setup Y-axis
set grid ytics lt 1 lw 1 lc rgb "#bbbbbb"
set yrange [:5]
set mytics
set ylabel "Voltage [dB]"

#setup X-axis
set logscale x 10
set grid xtics lt 1 lw 1 lc rgb "#bbbbbb"
set xlabel "Frequency [Hz]"

# setup plot style
set style data lines
plot '50Hz_notch.dat' using 1:2 title "Vout"

# set output back to default
set output

# reset terminal type
set terminal pop

