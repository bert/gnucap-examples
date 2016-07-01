gschem_SOURCES := $(wildcard *.sch)

gnuplot_SOURCES := $(wildcard *.gnuplot)

ckt_SOURCES := $(wildcard *.ckt)

mod_TARGETS := $(patsubst %.sch,%.mod,$(gschem_SOURCES))

dat_TARGETS := $(patsubst %.ckt,%.dat,$(ckt_SOURCES))

png_TARGETS := $(patsubst %.gnuplot,%.png,$(gnuplot_SOURCES))

%.mod	: %.sch
	gnetlist -g spice-sdb --nomunge -o $@ $<

%.dat : %.ckt
	gnucap -b $<

%.png : %.gnuplot
	gnuplot $<

all: \
	$(mod_TARGETS) \
	$(dat_TARGETS) \
	$(png_TARGETS)

	
