set term epslatex standalone 12
set xlabel '$\frac{\mu_BB}{k_BT}$'
set ylabel '$C$ (unit: $k_B$ per atom)'
set xrange [0:10]
unset key
set output '3-C.tex'
plot x**2 * 4 / (exp(-x) + exp(x))**2
set output
