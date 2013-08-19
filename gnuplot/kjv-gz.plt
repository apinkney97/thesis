set term pdf size 15cm, 10cm font "Palatino"
set output "kjv-gz.pdf"
set key inside left
set xla "Number of Galley Renderings"
set yla "Filesize (bytes)"
set grid ytics lt 1 lw 1 lc rgb "#333333"
plot "./kjv-gz.data" i 1 title columnheader(1), '' i 2 title columnheader(1), '' i 3 title columnheader(1), '' i 4 title columnheader(1)


