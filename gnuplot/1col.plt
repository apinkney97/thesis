set term postscript enhanced color eps font "Palatino" size 5in, 2in
set output "1col.ps"
set samples 5000
set xlabel "Page width (as a fraction of galley width)"
set ylabel "Additional horizontal whitespace\n(as a fraction of galley width)"
set yrange [0:1.2]

plot [0:20] x - floor(x) title "absolute", (x - floor(x)) / floor(x) title "per column" lc rgb "#0000FF"
