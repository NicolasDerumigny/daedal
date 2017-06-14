BENCHMARKS="STAMP-bayes STAMP-genome STAMP-intruder STAMP-kmeans STAMP-labyrinth STAMP-vacation STAMP-yada"


echo Compiling....
make -s

rm -rf bin/*

echo "Moving binaries.... (STAMP-ssca2 is not targetted right now because no loops are marked)"
for BENCH in $BENCHMARKS
do
	cp ${BENCH}/bin/${BENCH}.original bin/${BENCH}.original
	cp ${BENCH}/bin/${BENCH}.tm-gran2.tm-indir4.tm-dae bin/${BENCH}.tm-dae
done
echo Done !