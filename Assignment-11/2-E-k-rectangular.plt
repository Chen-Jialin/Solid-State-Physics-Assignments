set term epslatex standalone 12
set isosamples 500,500
set xrange [-pi:pi]
set yrange [-pi*2:pi*2]
set xlabel '$k_x / (a^{-1})$'
set ylabel '$k_y / (a^{-1})$'
set contour base
unset surface
set view map
set size ratio 2
set key at screen 0.9, 0.9
set cntrparam levels incremental -2,0.5,2
set output '2-E-k-rectangular.tex'
splot -cos(x)/2-cos(y/2) t 'unit: $(2t)$'
set output