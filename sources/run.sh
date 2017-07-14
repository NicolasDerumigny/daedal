#! /bin/bash

./do_tests.sh > raw_results 

rm output.csv
touch output.csv

echo Generated !

for nb in 1 2 3
do
	#Bayes
	for ss_nb in 0 1
	do
		cat raw_results | grep "Adtree time" | sed "$((nb + ss_nb*3))q;d" | sed 's/[^0-9.]//g' | tr -d '\n' >> output.csv
		echo -n "," >> output.csv
	done

	for ss_nb in 0 1
	do
		cat raw_results | grep "Learn time" | sed "$((nb + ss_nb*3))q;d" | sed 's/[^0-9.]//g' | tr -d '\n' >> output.csv
		echo -n "," >> output.csv
	done

	#Genome
	for ss_nb in 0 1
	do
		cat raw_results | head -500 | grep "Time =" | sed "$((nb + ss_nb*3))q;d" | sed 's/[^0-9.]//g' | tr -d '\n' >> output.csv
		echo -n "," >> output.csv
	done

	#Intruder
	for ss_nb in 0 1
	do
		cat raw_results | head -500 | grep "Elapsed time    =" | sed "$((nb + ss_nb*3))q;d" | sed 's/[^0-9.]//g' | tr -d '\n' >> output.csv
		echo -n "," >> output.csv
	done

	#Kmeans
	for ss_nb in 0 1
	do
		cat raw_results | grep "Time:" | sed "$((nb + ss_nb*3))q;d" | sed 's/[^0-9.]//g' | tr -d '\n' >> output.csv
		echo -n "," >> output.csv
	done

	#Labyrinth
	for ss_nb in 0
	do
		cat raw_results | tail -700 | grep "Elapsed time    =" | sed "$((nb + ss_nb*3))q;d" | sed 's/[^0-9.]//g' | tr -d '\n' >> output.csv
		echo -n "," >> output.csv
	done

	#SSCA2
	for ss_nb in 0 1
	do
		cat raw_results | grep "Time taken for Scalable Data Generation is " | sed "$((nb + ss_nb*3))q;d" | sed 's/Time taken for Scalable Data Generation is  //g' | sed 's/ sec.//g' | tr -d '\n' >> output.csv
		echo -n "," >> output.csv
		cat raw_results | grep "Time taken for kernel 1 is" | sed "$((nb + ss_nb*3))q;d" | sed 's/Time taken for kernel 1 is  //g' | sed 's/ sec.//g' | tr -d '\n' >> output.csv
		echo -n "," >> output.csv

		cat raw_results | grep "Time taken for all is" | sed "$((nb + ss_nb*3))q;d" | sed 's/Time taken for all is  //g' | sed 's/ sec.//g' | tr -d '\n' >> output.csv
		echo -n "," >> output.csv
	done

	#Vacation
	for ss_nb in 0 1 #the very long one is currently disabled
	do
		cat raw_results | tail -500 | grep "Time =" | sed "$((nb + ss_nb*3))q;d" | sed 's/[^0-9.]//g' | tr -d '\n' >> output.csv
		echo -n "," >> output.csv
	done

	#Yada
	cat raw_results | grep "Elapsed time                    =" | sed "$((nb))q;d" | sed 's/[^0-9.]//g' | tr -d '\n' >> output.csv
	echo ";" >> output.csv
done

NUM_BENCHS=14
#14 with yada



for nb in 0 1 2
do
	for (( nb_bench=0; nb_bench<=(NUM_BENCHS - 1); nb_bench++ ))
	do
		for tm_section in {1..15}
		do
			cat raw_results | grep "Fails:" | sed "$((nb*15 + nb_bench*15*3 + tm_section))q;d" | sed 's/[^0-9.]//g' | tr -d '\n' >> output.csv
			if [ ${tm_section} != 15 ]
			then
				echo -n "," >> output.csv
			fi
		done

		if [ ${nb_bench} != $((NUM_BENCHS - 1)) ]
		then
			echo -n "," >> output.csv
		fi
	done

	echo ";" >> output.csv
done

echo Done !