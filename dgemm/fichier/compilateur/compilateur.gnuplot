set style data histogram 
set style histogram clustered

#Titre
set title "Histogramme comparant les versions par compilateur"

#Titre axe 
set xlabel "Differentes versions dgemm"
set ylabel "mean"

#Plage valeur
set xrange [0:7]

#Remplissage histogram
set style fill solid


#Sauvegarder
set terminal jpeg
set output "compilateur.jpeg"
plot "fichier/compilateur/clang.dat" using 9, "fichier/compilateur/gcc.dat" using 9