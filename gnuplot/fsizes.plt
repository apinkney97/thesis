set term pdf size 7.6in, 4.66in font "Palatino"
set output "fsizes.pdf"
set offset 1,1,1,1

set xla "Filesize in KB"
set yla "Mean user rating"
plot 'fsizes.data' using 2:3:1 with labels point pt 7 offset char 1.2,0 notitle,\
'' using 2:4:1 with labels point pt 6 offset char 1.2,0 notitle,\
NaN with points pt 7 lc rgb "black" title "Q1",\
NaN with points pt 6 lc rgb "black" title "Q2"


