#!/bin/bash
gnucap -b $1.ckt
if test -f $1.gnuplot; then 
  gnuplot < $1.gnuplot
fi

