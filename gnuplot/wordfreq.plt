set datafile separator ","
set term pdf size 15cm, 10cm font "Palatino"
set output "wordfreq.pdf"
set log x
set log y
set xra [0.8:]
set yra [0.8:]
set xla "Rank"
set yla "Frequency"
plot "./shakespeare.nums.txt" title "Complete Works of Shakespeare","./kjv.nums.txt" title "King James Bible","./paper.nums.txt" title "PBB11","./butterley.nums.txt" title "Butterley Company"
