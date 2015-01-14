set offset 1,1,1,1
plot 'fsizes.dat' using 2:3:(sprintf("%s", $1)) with labels point pt 7 offset char 1,1 notitle

