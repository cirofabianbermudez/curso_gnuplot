# Autor: Ciro Bermudez
# File: 05_sine_latex.gp
# Description: Simple sine wave for latex
# Run: load "05_sine_latex.gp"

# reset
# set terminal wxt
# set output 

# Terminal default size 5in, 3in font "sans,12"
# reset
# unit = 1.5
# set terminal pdfcairo size unit*5in, unit*3in font "Helvetica,16"
# set output "05_sine_latex.pdf"

# Terminal cairolatex default fontscale 0.6 size unit*5in, unit*3in
reset
unit = 1.5
set terminal cairolatex pdf size unit*5in, unit*3in
set output "cairolatex.tex"

xleft = 0; xright = 2*pi; xstep = 1
ydown = -1; yup = 1; ystep = 0.25

set xrange [xleft:xright]
set yrange [ydown:yup]

set xtics xleft,xstep,xright 
set ytics ydown,ystep,yup

set border 1+2+4+8

set key top right box
# set key at 6,0.95 Right box

set title '$f(t) = \sin{t}$'
set xlabel '$t$'; set ylabel '$f(t)$'

grid_major = 100
grid_minor = 101

set style line grid_major dashtype 1 linecolor rgb "#E0E0E0"
set style line grid_minor dashtype 3 linecolor rgb "#C7C7C7"
set grid
set mxtics 5; set mytics 5; 
set grid mxtics mytics linestyle grid_major, lines grid_minor
set tics scale 1,0.01

# set tics font ",20"
# set key font ",20"
# set title font ",20"

graph_style = 102
set style line graph_style linecolor rgb "#0000ff"\
                                     linewidth 1.5 \
                                     dashtype  1 \
                                     pointsize 1 \
                                     pointtype 4 \

set samples 63
set dummy t
a = 1; w = 1
plot a*sin(w*t) title '$f(t) = \sin{t}$' with linespoints linestyle graph_style