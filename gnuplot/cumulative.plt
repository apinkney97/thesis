set term pdf size 15cm, 10cm font "Palatino"
set output "cumulative.pdf"
set log x
set key inside left
set xla "Rank in frequency table"
set yla "Cumulative distribution"
plot "./shakespeare.cumulative.txt" title "Complete Works of Shakespeare","./kjv.cumulative.txt" title "King James Bible","./paper.cumulative.txt" title "PBB11","./butterley.cumulative.txt" title "Butterley Company"
