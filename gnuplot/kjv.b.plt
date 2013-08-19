set term pdf size 15cm, 10cm font "Palatino"
set datafile separator ","
set output "kjv-b.pdf"
set key inside left
set xla "Number of Galley Renderings"
set yla "Filesize (bytes)"
set grid ytics lt 1 lw 1 lc rgb "#333333"
plot "./2.csv" i 3 every ::1 u ($3):($1) title "Original", './3.csv' every ::1 u ($3):($1) i 3 title "Unordered dictionary", './4.csv' every ::1 u ($3):($1) i 3 title "Ordered dictionary", './5.csv' every ::1 u ($3):($1) i 3 title "Ordered dictionary with deltas"


