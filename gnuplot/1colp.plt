set term postscript enhanced color eps font "Palatino" size 5.1in, 1.8in
set output "1colp.ps"
set samples 5000
set xlabel "Page width (as a fraction of galley width)"
set ylabel "Additional horizontal\nwhitespace per galley\n(as a fraction of galley width)"

plot [0:20] (x - floor(x)) / floor(x) notitle
