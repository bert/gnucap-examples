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
file=eg5.sch
T 10100 100 5 10 1 1 0 0 1
page=1
T 11600 100 5 10 1 1 0 0 1
pages=1
}
B 9400 1400 7600 9600 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 9800 8400 1 0 0 spice-directive-1.sym
{
T 9900 8700 5 10 0 1 0 0 1
device=directive
T 9900 8800 5 10 1 1 0 0 1
refdes=A2
T 9900 8500 5 10 1 1 0 0 1
value=.dc > eg5.dat
}
C 9800 9200 1 0 0 spice-directive-1.sym
{
T 9900 9500 5 10 0 1 0 0 1
device=directive
T 9900 9600 5 10 1 1 0 0 1
refdes=A1
T 9900 9300 5 10 1 1 0 0 1
value=.print dc v(1) i(I1) i(I2)
}
N 3500 6100 3500 6500 4
{
T 3300 6500 5 10 1 1 0 0 1
netname=1
}
N 3500 4500 3500 4900 4
{
T 3300 4500 5 10 1 1 0 0 1
netname=0
}
C 3400 4200 1 0 0 gnd-1.sym
C 5000 4900 1 0 0 idc-1.sym
{
T 5700 5550 5 10 1 1 0 0 1
refdes=I2
T 5700 5750 5 10 0 0 0 0 1
device=CURRENT_SOURCE
T 5700 5950 5 10 0 0 0 0 1
footprint=none
T 5700 5350 5 10 1 1 0 0 1
value=2.0
}
C 3200 6100 1 180 1 idc-1.sym
{
T 3900 5550 5 10 1 1 0 0 1
refdes=I1
T 3900 5250 5 10 0 0 180 6 1
device=CURRENT_SOURCE
T 3900 5050 5 10 0 0 180 6 1
footprint=none
T 3900 5350 5 10 1 1 0 0 1
value=2.0001
}
C 9800 10000 1 0 0 spice-directive-1.sym
{
T 9900 10300 5 10 0 1 0 0 1
device=directive
T 9900 10400 5 10 1 1 0 0 1
refdes=A0
T 9900 10100 5 10 1 1 0 0 1
value=.title eg5.ckt
}
N 3500 6500 5300 6500 4
N 5300 6500 5300 6100 4
N 5300 4900 5300 4700 4
N 5300 4700 3500 4700 4
