v 20070626 1
C 40000 40000 0 0 0 title-B.sym
{
T 50000 40700 5 10 1 1 0 0 1
description=GNUCAP tutorial schematic
T 54000 40100 5 10 1 1 0 0 1
author=Bert Timmerman
T 54000 40400 5 10 1 1 0 0 1
revision=20090601
T 50100 40400 5 10 1 1 0 0 1
file=eg1.sch
T 50100 40100 5 10 1 1 0 0 1
page=1
T 51600 40100 5 10 1 1 0 0 1
pages=1
}
C 49000 45300 1 90 0 resistor-2.sym
{
T 48650 45700 5 10 0 0 90 0 1
device=RESISTOR
T 48700 45500 5 10 1 1 90 0 1
refdes=R1
T 49200 45500 5 10 1 1 90 0 1
value=1k
}
N 47300 46300 47300 46500 4
N 47300 46500 48900 46500 4
{
T 47100 46500 5 10 1 1 0 0 1
netname=1
}
N 48900 46500 48900 46200 4
N 47300 45100 47300 44900 4
N 47300 44900 48900 44900 4
{
T 47100 44900 5 10 1 1 0 0 1
netname=0
}
N 48900 44900 48900 45300 4
C 47200 44600 1 0 0 gnd-1.sym
C 47600 46300 1 180 0 vdc-1.sym
{
T 47700 45750 5 10 1 1 0 0 1
refdes=Vsupply
T 46900 45450 5 10 0 0 180 0 1
device=VOLTAGE_SOURCE
T 46900 45250 5 10 0 0 180 0 1
footprint=none
T 47700 45550 5 10 1 1 0 0 1
value=DC 10V
}