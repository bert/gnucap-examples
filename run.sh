#!/bin/bash
gnucap -b $1.ckt
gnuplot << load $1.gnuplot

