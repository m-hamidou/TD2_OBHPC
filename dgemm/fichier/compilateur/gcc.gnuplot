set style data histogram 
set style histogram clustered

#Titre
set title "Histogramme des différentes versions pour le compilateur gcc"

#Titre axe 
set xlabel "Differentes versions dgemm"
set ylabel "mean"

#Plage valeur
set xrange [0:7]

#Remplissage histogram
set style fill solid


#Sauvegarder
set terminal jpeg
set output "gcc.jpeg"
plot "fichier/compilateur/gcc.dat" using 9

