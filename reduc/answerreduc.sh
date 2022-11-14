#!/bin/bash

#Question 1: Récoltent mesures de performance
 make
 ./reduc 1024 1000 >"fichier/fonction/tmp.dat"
 grep -e "title\|BASE" "fichier/fonction/tmp.dat">"fichier/fonction/base.dat"
 grep -e "title\|UNROLL8" "fichier/fonction/tmp.dat">"fichier/fonction/unroll8.dat"
 rm -rf "fichier/fonction/tmp.dat"

  #Question 3: Recoltent mesures de perfermances selon les flags d'optimisation 
 
 make OFLAGS=-O0
 ./reduc 1024 1000 >"fichier/flags/flag0.dat"
 make OFLAGS=-O1
 ./reduc 1024 1000 >"fichier/flags/flag1.dat"
 make OFLAGS=-O2
 ./reduc 1024 1000 >"fichier/flags/flag2.dat"
 make OFLAGS=-O3
 ./reduc 1024 1000 >"fichier/flags/flag3.dat"

 #Question 3: Recoltent mesures de perfermances selon le compilateur
 
 make CC=gcc
 ./reduc 1024 1000 >"fichier/compilateur/gcc.dat"
 make CC=clang
 ./reduc 1024 1000 >"fichier/compilateur/clang.dat"