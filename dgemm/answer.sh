#!/bin/bash

#Variable
cpu="fichier/info/info_cpu.txt"
cachel="fichier/info/info_cache.txt"

#Question 0: Informations CPU 
echo "Information CPU: "> "$cpu"
"lscpu">>"$cpu"
echo -e "\n">>"$cpu"
cat "/proc/cpuinfo">>"$cpu"

#Question 0: Informations caches de données
 echo "Cache L1:">"$cachel"
 cat /sys/devices/system/cpu/cpu0/cache/index0/* >>"$cachel"
 echo -e "\nCache L2:">>"$cachel"
 cat /sys/devices/system/cpu/cpu0/cache/index1/* >>"$cachel"
 echo -e "\nCache L3:">>"$cachel"
 cat /sys/devices/system/cpu/cpu0/cache/index2/* >>"$cachel"

 #Question 1: Récoltent mesures de performance
 make
 ./dgemm 100 80 >"fichier/fonction/tmp.dat"
 grep -e "title\|IJK" "fichier/fonction/tmp.dat">"fichier/fonction/ijk.dat"
 grep -e "title\|IKJ" "fichier/fonction/tmp.dat">"fichier/fonction/ikj.dat"
 grep -e "title\|IEX" "fichier/fonction/tmp.dat">"fichier/fonction/iex.dat"
 grep -e "title\|UNROLL" "fichier/fonction/tmp.dat">"fichier/fonction/unroll.dat"
 grep -e "title\|CBLAS" "fichier/fonction/tmp.dat">"fichier/fonction/cblas.dat"
 rm -rf "fichier/fonction/tmp.dat"

 #Question 3: Recoltent mesures de perfermances selon les flags d'optimisation 
 
 make OFLAGS=-O0
 ./dgemm 100 80 >"fichier/flags/flag0.dat"
 make OFLAGS=-O1
 ./dgemm 100 80 >"fichier/flags/flag1.dat"
 make OFLAGS=-O2
 ./dgemm 100 80 >"fichier/flags/flag2.dat"
 make OFLAGS=-O3
 ./dgemm 100 80 >"fichier/flags/flag3.dat"

 #Question 3: Recoltent mesures de perfermances selon le compilateur
 
 make CC=gcc
 ./dgemm 100 80 >"fichier/compilateur/gcc.dat"
 make CC=clang
 ./dgemm 100 80 >"fichier/compilateur/clang.dat"




