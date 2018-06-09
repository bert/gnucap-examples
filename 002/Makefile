# *.sch --> *.ps
#
# *.ps --> *.pdf
#
# *.ckt --> *.dat.
#
# edit files for filtering gnucap comments and do unit conversion.
#
# *.gnuplot --> *.png.

gschem_SOURCES := $(wildcard *.sch)

ps_TARGETS := $(patsubst %.sch,%.ps,$(gschem_SOURCES))

ps_SOURCES := $(wildcard *.ps)

pdf_TARGETS := $(patsubst %.ps,%.pdf,$(ps_SOURCES))

ckt_SOURCES := $(wildcard *.ckt)

gnuplot_SOURCES := $(wildcard *.gnuplot)

png_TARGETS := $(patsubst %.gnuplot,%.png,$(gnuplot_SOURCES))

dat_TARGETS := $(patsubst %.ckt,%.dat,$(ckt_SOURCES))

%.ps	: %.sch
	gschem -q -o $@ -s/usr/share/gEDA/scheme/print.scm $<

%.pdf	: %.ps
	ps2pdf -dOptimize=true -dUseFlateCompression=true -sPAPERSIZE=a4 $<

%.dat : %.ckt
	gnucap -b $< \
		| tail -n +11 \
		| sed s/Meg/E+06/g \
		| sed s/K/E+03/g \
		| sed s/M/E-03/g \
		| sed s/u/E-06/g \
		| sed s/n/E-09/g \
		| sed s/p/E-12/g \
		| sed s/f/E-15/g > $@
	

%.png : %.gnuplot
	gnuplot $<

all: \
	$(ps_TARGETS) \
	$(pdf_TARGETS) \
	$(dat_TARGETS) \
	$(png_TARGETS)

