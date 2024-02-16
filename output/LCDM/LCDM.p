### split log/lin plots
#reset session

mySplitX = 0.33  # split point of log/lin in screen coordinates
mySplitY = 0.33  # split point of upper/lower plots in screen coordinates
myLeftMargin = 10
myRightMargin = 4

#unset key
set samples 200
set multiplot
    set border 7
    set origin 0,mySplitY
    set size mySplitX,1-mySplitY
    set margins myLeftMargin, 0, 0, -1   # l,r,b,t
    unset xlabel
    set format x ""
    set mxtics 10
    set logscale x
    set xrange [1:30]
    set ylabel "D_l^{TT}[{/Symbol=10 m}K^2]"
    set ytics nomirror
    set mytics 5
    set yrange [0:6000]
    plot "<(sed -n '1,30p' CMB-TT_data_Planck_cleaned.dat)" u 2:3:($3-$4):($3+$5) lc 2 pt 7 ps .5 w errorbars notitle, "LCDM00_cl.dat"  u 1:2 notitle w l lc 4

    set arrow 1 from screen mySplitX, graph 0 to screen mySplitX, graph 1 nohead dt 3
    set border 13
    set origin mySplitX,mySplitY
    set size 1-mySplitX,1-mySplitY
    set margins 0, myRightMargin, 0, -1   # l,r,b,t
    set xlabel " "
    set mxtics 5
    unset logscale x
    set xrange [30:2500]
    unset ylabel
    unset ytics
    set y2tics
    set my2tics 5
    set format y2 ""
    plot "<(sed -n '30,80p' CMB-TT_data_Planck_cleaned.dat)" every 4 u 2:3 lc 2 pt 7 ps 1 notitle,"<(sed -n '80,260p' CMB-TT_data_Planck_cleaned.dat)" every 15 u 2:3 lc 2 pt 7 ps 1 notitle,"<(sed -n '260,500p' CMB-TT_data_Planck_cleaned.dat)" every 50 u 2:3 lc 2 pt 7 ps 1 notitle, "<(sed -n '500,1500p' CMB-TT_data_Planck_cleaned.dat)" every 50 u 2:3 lc 2 pt 7 ps 1 notitle, "LCDM00_cl.dat"  u 1:2 notitle w l lc 4, "LCDM00_cl.dat"  u 1:2 notitle w l lc 4,

    set border 7
    set origin 0,0
    set size mySplitX,mySplitY
    set margins myLeftMargin, 0, -1, 0   # l,r,b,t
    set xlabel "l"  center offset 28,0
    set logscale x
    set xrange [1:30]
    set format x "%g"
    set xtics
    set xtics add (30)
    set mxtics 10
    set ylabel "{/Symbol=10 D}D_l^{TT}[{/Symbol=10 m}K^2]"
    set yrange [-600:600]
    set ytics 300 nomirror
    unset y2tics
    plot "<(sed -n '1,30p' CMB-TT_data_Planck_cleaned.dat)" u 2:6:($3-$4):($3+$5) w errorbars lc 2 pt 7 ps .5  notitle, "LCDM00_cl.dat" u 1:($2-$2) notitle w l lc 4

    set border 13
    set origin mySplitX,0
    set size 1-mySplitX,mySplitY
    set margins 0, myRightMargin, -1, 0   # l,r,b,t
    set xlabel "l"
    unset logscale x
    set xrange [30:2500]
    set mxtics 5
    unset ylabel
    unset ytics
   #set y2tics 30 nomirror
    set y2range[-600:600]
    set format y2 "%g"
   # set my2tics 4 
    plot "<(sed -n '30,80p' CMB-TT_data_Planck_cleaned.dat)" every 4 u 2:6:($3-$4):($3+$5) w errorbars lc 2 pt 7 ps .5 notitle,"<(sed -n '80,260p' CMB-TT_data_Planck_cleaned.dat)" every 15 u 2:6:($3-$4):($3+$5) lc 2 pt 7 ps .5 w errorbars notitle,"<(sed -n '260,500p' CMB-TT_data_Planck_cleaned.dat)" every 50 u 2:6:($3-$4):($3+$5) lc 2 pt 7 ps .5 w errorbars notitle, "<(sed -n '500,1500p' CMB-TT_data_Planck_cleaned.dat)" every 50 u 2:6:($3-$4):($3+$5) lc 2 pt 7 ps .5 w errorbars notitle, "LCDM00_cl.dat"  u 1:($2-$2) notitle w l lc 4,

##unset multiplot
###code
