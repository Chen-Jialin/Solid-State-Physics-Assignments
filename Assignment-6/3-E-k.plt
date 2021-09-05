set term epslatex standalone 12
set xrange [-pi:pi]
set grid
set xlabel '$k / a^{-1}$'
set ylabel '$E / \epsilon_0$'
unset key
set output '3-E-k-ReducedZoneScheme.tex'
plot '3-E-k-ReducedZoneScheme.txt' u 1:2 w l, '' u 1:3 w l
set output
set xrange [-2 * pi:2 * pi]
set output '3-E-k-ExtendedZoneScheme.tex'
plot '3-E-k-ReducedZoneScheme.txt' u 1:2 w l lc 1, '3-E-k-ExtendedZoneScheme-Optical.txt' u 1:2 w l lc 2, '' u 3:4 w l lc 2
set output