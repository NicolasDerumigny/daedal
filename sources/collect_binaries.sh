BENCHMARKS="STAMP-bayes STAMP-genome STAMP-intruder STAMP-kmeans STAMP-labyrinth STAMP-vacation STAMP-yada STAMP-ssca2"

make -s veryclean
echo Compiling....
make -s

rm -rf bin/*.original bin/*.tm-full-dae bin/*.tm-full-dae bin/*.tm-arg

echo "Moving binaries.... "
for BENCH in $BENCHMARKS
do
	cp ${BENCH}/bin/${BENCH}.original bin/${BENCH}.original
	cp ${BENCH}/bin/${BENCH}.tm-gran2.tm-indir4.tm-full-dae bin/${BENCH}.tm-full-dae
	cp ${BENCH}/bin/${BENCH}.tm-arg bin/${BENCH}.tm-arg
done
echo Done !