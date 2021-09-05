set term epslatex standalone 12
set xrange [-pi:pi]
set grid
set xlabel '$k / a^{-1}$'
set ylabel '$E / \epsilon_0$'
set output '4-E-k.tex'
plot '4-E-k.txt' u 1:2 w l t '$E_A$', '' u 1:3 w l t '$E_B$'
set output