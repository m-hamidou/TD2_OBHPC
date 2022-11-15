#!/bin/bash

#Question 1: Récoltent mesures de performance
 make
 ./dotprod 1024 100 >"fichier/fonction/tmp.dat"
 grep -e "title\|BASE" "fichier/fonction/tmp.dat">"fichier/fonction/base.dat"
 grep -e "title\|UNROLL8" "fichier/fonction/tmp.dat">"fichier/fonction/unroll8.dat"
 rm -rf "fichier/fonction/tmp.dat"

  #Question 3: Recoltent mesures de perfermances selon les flags d'optimisation 
 
 make OFLAGS=-O0
 ./dotprod 1024 100 >"fichier/flags/flag0.dat"
 make OFLAGS=-O1
 ./dotprod 1024 100 >"fichier/flags/flag1.dat"
 make OFLAGS=-O2
 ./dotprod 1024 100 >"fichier/flags/flag2.dat"
 make OFLAGS=-O3
 ./dotprod 1024 100 >"fichier/flags/flag3.dat"

 #Question 3: Recoltent mesures de perfermances selon le compilateur
 
 make CC=gcc
 ./dotprod 1024 100 >"fichier/compilateur/gcc.dat"
 make CC=clang
 ./dotprod 1024 100 >"fichier/compilateur/clang.dat"


 #Question 5: histogramme des différentes versions pour clang
gnuplot -persist "fichier/compilateur/clang.gnuplot"

#Question 5: histogramme des différentes versions pour gcc
gnuplot -persist "fichier/compilateur/gcc.gnuplot"

#Question 5: histogramme des différentes versions selon le compilateur
gnuplot -persist "fichier/compilateur/compilateur.gnuplot"

#Question 5: histogramme des différentes version selon les flags
gnuplot -persist "fichier/flags/flags.gnuplot"