set style data histogram 
set style histogram clustered

#Titre
set title "Histogramme des différentes versions pour le compilateur gcc"

#Titre axe 
set xlabel "Differentes versions reduc"
set ylabel "MiB/s"

#Plage valeur
set xrange [0:8]


#Style histogramme
set style fill solid
set xtics rotate by -45



#Sauvegarder
set terminal jpeg
set output "gcc.jpeg"
plot "fichier/compilateur/gcc.dat"  using 15:xtic(1) linecolor rgb "blue", "" using 14:xtic(1) linecolor rgb "blue" 