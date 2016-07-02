gschem_SOURCES := $(wildcard *.sch)

gnuplot_SOURCES := $(wildcard *.gnuplot)

ps_TARGETS := $(patsubst %.sch,%.ps,$(gschem_SOURCES))

ckt_TARGETS := $(patsubst %.sch,%.ckt,$(gschem_SOURCES))

ckt_SOURCES := $(wildcard *.ckt)

dat_TARGETS := $(patsubst %.ckt,%.dat,$(ckt_SOURCES))

png_TARGETS := $(patsubst %.gnuplot,%.png,$(gnuplot_SOURCES))

%.ps	: %.sch
	gschem -q -o $@ -s/usr/share/gEDA/scheme/print.scm $<

%.ckt	: %.sch
	gnetlist -g spice-sdb --nomunge -o $@ $<

%.dat : %.ckt
	gnucap -b $<

%.png : %.gnuplot
	gnuplot $<

all: \
	$(ps_TARGETS) \
	$(ckt_TARGETS) \
	$(dat_TARGETS) \
	$(png_TARGETS)

