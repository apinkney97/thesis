set boxwidth 0.1 absolute
set offset 0.5,0.5,0,0
# set style fill solid
set style fill pattern

set term pdf size 7.6in, 4.66in font "Palatino"
set output "survey.pdf"

set yrange[-0.1:10.1]
set ytics nomirror out
set xtics out
set ylabel 'User Rating'
set xlabel 'Rendering ID'

set key bottom right

plot 'survey1.data' using 2:4:xticlabels(1) linetype -3 notitle,\
     '' using ($2-0.30):4:3:7:6 with candlesticks linetype 1 fs pattern 1 title 'q1' whiskerbars,\
     '' using ($2-0.30):5:5:5:5 with candlesticks linetype -1 linewidth 2 notitle,\
     '' using ($2-0.30):8 with points pt 1 lc rgb 'black' notitle,\
     'survey2.data'\
        using ($2-0.15):4:3:7:6 with candlesticks linetype 2 fs pattern 2 title 'q2' whiskerbars,\
     '' using ($2-0.15):5:5:5:5 with candlesticks linetype -1 linewidth 2 notitle,\
     '' using ($2-0.15):8 with points pt 1 lc rgb 'black' notitle,\
     'survey3.data'\
        using ($2):4:3:7:6 with candlesticks linetype 3 fs pattern 4 title 'q3' whiskerbars,\
     '' using ($2):5:5:5:5 with candlesticks linetype -1 linewidth 2 notitle,\
     '' using ($2):8 with points pt 1 lc rgb 'black' notitle,\
     'survey4.data'\
        using ($2+0.15):4:3:7:6 with candlesticks linetype 4 fs pattern 5 title 'q4' whiskerbars,\
     '' using ($2+0.15):5:5:5:5 with candlesticks linetype -1 linewidth 2 notitle,\
     '' using ($2+0.15):8 with points pt 1 lc rgb 'black' notitle,\
     'survey5.data'\
        using ($2+0.30):4:3:7:6 with candlesticks linetype 5 fs pattern 6 title 'q5' whiskerbars,\
     '' using ($2+0.30):5:5:5:5 with candlesticks linetype -1 linewidth 2 notitle,\
     '' using ($2+0.30):8 with points pt 1 lc rgb 'black' notitle,\
     NaN lc rgb "black" title "median",\
     NaN with points pt 1 lc rgb "black" title "mean"


