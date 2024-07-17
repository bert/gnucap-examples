set style data lines

set terminal png

set output "CMC.png"
set title "Net Filter - Common Mode Choke"
set key left

# setup Y-axis
# set yrange [-0.1:0.1]
set grid ytics lt 1 lw 1 lc rgb "#bbbbbb"
set mytics
set ylabel "[dB]"

# setup X-axis
set grid xtics lt 1 lw 1 lc rgb "#bbbbbb"
set mxtics
set xlabel "Frequency [Hz]"

# setup plot style
set style data lines
plot 'CMC.dat' using 1:2 title ""

# set output back to default
set output

# reset terminal type
set terminal pop

