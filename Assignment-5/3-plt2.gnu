set term epslatex standalone 12
unset key
set xlabel '$\omega / (\sqrt{\kappa / m})$'
set ylabel '$g(\omega) / (N / \pi\sqrt{\kappa/m})$'
set xrange [0:2]
set yrange [0:3]
set grid
set output "3-g-omega.tex"
plot 1 / sqrt(1-(x / 2)**2)
set output
