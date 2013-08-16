#/bin/bash

for i in {2..5}
do
	gnuplot -e "fname='$i'" b.plt
	gnuplot -e "fname='$i'" s.plt
	gnuplot -e "fname='$i'" r.plt
done
