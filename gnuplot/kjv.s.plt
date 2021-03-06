set term pdf size 15cm, 10cm font "Palatino"
set datafile separator ","
set output "kjv-s.pdf"
set key inside left
set xla "Number of Galley Renderings"
set yla "Filesize as a proportion of source document filesize"
plot './2.csv' every ::1 u ($3):($1/4432380.0) i 3 title "Original", './3.csv' every ::1 u ($3):($1/4432380.0) i 3 title "Unordered dictionary", './4.csv' every ::1 u ($3):($1/4432380.0) i 3 title "Ordered dictionary", './5.csv' every ::1 u ($3):($1/4432380.0) i 3 title "Ordered dictionary with deltas"


