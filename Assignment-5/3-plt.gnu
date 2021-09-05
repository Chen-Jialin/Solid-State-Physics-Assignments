set term epslatex standalone 12
set sample 200
set grid
set xrange [-pi:pi]
set yrange [-1:1]
set xlabel "$k / a^{-1}$"
set ylabel "velocity / $\\sqrt{\\kappa/m}a$"
set key bottom right
set output "3-v-k.tex"
plot 2 * abs(sin(x / 2)) / x t "phase velocity",\
sin(x / 2) / abs(sin(x / 2)) * cos(x / 2) t "group velocity"
set output
