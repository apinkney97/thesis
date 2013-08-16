set term pdf size 15cm, 10cm font "Palatino"
set datafile separator ","
set output "1.r.pdf"
set key inside right
set xla "Number of Galley Renderings"
set yla "Filesize as a proportion of source document filesize, per galley rendering"
set yra [0:6]
plot "./1.csv" u ($3):($1/7706.0/$3) i 0 title columnheader(1), '' u ($3):($1/23518.0/$3) i 1 title columnheader(1), '' u ($3):($1/5560743.0/$3) i 2 title columnheader(1), '' u ($3):($1/4432380.0/$3) i 3 title columnheader(1)


