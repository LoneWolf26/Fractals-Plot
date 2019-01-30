#set term pdf enh fontscale 1.0 size  10.0, 10.0
#set output 'julia.pdf'
set term png fontscale 1.0 enh size 10000,10000
set output 'julia.png'

complex (x, y) = x*{1, 0}+y*{0, 1}
julia (x,y,z,n) = ( n >= 250 || abs (z) > 2.0) ? n : julia (x,y,z*z + complex (x, y), n+1)

set xrange [-0.5:0.5]
set yrange [-0.5:0.5]

#set xrange [-2.0:0.5]
#set yrange [-1.4:1.4]

set samples 1000
set isosamples 1000
set pm3d map
#set logscale z
#set palette rgb 21,22,23
#set palette rgb 33,13,10
#set view 1,0
#set hidden3d
set view map
set size square
#unset surface 
unset xtics
unset ytics
unset ztics
unset key
unset colorbox

a = -0.37
b = -0.612
splot julia (a,b,complex (x,y),0) notitle
