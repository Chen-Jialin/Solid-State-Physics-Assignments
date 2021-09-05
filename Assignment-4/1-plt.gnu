set term epslatex standalone 12
set xlabel '$Z_{nuc}$'
set ylabel '$E_{ionization} (eV)$'
set output '1-E-Z.tex'
plot 'approxa.txt' w lp lw 2 lc 1 pt 1 t 'approximation (a)', 'approxb.txt' w lp lw 2 lc 3 pt 3 t 'approximation (b)'
set output
