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
C 44100 47500 1 0 0 resistor-2.sym
{
T 44500 47850 5 10 0 0 0 0 1
device=RESISTOR
T 44300 47800 5 10 1 1 0 0 1
refdes=R1
T 44300 47300 5 10 1 1 0 0 1
value=2.2
}
N 43700 43500 43700 44000 4
T 43500 45900 9 10 1 0 0 0 1
1
C 43600 43200 1 0 0 gnd-1.sym
T 43500 43500 9 10 1 0 0 0 1
0
C 44000 45200 1 180 0 vdc-1.sym
{
T 44100 44650 5 10 1 1 0 0 1
refdes=V1
T 43300 44350 5 10 0 0 180 0 1
device=VOLTAGE_SOURCE
T 43300 44150 5 10 0 0 180 0 1
footprint=none
T 44100 44450 5 10 1 1 0 0 1
value=DC 5V
}
C 43900 45800 1 0 0 resistor-2.sym
{
T 44300 46150 5 10 0 0 0 0 1
device=RESISTOR
T 44100 46100 5 10 1 1 0 0 1
refdes=R2
T 44100 45600 5 10 1 1 0 0 1
value=470
}
C 45400 44100 1 90 0 resistor-2.sym
{
T 45050 44500 5 10 0 0 90 0 1
device=RESISTOR
T 45100 44300 5 10 1 1 90 0 1
refdes=R3
T 45600 44300 5 10 1 1 90 0 1
value=330
}
C 48400 45900 1 90 0 resistor-2.sym
{
T 48050 46300 5 10 0 0 90 0 1
device=RESISTOR
T 48100 46100 5 10 1 1 90 0 1
refdes=R4
T 48600 46100 5 10 1 1 90 0 1
value=1k
}
C 45900 46700 1 90 0 resistor-2.sym
{
T 45550 47100 5 10 0 0 90 0 1
device=RESISTOR
T 45600 46900 5 10 1 1 90 0 1
refdes=R5
T 46100 46900 5 10 1 1 90 0 1
value=1e4
}
C 43400 46200 1 0 0 idc-1.sym
{
T 44100 46850 5 10 1 1 0 0 1
refdes=I1
T 44100 47050 5 10 0 0 0 0 1
device=CURRENT_SOURCE
T 44100 47250 5 10 0 0 0 0 1
footprint=none
T 44100 46650 5 10 1 1 0 0 1
value=DC 2mA
}
C 46000 45800 1 0 0 vcvs-1.sym
{
T 46200 46850 5 10 0 0 0 0 1
device=SPICE-vcvs
T 46600 46650 5 10 1 1 0 0 1
refdes=E1
T 46200 47050 5 10 0 0 0 0 1
symversion=0.1
T 46700 45750 5 10 1 0 0 5 1
value=0.4
}
C 46100 48200 1 0 0 cccs-1.sym
{
T 46300 49250 5 10 0 0 0 0 1
device=SPICE-cccs
T 46700 49050 5 10 1 1 0 0 1
refdes=F1
T 46300 49450 5 10 0 0 0 0 1
symversion=0.1
T 46800 48150 5 10 1 0 0 5 1
value=1
}
C 48600 44900 1 0 0 ccvs-1.sym
{
T 48800 45950 5 10 0 0 0 0 1
device=SPICE-ccvs
T 49200 45750 5 10 1 1 0 0 1
refdes=H1
T 48800 46150 5 10 0 0 0 0 1
symversion=0.1
T 49400 44850 5 10 1 0 0 5 1
value=1
}
N 43700 47400 43700 47600 4
N 43700 45900 43900 45900 4
N 43700 45200 43700 46200 4
T 43500 47600 9 10 1 0 0 0 1
4
N 44800 45900 46000 45900 4
T 45400 46000 9 10 1 0 0 0 1
2
T 45400 46600 9 10 1 0 0 0 1
5
N 43700 47600 44100 47600 4
N 45000 47600 45200 47600 4
N 45200 46500 46000 46500 4
T 47400 46600 9 10 1 0 0 0 1
3
N 47700 45900 47700 45400 4
N 47700 45400 43700 45400 4
N 47500 46500 47900 46500 4
N 45200 46500 45200 48900 4
N 45200 48900 46100 48900 4
N 46100 48300 45800 48300 4
N 45800 47800 48800 47800 4
T 47400 47900 9 10 1 0 0 0 1
6
N 47900 46500 47900 45600 4
N 47900 45600 48600 45600 4
N 48600 45000 47700 45000 4
N 47700 45000 47700 43800 4
N 47700 43800 43700 43800 4
C 50700 47000 1 0 0 vccs-1.sym
{
T 50900 48050 5 10 0 0 0 0 1
device=SPICE-vccs
T 51300 47850 5 10 1 1 0 0 1
refdes=G1
T 50900 48250 5 10 0 0 0 0 1
symversion=0.1
T 51400 46950 5 10 1 0 0 5 1
value=1.3
}
N 45300 45000 45300 45900 4
N 45300 44100 45300 43800 4
N 48300 46800 48300 47800 4
N 48300 45900 48300 45600 4
N 47500 45900 47700 45900 4
N 45800 47600 45800 48300 4
N 45800 46700 45800 46500 4
