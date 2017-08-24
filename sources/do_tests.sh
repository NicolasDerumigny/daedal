#! /bin/bash


# Run all the STAMP benchs
trap "exit" INT


cd bin

>&2 echo
>&2 echo bayes default
>&2 echo ORG
sudo ./STAMP-bayes.original -t4

>&2 echo TM-ARG
sudo ./STAMP-bayes.tm-arg -t4

>&2 echo TM-DAE
sudo ./STAMP-bayes.tm-dae -t4

>&2 echo TM-FULL-DAE
sudo ./STAMP-bayes.tm-full-dae -t4

>&2 echo bayes readme
>&2 echo ORG
sudo ./STAMP-bayes.original -v32 -r4096 -n10 -p40 -i2 -e8 -s1 -t4

>&2 echo TM-ARG
sudo ./STAMP-bayes.tm-arg -v32 -r4096 -n10 -p40 -i2 -e8 -s1 -t4

>&2 echo TM-DAE
sudo ./STAMP-bayes.tm-dae -v32 -r4096 -n10 -p40 -i2 -e8 -s1 -t4

>&2 echo TM-FULL-DAE
sudo ./STAMP-bayes.tm-full-dae -v32 -r4096 -n10 -p40 -i2 -e8 -s1 -t4


>&2 echo
>&2 echo genome default
>&2 echo ORG
sudo ./STAMP-genome.original -t4

>&2 echo TM-ARG
sudo ./STAMP-genome.tm-arg -t4

>&2 echo TM-DAE
sudo ./STAMP-genome.tm-dae -t4

>&2 echo TM-FULL-DAE
sudo ./STAMP-genome.tm-full-dae -t4

>&2 echo
>&2 echo genome readme
>&2 echo ORG
sudo ./STAMP-genome.original -g16384 -s64 -n16777216 -t4

>&2 echo TM-ARG
sudo ./STAMP-genome.tm-arg -g16384 -s64 -n16777216 -t4

>&2 echo TM-DAE
sudo ./STAMP-genome.tm-dae -g16384 -s64 -n16777216 -t4

>&2 echo TM-FULL-DAE
sudo ./STAMP-genome.tm-full-dae -g16384 -s64 -n16777216 -t4

>&2 echo
>&2 echo intruder default
>&2 echo ORG
sudo ./STAMP-intruder.original -t4

>&2 echo TM-ARG
sudo ./STAMP-intruder.tm-arg -t4

>&2 echo TM-DAE
sudo ./STAMP-intruder.tm-dae -t4

>&2 echo TM-FULL-DAE
sudo ./STAMP-intruder.tm-full-dae -t4

>&2 echo
>&2 echo intruder readme
>&2 echo ORG
sudo ./STAMP-intruder.original -a10 -l128 -n262144 -s1 -t4

>&2 echo TM-ARG
sudo ./STAMP-intruder.tm-arg -a10 -l128 -n262144 -s1 -t4

>&2 echo TM-DAE
sudo ./STAMP-intruder.tm-dae -a10 -l128 -n262144 -s1 -t4

>&2 echo TM-FULL-DAE
sudo ./STAMP-intruder.tm-full-dae -a10 -l128 -n262144 -s1 -t4


>&2 echo
>&2 echo kmeans low contention
>&2 echo ORG
sudo ./STAMP-kmeans.original -m40 -n40 -t0.00001 -i inputs/random-n65536-d32-c16.txt -p4

>&2 echo TM-ARG
sudo ./STAMP-kmeans.tm-arg -m40 -n40 -t0.00001 -i inputs/random-n65536-d32-c16.txt -p4

>&2 echo TM-DAE
sudo ./STAMP-kmeans.tm-dae -m40 -n40 -t0.00001 -i inputs/random-n65536-d32-c16.txt -p4

>&2 echo TM-FULL-DAE
sudo ./STAMP-kmeans.tm-full-dae -m40 -n40 -t0.00001 -i inputs/random-n65536-d32-c16.txt -p4


>&2 echo
>&2 echo kmeans high contention
>&2 echo ORG
sudo ./STAMP-kmeans.original -m15 -n15 -t0.00001 -i inputs/random-n65536-d32-c16.txt   -p4

>&2 echo TM-ARG
sudo ./STAMP-kmeans.tm-arg -m15 -n15 -t0.00001 -i inputs/random-n65536-d32-c16.txt   -p4

>&2 echo TM-DAE
sudo ./STAMP-kmeans.tm-dae -m15 -n15 -t0.00001 -i inputs/random-n65536-d32-c16.txt   -p4

>&2 echo TM-FULL-DAE
sudo ./STAMP-kmeans.tm-full-dae -m15 -n15 -t0.00001 -i inputs/random-n65536-d32-c16.txt   -p4


>&2 echo
>&2 echo labyrinth readme
>&2 echo ORG
sudo ./STAMP-labyrinth.original -i inputs/random-x512-y512-z7-n512.txt -t4

>&2 echo TM-ARG
sudo ./STAMP-labyrinth.tm-arg -i inputs/random-x512-y512-z7-n512.txt -t4

>&2 echo TM-DAE
sudo ./STAMP-labyrinth.tm-dae -i inputs/random-x512-y512-z7-n512.txt -t4

>&2 echo TM-FULL-DAE
sudo ./STAMP-labyrinth.tm-full-dae -i inputs/random-x512-y512-z7-n512.txt -t4



>&2 echo
>&2 echo ssca2 default
>&2 echo ORG
sudo ./STAMP-ssca2.original -t4

>&2 echo TM-ARG
sudo ./STAMP-ssca2.tm-arg -t4

>&2 echo TM-DAE
sudo ./STAMP-ssca2.tm-dae -t4

>&2 echo TM-FULL-DAE
sudo ./STAMP-ssca2.tm-full-dae -t4

>&2 echo
>&2 echo ssca2 readme
>&2 echo ORG
sudo ./STAMP-ssca2.original -s20 -i1.0 -u1.0 -l3 -p3 -t4

>&2 echo TM-ARG
sudo ./STAMP-ssca2.tm-arg -s20 -i1.0 -u1.0 -l3 -p3 -t4

>&2 echo TM-DAE
sudo ./STAMP-ssca2.tm-dae -s20 -i1.0 -u1.0 -l3 -p3 -t4

>&2 echo TM-FULL-DAE
sudo ./STAMP-ssca2.tm-full-dae -s20 -i1.0 -u1.0 -l3 -p3 -t4

>&2 echo
>&2 echo vacation low contention
>&2 echo ORG
sudo ./STAMP-vacation.original -n2 -q90 -u98 -r1048576 -t4096 -c4

>&2 echo TM-ARG
sudo ./STAMP-vacation.tm-arg -n2 -q90 -u98 -r1048576 -t4096 -c4

>&2 echo TM-DAE
sudo ./STAMP-vacation.tm-dae -n2 -q90 -u98 -r1048576 -t4096 -c4

>&2 echo TM-FULL-DAE
sudo ./STAMP-vacation.tm-full-dae -n2 -q90 -u98 -r1048576 -t4096 -c4


>&2 echo
>&2 echo vacation high contention
>&2 echo ORG
sudo ./STAMP-vacation.original -n4 -q60 -u90 -r1048576 -t4194304 -c4

>&2 echo TM-ARG
sudo ./STAMP-vacation.tm-arg -n4 -q60 -u90 -r1048576 -t4194304 -c4

>&2 echo TM-DAE
sudo ./STAMP-vacation.tm-dae -n4 -q60 -u90 -r1048576 -t4194304 -c4

>&2 echo TM-FULL-DAE
sudo ./STAMP-vacation.tm-full-dae -n4 -q60 -u90 -r1048576 -t4194304 -c4


>&2 echo
>&2 echo yada readme
>&2 echo ORG
sudo ./STAMP-yada.original -a15 -i inputs/ttimeu1000000.2 -t4

>&2 echo TM-ARG
sudo ./STAMP-yada.tm-arg -a15 -i inputs/ttimeu1000000.2 -t4

>&2 echo TM-DAE
sudo ./STAMP-yada.tm-dae -a15 -i inputs/ttimeu1000000.2 -t4

>&2 echo TM-FULL-DAE
sudo ./STAMP-yada.tm-full-dae -a15 -i inputs/ttimeu1000000.2 -t4
