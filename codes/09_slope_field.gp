# Autor: Ciro Bermudez
# File: 09_slope_field.gp
# Description: Plot the slope field
# Run: load "09_slope_field.gp"

# reset
# set terminal wxt
# set output 

# Terminal pdfcairo default size 5in, 3in font "sans,12"  5:3 ratio
reset
unit = 1.5
set terminal pdfcairo size unit*5in, unit*3in font "Helvetica,16"
set output "09_slope_field.pdf"
filename = "09_slope.txt"

# xleft = 0; xright = 2*pi; xstep = 1
# ydown = -1; yup = 1; ystep = 0.2

set xrange [0:10]
set yrange [0:2]

set xtic 0,1,10
set ytic 0,0.2,2

set border 1+2+4+8

# set key top right box
# set key at 6,0.95 Right box

set title "Slope field dx/dt = x(1-x)" 
set xlabel "t"; set ylabel "x" offset 2,0 rotate by 0

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

arrow_style = 102
set style arrow arrow_style head size 0.1,20\
                                 linecolor rgb "#000000"\
                                 linewidth 2
                                 
graph_style = 103
set style line graph_style linecolor rgb "#0000ff"\
                                     linewidth 2 \
#                                     dashtype  1 \
#                                     pointsize 1 \
#                                     pointtype 4 \

# set samples 63
# set dummy t
# a = 1; w = 1
# plot a*sin(w*t) title "f(t) = sin(t)" with boxes linestyle graph_style1
unset key
set size square
plot filename using 1:2:($3*0.4):4 with arrows arrowstyle arrow_style, \
     "09_ode_solver.txt" using 1:2 title "pepe" with lines linestyle graph_style