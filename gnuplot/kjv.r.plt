set term pdf size 15cm, 10cm font "Palatino"
set datafile separator ","
set output "kjv.r.pdf"
set key inside left
set xla "Number of Galley Renderings"
set yla "Filesize as a proportion of source document filesize, per galley rendering"
set yra [0:]
plot "./1.csv" i 3 every ::1 u ($3):($1/4432380.0/$3) title "Original", './2.csv' every ::1 u ($3):($1/4432380.0/$3) i 3 title "JSONified", './3.csv' every ::1 u ($3):($1/4432380.0/$3) i 3 title "Unordered dictionary", './4.csv' every ::1 u ($3):($1/4432380.0/$3) i 3 title "Ordered dictionary", './5.csv' every ::1 u ($3):($1/4432380.0/$3) i 3 title "Ordered dictionary with deltas"


