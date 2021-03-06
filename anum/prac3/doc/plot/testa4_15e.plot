set style line 1 lc rgb '#0060ad' lt 1 lw 2 pt 7 ps 1.5   # --- blue
set style line 2 lc rgb '#dd181f' lt 1 lw 2 pt 5 ps 1.5   # --- red
set style line 3 lc rgb '#00ad60' lt 1 lw 2 pt 9 ps 1.5   # --- green
set style line 4 lc rgb '#f100f1' lt 1 lw 2 pt 13 ps 1.5   # --- yellow

set terminal pngcairo
set output "testa4_15e.png"

plot "./testa4g15e.txt" with linespoints ls 1 title "Gauss",\
     "./testa4r15e.txt" with linespoints ls 2 title "Romberg",\
     "./testa4s15e.txt" with linespoints ls 3 title "Simpson",\
     "./testa4t15e.txt" with linespoints ls 4 title "Trapezoids"
