set term epslatex standalone 12
set xrange [-2 * pi:2 * pi]
set xlabel '$k/a^{-1}$'
set ylabel '$\omega / \sqrt{\frac{\kappa}{m}}$'
set grid
set output '1-ExtendedZoneScheme.tex'
plot '1-ExtendedZoneSchemeAcousticMode.txt' u 1:2 w l t 'acoustic mode',\
'1-ExtendedZoneSchemeOpticalMode.txt' u 1:2 w l lc 2 t '',\
'' u 3:4 w l lc 2 t 'optical mode'
set output
