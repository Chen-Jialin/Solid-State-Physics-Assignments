reset
set term epslatex standalone 12
unset key
set xlabel '$x$ / nm'
set ylabel '$E$ / eV'
x_1 = 4
x_2 = 8
gap = 1.4
offset_1 = 1
offset_2 = 0.3
set xrange [-8:8]
set yrange [-2:2]
set arrow nohead from -x_2,-1.92/2+offset_2 to -x_1,-1.92/2+offset_2 lc rgb 'black'
set arrow nohead from x_1,-1.92/2+offset_2 to x_2,-1.92/2+offset_2 lc rgb 'black'
set arrow nohead from -x_2,1.92/2+offset_2 to -x_1,1.92/2+offset_2 lc rgb 'black'
set arrow nohead from x_1,1.92/2+offset_2 to x_2,1.92/2+offset_2 lc rgb 'black'
set arrow nohead from -x_1,1.92/2-offset_1+(6.63e-34/2/pi)**2/(2*0.068*9.11e-31)*(pi/(2*x_1*1e-9))**2/1.6e-19+offset_2 to x_1,1.92/2-offset_1+(6.63e-34/2/pi)**2/(2*0.068*9.11e-31)*(pi/(2*x_1*1e-9))**2/1.6e-19+offset_2 lc rgb 'black'
set arrow nohead from -x_1,1.92/2-offset_1+(6.63e-34/2/pi)**2/(2*0.068*9.11e-31)*(2*pi/(2*x_1*1e-9))**2/1.6e-19+offset_2 to x_1,1.92/2-offset_1+(6.63e-34/2/pi)**2/(2*0.068*9.11e-31)*(2*pi/(2*x_1*1e-9))**2/1.6e-19+offset_2 lc rgb 'black'
set arrow nohead from -x_1,1.92/2-offset_1+(6.63e-34/2/pi)**2/(2*0.068*9.11e-31)*(3*pi/(2*x_1*1e-9))**2/1.6e-19+offset_2 to x_1,1.92/2-offset_1+(6.63e-34/2/pi)**2/(2*0.068*9.11e-31)*(3*pi/(2*x_1*1e-9))**2/1.6e-19+offset_2 lc rgb 'black'

set arrow nohead from -x_1,-1.92/2+(1.4-offset_1)-(6.63e-34/2/pi)**2/(2*0.45*9.11e-31)*(pi/(2*x_1*1e-9))**2/1.6e-19+offset_2 to x_1,-1.92/2+(1.4-offset_1)-(6.63e-34/2/pi)**2/(2*0.45*9.11e-31)*(pi/(2*x_1*1e-9))**2/1.6e-19+offset_2 lc rgb 'black'
set arrow nohead from -x_1,-1.92/2+(1.4-offset_1)-(6.63e-34/2/pi)**2/(2*0.45*9.11e-31)*(2*pi/(2*x_1*1e-9))**2/1.6e-19+offset_2 to x_1,-1.92/2+(1.4-offset_1)-(6.63e-34/2/pi)**2/(2*0.45*9.11e-31)*(2*pi/(2*x_1*1e-9))**2/1.6e-19+offset_2 lc rgb 'black'
set arrow nohead from -x_1,-1.92/2+(1.4-offset_1)-(6.63e-34/2/pi)**2/(2*0.45*9.11e-31)*(3*pi/(2*x_1*1e-9))**2/1.6e-19+offset_2 to x_1,-1.92/2+(1.4-offset_1)-(6.63e-34/2/pi)**2/(2*0.45*9.11e-31)*(3*pi/(2*x_1*1e-9))**2/1.6e-19+offset_2 lc rgb 'black'

set output '1-bandstructure.tex'
plot 0 lc rgb "#EEEEEE"
set output
