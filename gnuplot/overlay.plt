# set term postscript enhanced color eps font "Palatino" size 5in, 2in
# set output "overlay.ps"
set term pdf size 7.6in, 4.66in font "Palatino"
set output "overlay.pdf"
set samples 5000
set xlabel "Page width (em)"
set ylabel "Additional horizontal\nwhitespace per galley (em)"
# set yrange [0:1.2]

plot [0:144] for [n=1:4] m=(n+4)*3 (x - m*floor(x/m))/floor(x/m) title "".m." em galley width"
