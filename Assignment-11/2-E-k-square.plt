set term epslatex standalone 12
set isosamples 500,500
set xrange [-pi:pi]
set yrange [-pi:pi]
set xlabel '$k_x / (a^{-1})$'
set ylabel '$k_y / (a^{-1})$'
set contour base
unset surface
set view map
set size square
set key at screen 0.95, 0.95
set cntrparam levels incremental -2,0.5,2
set output '2-E-k-square.tex'
splot -cos(x)-cos(y) t 'unit: $(2t)$'
set output