set style data histogram 
set style histogram clustered

#Titre
set title "Histogramme comparant les versions par compilateur"

#Titre axe 
set xlabel "Differentes versions reduc"
set ylabel "MiB/s"

#Plage valeur
set xrange [0:8]

#Remplissage histogram
set style fill solid
set xtics rotate by -45


#Sauvegarder
set terminal jpeg
set output "compilateur.jpeg"
plot "fichier/compilateur/clang.dat"  using 15:xtic(1) linecolor rgb "blue", "fichier/compilateur/gcc.dat"  using 15:xtic(1) linecolor rgb "red","fichier/compilateur/clang.dat"  using 14:xtic(1) linecolor rgb "blue", "fichier/compilateur/gcc.dat"  using 14:xtic(1) linecolor rgb "red"
