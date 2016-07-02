v 20110115 2
C 0 0 0 0 0 title-B.sym
{
T 10000 700 5 10 1 1 0 0 1
description=GNUCAP tutorial schematic
T 14000 100 5 10 1 1 0 0 1
author=Bert Timmerman
T 14000 400 5 10 1 1 0 0 1
revision=20160702
T 10100 400 5 10 1 1 0 0 1
file=eg4.sch
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
value=.dc > eg4.dat
}
C 9800 9200 1 0 0 spice-directive-1.sym
{
T 9900 9500 5 10 0 1 0 0 1
device=directive
T 9900 9600 5 10 1 1 0 0 1
refdes=A1
T 9900 9300 5 10 1 1 0 0 1
value=.print dc v(1) i(V1) i(V2)
}
N 3000 3900 3000 4300 4
{
T 2800 3900 5 10 1 1 0 0 1
netname=0
}
C 2900 3600 1 0 0 gnd-1.sym
C 5100 4300 1 0 1 vdc-1.sym
{
T 5200 4850 5 10 1 1 180 6 1
refdes=V2
T 4400 5150 5 10 0 0 0 6 1
device=VOLTAGE_SOURCE
T 4400 5350 5 10 0 0 0 6 1
footprint=none
T 5200 5050 5 10 1 1 180 6 1
value=DC 10.2V
}
C 3300 4300 1 0 1 vdc-1.sym
{
T 3400 4850 5 10 1 1 180 6 1
refdes=V1
T 2600 5150 5 10 0 0 0 6 1
device=VOLTAGE_SOURCE
T 2600 5350 5 10 0 0 0 6 1
footprint=none
T 3400 5050 5 10 1 1 180 6 1
value=DC 10.0V
}
N 3000 5500 3000 5700 4
{
T 2800 5700 5 10 1 1 0 0 1
netname=1
}
B 9400 1400 7600 9600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 9800 10000 1 0 0 spice-directive-1.sym
{
T 9900 10300 5 10 0 1 0 0 1
device=directive
T 9900 10400 5 10 1 1 0 0 1
refdes=A0
T 9900 10100 5 10 1 1 0 0 1
value=.title eg4.ckt
}
N 3000 5700 4800 5700 4
N 4800 5700 4800 5500 4
N 4800 4300 4800 4100 4
N 4800 4100 3000 4100 4
