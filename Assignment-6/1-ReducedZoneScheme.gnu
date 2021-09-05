set term epslatex standalone 12
set xrange [-pi:pi]
set xlabel '$k / a^{-1}$'
set ylabel '$\omega / \sqrt{\frac{\kappa}{m}}$'
set grid
set output '1-ReducedZoneScheme.tex'
plot '1-ReducedZoneScheme.txt' u 1:2 w l t 'acoustic mode',\
'' u 1:3 w l t 'optical mode'
set output
