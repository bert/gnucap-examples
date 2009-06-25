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
file=eg3.sch
T 50100 40100 5 10 1 1 0 0 1
page=1
T 51600 40100 5 10 1 1 0 0 1
pages=1
}
N 45100 44800 45100 45300 4
{
T 44900 45100 5 10 1 1 0 0 1
netname=0
}
C 45000 44500 1 0 0 gnd-1.sym
C 46800 45400 1 90 0 resistor-2.sym
{
T 46450 45800 5 10 0 0 90 0 1
device=RESISTOR
T 46500 45600 5 10 1 1 90 0 1
refdes=Rd1
T 47000 45600 5 10 1 1 90 0 1
value=1k
}
N 45100 46500 45100 46800 4
{
T 44900 46800 5 10 1 1 0 0 1
netname=1
}
N 50200 45100 45100 45100 4
N 46700 46300 46700 46800 4
N 46700 45400 46700 45100 4
C 45500 46600 1 0 0 diode-1.sym
{
T 45900 47200 5 10 0 0 0 0 1
device=DIODE
T 45800 47100 5 10 1 1 0 0 1
refdes=Dx
T 45700 46400 5 10 1 1 0 0 1
value=1N414
}
N 45500 46800 45100 46800 4
N 46400 46800 47100 46800 4
{
T 46600 46900 5 10 1 1 0 0 1
netname=2
}
C 45400 46500 1 180 0 vdc-1.sym
{
T 45500 45950 5 10 1 1 0 0 1
refdes=Vcc
T 44700 45650 5 10 0 0 180 0 1
device=VOLTAGE_SOURCE
T 44700 45450 5 10 0 0 180 0 1
footprint=none
T 45500 45750 5 10 1 1 0 0 1
value=DC 5V
}
C 48400 45400 1 90 0 resistor-2.sym
{
T 48050 45800 5 10 0 0 90 0 1
device=RESISTOR
T 48100 45600 5 10 1 1 90 0 1
refdes=Rd2
T 48600 45600 5 10 1 1 90 0 1
value=1k
}
N 48300 46300 48300 46800 4
N 48300 45400 48300 45100 4
N 48000 46800 49000 46800 4
{
T 48200 46900 5 10 1 1 0 0 1
netname=3
}
C 47100 46600 1 0 0 diode-1.sym
{
T 47400 47100 5 10 1 1 0 0 1
refdes=Dy
T 47500 47200 5 10 0 0 0 0 1
device=DIODE
T 47300 46400 5 10 1 1 0 0 1
value=1N414
}
C 50300 45400 1 90 0 resistor-2.sym
{
T 49950 45800 5 10 0 0 90 0 1
device=RESISTOR
T 50000 45600 5 10 1 1 90 0 1
refdes=Rd3
T 50500 45600 5 10 1 1 90 0 1
value=1k
}
N 50200 46300 50200 46800 4
N 50200 45400 50200 45100 4
N 49900 46800 50200 46800 4
{
T 50100 46900 5 10 1 1 0 0 1
netname=4
}
C 49000 46600 1 0 0 diode-1.sym
{
T 49300 47100 5 10 1 1 0 0 1
refdes=Dz
T 49400 47200 5 10 0 0 0 0 1
device=DIODE
T 49200 46400 5 10 1 1 0 0 1
value=1N414
}
