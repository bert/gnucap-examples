v 20110115 2
C 0 0 0 0 0 title-B.sym
{
T 14000 100 5 10 1 1 0 0 1
author=Bert Timmerman
T 14000 400 5 10 1 1 0 0 1
revision=20160701
T 10100 400 5 10 1 1 0 0 1
file=eg1.sch
T 10100 100 5 10 1 1 0 0 1
page=1
T 11600 100 5 10 1 1 0 0 1
pages=1
}
N 3500 6300 3500 6500 4
N 3500 6500 5100 6500 4
{
T 3300 6500 5 10 1 1 0 0 1
netname=2
}
N 5100 6500 5100 6200 4
N 3500 5100 3500 4900 4
N 3500 4900 5100 4900 4
{
T 3300 4900 5 10 1 1 0 0 1
netname=0
}
N 5100 4900 5100 5300 4
C 3400 4600 1 0 0 gnd-1.sym
L 5100 6500 5200 6800 3 0 0 0 -1 -1
B 5200 6800 600 300 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
T 5300 6900 9 10 1 0 0 0 1
V(2)
T 10000 700 5 10 1 1 0 0 1
description=GNUCAP tutorial schematic
B 9400 1400 7600 9600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 9800 9200 1 0 0 spice-directive-1.sym
{
T 9900 9500 5 10 0 1 0 0 1
device=directive
T 9900 9600 5 10 1 1 0 0 1
refdes=A2
T 9900 9300 5 10 1 1 0 0 1
value=.dc > eg1.dat
}
C 9800 10000 1 0 0 spice-directive-1.sym
{
T 9900 10300 5 10 0 1 0 0 1
device=directive
T 9900 10400 5 10 1 1 0 0 1
refdes=A1
T 9900 10100 5 10 1 1 0 0 1
value=.print dc v(2)
}
C 5200 5300 1 90 0 resistor-2.sym
{
T 4850 5700 5 10 0 0 90 0 1
device=RESISTOR
T 4900 5500 5 10 1 1 90 0 1
refdes=R1
T 5400 5500 5 10 1 1 90 0 1
value=1k
}
C 3800 6300 1 180 0 vdc-1.sym
{
T 3900 5750 5 10 1 1 0 0 1
refdes=Vsupply
T 3100 5450 5 10 0 0 180 0 1
device=VOLTAGE_SOURCE
T 3100 5250 5 10 0 0 180 0 1
footprint=none
T 3900 5550 5 10 1 1 0 0 1
value=DC 10V
}
