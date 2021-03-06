set term pdf size 15cm, 10cm font "Palatino"
set datafile separator ","
set output fname."-s.pdf"
set key inside left
set xla "Number of Galley Renderings"
set yla "Filesize as a proportion of source document filesize"
set yra [0:100]
set grid ytics lt 1 lw 1 lc rgb "#333333"
plot "./".fname.".csv" u ($3):($1/7706.0) i 0 title columnheader(1), '' u ($3):($1/23518.0) i 1 title columnheader(1), '' u ($3):($1/5560743.0) i 2 title columnheader(1), '' u ($3):($1/4432380.0) i 3 title columnheader(1)


