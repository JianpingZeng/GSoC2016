set terminal eps
set output 'aliasO0.eps'
#set title "Percentage of may-alias responses" 
set auto x
set yrange [0:100]
set key outside right top vertical Right noreverse noenhanced autotitle nobox
set xtics border in scale 0,0 nomirror rotate by -45  autojustify
set ylabel "MayAlias percentage"
set style data histograms
set style histogram gap 1
set style fill solid border -1
# 2, 3, 4, 5 are the indexes of the columns; 'fc' stands for 'fillcolor'
plot 'O0.data' using 2:xtic(1) ti col fc rgb "#ff0000", '' u 3 ti col fc rgb "#00ff00", '' u 4 ti col fc rgb "#0000ff", '' u 5 ti col fc rgb "#ffff00", '' u 6 ti col fc rgb "#ff00ff"
