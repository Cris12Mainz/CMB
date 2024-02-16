set ylabel "{/Symbol W}_i"
set xlabel "a"
set logscale x
set xrange [10**(-14) :3]
set key  at 0.000000000008, 0.5
plot "explanatory00_background.dat" u (1/(1+$1)):($11/$16) w l lw 2  lc 10 t "{/Symbol W}_{cdm}", "explanatory00_background.dat" u (1/(1+$1)):($10/$16) w l lw 2 lc 7 t "{/Symbol W}_b", "explanatory00_background.dat" u (1/(1+$1)):($14/$16) w l lw 2 lc 8 t "{/Symbol W}_{L}", "explanatory00_background.dat" u (1/(1+$1)):(($15+$9)/$16) w l lw 2 t "{/Symbol W}_r"
