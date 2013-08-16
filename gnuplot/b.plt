set term pdf size 15cm, 10cm font "Palatino"
set datafile separator ","
set output fname."-b.pdf"
set key inside left
set xla "Number of Galley Renderings"
set yla "Filesize (bytes)"
set log x 2
set log y
set yra [1:1e10]
set grid ytics lt 1 lw 1 lc rgb "#333333"
plot "./".fname.".csv" u ($3):($1) i 0 title columnheader(1), '' u ($3):($1) i 1 title columnheader(1), '' u ($3):($1) i 2 title columnheader(1), '' u ($3):($1) i 3 title columnheader(1)


