unset key
mySplitX = 0.33  
set samples 200

set multiplot
set border 7        
set origin 0,0
set size mySplitX,1
set margins -1, 0, -1, -1   
set xlabel " "  
set format x "%g"
set mxtics 10
set logscale x
set xrange [1:30]
set ylabel "Dl^{TT}[{/Symbol=10 m}K^2]"
set ytics nomirror
set mytics 5
set yrange [0:7000]
plot "<(sed -n '1,30p' CMB-TT_data_Planck_cleaned.dat)" u 2:3:($3-$4):($3+$5) lc 7 pt 7 ps 1 w errorbars notitle, "LCDM00_cl.dat"  u 1:2 notitle w l lc 6, "closed_cl.dat" u 1:2 w l lc 4 notitle


set arrow 1 from screen mySplitX
set border 13        
set origin mySplitX,0
set size 1-mySplitX,1
set margins 0, -1, -1, -1   
set xlabel " l"
set xtics add (30)
set mxtics 5
unset logscale x
set xrange [30:2500]
unset ylabel
unset ytics
set y2tics
set my2tics 5
set format y2 ""
set label "LCDM" at 2000,6700 right
set arrow from 2100,6700 to 2200,6700  linewidth 3 linecolor rgb "#0000FF" nohead
set label "closed" at 2000,6300 right
set arrow from 2100,6300 to 2200, 6300 linewidth 3 linecolor rgb "#FFC000" nohead
plot "<(sed -n '30,80p' CMB-TT_data_Planck_cleaned.dat)" every 4 u 2:3:($3-$4):($3+$5) lc 7 pt 7 ps 1 notitle,"<(sed -n '80,260p' CMB-TT_data_Planck_cleaned.dat)" every 15 u 2:3:($3-$4):($3+$5) lc 7 pt 7 ps 1 notitle,"<(sed -n '260,500p' CMB-TT_data_Planck_cleaned.dat)" every 50 u 2:3:($3-$4):($3+$5) lc 7 pt 7 ps 1 notitle, "<(sed -n '500,1500p' CMB-TT_data_Planck_cleaned.dat)" every 50 u 2:3:($3-$4):($3+$5) lc 7 pt 7 ps 1 notitle, "LCDM00_cl.dat"  u 1:2 w l lc 6 t "LCDM", "closed_cl.dat" u 1:2 w l lc 4 t "closed"

unset multiplot


