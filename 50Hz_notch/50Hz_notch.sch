v 20110115 2
C 40000 40000 0 0 0 title-B.sym
{
T 50000 40700 5 10 1 1 0 0 1
description=50 Hz notch filter
T 50000 40400 5 10 1 1 0 0 1
file=50Hz_notch.sch
T 50000 40100 5 10 1 1 0 0 1
page=01
T 51500 40100 5 10 1 1 0 0 1
pages=01
T 53900 40400 5 10 1 1 0 0 1
revision=20180609
T 53900 40100 5 10 1 1 0 0 1
author=Bert Timmerman
}
N 44500 45500 44500 45700 4
N 44500 45700 44900 45700 4
{
T 44400 45600 5 6 1 1 0 4 1
netname=1
}
N 44500 44300 44500 44100 4
N 44500 44100 47100 44100 4
{
T 44400 44200 5 6 1 1 0 4 1
netname=0
}
C 44400 43800 1 0 0 gnd-1.sym
L 51500 45900 51700 46100 3 0 0 0 -1 -1
B 51700 46100 600 300 3 0 0 0 -1 -1 0 -1 -1 -1 -1 -1
C 44900 45600 1 0 0 resistor-2.sym
{
T 45300 45950 5 10 0 0 0 0 1
device=RESISTOR
T 45100 45900 5 10 1 1 0 0 1
refdes=R1
T 45100 45400 5 10 1 1 0 0 1
value=10Meg
}
C 44200 44300 1 0 0 vac-1.sym
{
T 44900 44950 5 10 1 1 0 0 1
refdes=VS
T 44900 45150 5 10 0 0 0 0 1
device=vac
T 44900 45350 5 10 0 0 0 0 1
footprint=none
}
N 45800 45700 47500 45700 4
{
T 46000 45800 5 6 1 1 0 4 1
netname=2
}
N 50700 45900 51500 45900 4
{
T 50900 46000 5 6 1 1 0 4 1
netname=3
}
N 51500 47400 51500 45900 4
N 51500 47400 49200 47400 4
N 49200 47400 49200 46100 4
L 44400 44300 44500 44200 3 0 0 0 -1 -1
L 44500 44200 44400 44100 3 0 0 0 -1 -1
L 44400 44100 44300 44200 3 0 0 0 -1 -1
L 44300 44200 44400 44300 3 0 0 0 -1 -1
L 44500 45600 44400 45700 3 0 0 0 -1 -1
L 44400 45700 44300 45600 3 0 0 0 -1 -1
L 44300 45600 44400 45500 3 0 0 0 -1 -1
L 44400 45500 44500 45600 3 0 0 0 -1 -1
L 46000 45700 45900 45800 3 0 0 0 -1 -1
L 45900 45800 46000 45900 3 0 0 0 -1 -1
L 46000 45900 46100 45800 3 0 0 0 -1 -1
L 46100 45800 46000 45700 3 0 0 0 -1 -1
L 50800 46000 50900 45900 3 0 0 0 -1 -1
L 50900 45900 51000 46000 3 0 0 0 -1 -1
L 51000 46000 50900 46100 3 0 0 0 -1 -1
L 50900 46100 50800 46000 3 0 0 0 -1 -1
N 46200 45400 46200 45700 4
N 46200 44500 46200 44100 4
N 48400 45700 49700 45700 4
{
T 49500 45800 5 6 1 1 0 4 1
netname=6
}
L 49400 45800 49500 45900 3 0 0 0 -1 -1
L 49500 45900 49600 45800 3 0 0 0 -1 -1
L 49600 45800 49500 45700 3 0 0 0 -1 -1
L 49500 45700 49400 45800 3 0 0 0 -1 -1
C 45100 47600 1 0 0 capacitor-1.sym
{
T 45300 48300 5 10 0 0 0 0 1
device=CAPACITOR
T 45400 48100 5 10 1 1 0 0 1
refdes=C3
T 45300 48500 5 10 0 0 0 0 1
symversion=0.1
T 45400 47400 5 10 1 1 0 0 1
value=330p
}
N 44700 45700 44700 47800 4
N 44700 47800 45100 47800 4
N 46000 47800 47400 47800 4
{
T 46600 47900 5 6 1 1 0 4 1
netname=7
}
N 50200 46700 50200 46300 4
{
T 50300 46500 5 6 1 1 0 4 1
netname=5
}
L 50200 46500 50300 46600 3 0 0 0 -1 -1
L 50300 46600 50400 46500 3 0 0 0 -1 -1
L 50400 46500 50300 46400 3 0 0 0 -1 -1
L 50300 46400 50200 46500 3 0 0 0 -1 -1
C 50000 46700 1 0 0 vee-1.sym
N 50200 45100 50200 45500 4
{
T 50300 45300 5 6 1 1 0 4 1
netname=4
}
L 50200 45300 50300 45400 3 0 0 0 -1 -1
L 50300 45400 50400 45300 3 0 0 0 -1 -1
L 50400 45300 50300 45200 3 0 0 0 -1 -1
L 50300 45200 50200 45300 3 0 0 0 -1 -1
C 50400 45100 1 180 0 vcc-1.sym
T 51800 46200 9 10 1 0 0 0 1
Vout
C 46300 46500 1 90 0 resistor-2.sym
{
T 45950 46900 5 10 0 0 90 0 1
device=RESISTOR
T 46000 46700 5 10 1 1 90 0 1
refdes=R3
T 46500 46700 5 10 1 1 90 0 1
value=10Meg
}
C 46400 44500 1 90 0 capacitor-1.sym
{
T 45700 44700 5 10 0 0 90 0 1
device=CAPACITOR
T 45900 44800 5 10 1 1 90 0 1
refdes=C1
T 45500 44700 5 10 0 0 90 0 1
symversion=0.1
T 46600 44800 5 10 1 1 90 0 1
value=330p
}
N 47100 44500 47100 44100 4
C 47300 44500 1 90 0 capacitor-1.sym
{
T 46600 44700 5 10 0 0 90 0 1
device=CAPACITOR
T 46800 44800 5 10 1 1 90 0 1
refdes=C2
T 46400 44700 5 10 0 0 90 0 1
symversion=0.1
T 47500 44800 5 10 1 1 90 0 1
value=330p
}
N 47100 45400 47100 45700 4
C 49700 46300 1 180 1 aop-std-1.sym
{
T 50750 46150 5 10 0 0 180 6 1
device=AOP-Standard
T 49400 46600 5 10 1 1 0 0 1
refdes=XOP1
T 50750 45550 5 10 0 0 180 6 1
footprint=DIP8
T 50750 45950 5 10 0 0 180 6 1
symversion=0.1
T 49400 46400 5 10 1 1 0 0 1
value=UA741
}
C 47500 45600 1 0 0 resistor-2.sym
{
T 47900 45950 5 10 0 0 0 0 1
device=RESISTOR
T 47700 45900 5 10 1 1 0 0 1
refdes=R2
T 47700 45400 5 10 1 1 0 0 1
value=10Meg
}
C 47400 47600 1 0 0 capacitor-1.sym
{
T 47600 48300 5 10 0 0 0 0 1
device=CAPACITOR
T 47700 48100 5 10 1 1 0 0 1
refdes=C4
T 47600 48500 5 10 0 0 0 0 1
symversion=0.1
T 47700 47400 5 10 1 1 0 0 1
value=330p
}
N 49700 46100 46200 46100 4
N 46200 46100 46200 46500 4
C 47100 46500 1 90 0 resistor-2.sym
{
T 46750 46900 5 10 0 0 90 0 1
device=RESISTOR
T 46800 46700 5 10 1 1 90 0 1
refdes=R4
T 47300 46700 5 10 1 1 90 0 1
value=10Meg
}
N 47000 46500 47000 46100 4
N 46200 47400 46200 47800 4
N 47000 47400 47000 47800 4
N 48300 47800 48800 47800 4
N 48800 47800 48800 45700 4
L 46600 48000 46500 47900 3 0 0 0 -1 -1
L 46500 47900 46600 47800 3 0 0 0 -1 -1
L 46600 47800 46700 47900 3 0 0 0 -1 -1
L 46700 47900 46600 48000 3 0 0 0 -1 -1