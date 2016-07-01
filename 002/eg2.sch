v 20110115 2
C 0 0 0 0 0 title-B.sym
{
T 10000 700 5 10 1 1 0 0 1
description=GNUCAP tutorial schematic
T 14000 100 5 10 1 1 0 0 1
author=Bert Timmerman
T 14000 400 5 10 1 1 0 0 1
revision=20090601
T 10100 400 5 10 1 1 0 0 1
file=eg2.sch
T 10100 100 5 10 1 1 0 0 1
page=1
T 11600 100 5 10 1 1 0 0 1
pages=1
}
C 9800 8400 1 0 0 spice-directive-1.sym
{
T 9900 8700 5 10 0 1 0 0 1
device=directive
T 9900 8800 5 10 1 1 0 0 1
refdes=A2
T 9900 8500 5 10 1 1 0 0 1
value=.dc > eg2.dat
}
C 9800 9200 1 0 0 spice-directive-1.sym
{
T 9900 9500 5 10 0 1 0 0 1
device=directive
T 9900 9600 5 10 1 1 0 0 1
refdes=A1
T 9900 9300 5 10 1 1 0 0 1
value=.print dc v(1) v(2) v(3) v(4) v(5)
}
N 2500 6600 2500 6300 4
N 900 5200 900 5000 4
N 900 6400 900 6600 4
N 2500 3700 6800 3700 4
{
T 2300 3700 5 10 1 1 0 0 1
netname=0
}
N 2500 5000 900 5000 4
{
T 700 5000 5 10 1 1 0 0 1
netname=1
}
N 900 6600 2900 6600 4
{
T 700 6600 5 10 1 1 0 0 1
netname=2
}
N 3800 6600 4000 6600 4
{
T 3800 6700 5 10 1 1 0 0 1
netname=3
}
N 4400 8200 4000 8200 4
{
T 3800 8300 5 10 1 1 0 0 1
netname=4
}
N 5300 8200 6800 8200 4
{
T 5400 8300 5 10 1 1 0 0 1
netname=5
}
C 2400 3400 1 0 0 gnd-1.sym
C 6900 5400 1 90 0 resistor-2.sym
{
T 6550 5800 5 10 0 0 90 0 1
device=RESISTOR
T 6600 5600 5 10 1 1 90 0 1
refdes=R6
T 7100 5600 5 10 1 1 90 0 1
value=15k
}
C 2600 3900 1 90 0 resistor-2.sym
{
T 2250 4300 5 10 0 0 90 0 1
device=RESISTOR
T 2300 4100 5 10 1 1 90 0 1
refdes=R5
T 2800 4100 5 10 1 1 90 0 1
value=22k
}
C 5700 7000 1 90 0 resistor-2.sym
{
T 5350 7400 5 10 0 0 90 0 1
device=RESISTOR
T 5400 7200 5 10 1 1 90 0 1
refdes=R4
T 5900 7200 5 10 1 1 90 0 1
value=10k
}
C 4400 8100 1 0 0 resistor-2.sym
{
T 4800 8450 5 10 0 0 0 0 1
device=RESISTOR
T 4600 8400 5 10 1 1 0 0 1
refdes=R3
T 4600 7900 5 10 1 1 0 0 1
value=3300
}
C 2900 6500 1 0 0 resistor-2.sym
{
T 3300 6850 5 10 0 0 0 0 1
device=RESISTOR
T 3100 6800 5 10 1 1 0 0 1
refdes=R2
T 3100 6300 5 10 1 1 0 0 1
value=4700
}
N 2500 4800 2500 5400 4
N 2500 3900 2500 3700 4
N 4000 5200 4000 3700 4
N 4000 6400 4000 6800 4
N 4000 8000 4000 8200 4
N 5600 8200 5600 7900 4
N 4000 6600 5600 6600 4
N 5600 6600 5600 7000 4
N 6800 8200 6800 6300 4
N 6800 5400 6800 3700 4
C 2600 5400 1 90 0 resistor-2.sym
{
T 2250 5800 5 10 0 0 90 0 1
device=RESISTOR
T 2300 5600 5 10 1 1 90 0 1
refdes=R1
T 2800 5600 5 10 1 1 90 0 1
value=220
}
C 4300 6400 1 180 0 vdc-1.sym
{
T 4400 5850 5 10 1 1 0 0 1
refdes=V3
T 3600 5550 5 10 0 0 180 0 1
device=VOLTAGE_SOURCE
T 3600 5350 5 10 0 0 180 0 1
footprint=none
T 4400 5650 5 10 1 1 0 0 1
value=DC 3V
}
C 3700 6800 1 0 0 vdc-1.sym
{
T 4400 7450 5 10 1 1 0 0 1
refdes=V2
T 4400 7650 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 4400 7850 5 10 0 0 0 0 1
footprint=none
T 4400 7250 5 10 1 1 0 0 1
value=DC 5V
}
C 600 5200 1 0 0 vdc-1.sym
{
T 1300 5850 5 10 1 1 0 0 1
refdes=V1
T 1300 6050 5 10 0 0 0 0 1
device=VOLTAGE_SOURCE
T 1300 6250 5 10 0 0 0 0 1
footprint=none
T 1300 5650 5 10 1 1 0 0 1
value=DC 10V
}
B 9400 1400 7600 9600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 9800 10000 1 0 0 spice-directive-1.sym
{
T 9900 10300 5 10 0 1 0 0 1
device=directive
T 9900 10400 5 10 1 1 0 0 1
refdes=A0
T 9900 10100 5 10 1 1 0 0 1
value=.title eg2.ckt
}
L 900 6600 1000 6900 3 0 0 0 -1 -1
B 1000 6900 500 300 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 1100 7000 9 10 1 0 0 0 1
V(2)
L 1000 4700 900 5000 3 0 0 0 -1 -1
B 1000 4400 500 300 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 1100 4500 9 10 1 0 0 0 1
V(1)
L 4900 6300 4800 6600 3 0 0 0 -1 -1
B 4900 6000 500 300 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 5000 6100 9 10 1 0 0 0 1
V(3)
L 4000 8200 4100 8500 3 0 0 0 -1 -1
B 4100 8500 500 300 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 4200 8600 9 10 1 0 0 0 1
V(4)
L 5600 8200 5700 8500 3 0 0 0 -1 -1
B 5700 8500 500 300 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 5800 8600 9 10 1 0 0 0 1
V(5)