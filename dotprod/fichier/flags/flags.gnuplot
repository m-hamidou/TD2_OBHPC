set style data histogram 
set style histogram clustered

#Titre
set title "Histogramme comparant les versions selon les flags"

#Titre axe 
set xlabel "Differentes versions dotprod"
set ylabel "MiB/s"

#Plage valeur
set xrange [0:8]

#Remplissage histogram
set style fill solid
set xtics rotate by -45


#Sauvegarder
set terminal jpeg
set output "flags.jpeg"
plot "fichier/flags/flag0.dat"  using 15:xtic(1) linecolor rgb "blue" , "fichier/flags/flag1.dat" using 15:xtic(1) linecolor rgb "red" , "fichier/flags/flag2.dat" using 15:xtic(1) linecolor rgb "purple" , "fichier/flags/flag3.dat" using 15:xtic(1) linecolor rgb "green", "fichier/flags/flag0.dat"  using 14:xtic(1) linecolor rgb "blue" , "fichier/flags/flag1.dat" using 14:xtic(1) linecolor rgb "red" , "fichier/flags/flag2.dat" using 14:xtic(1) linecolor rgb "purple" , "fichier/flags/flag3.dat" using 14:xtic(1) linecolor rgb "green"