#! /bin/bash

# Test the benches that have often failed due to 
# synchronization issue

cd bin

while :
do
	>&2 echo
	>&2 echo intruder default
	>&2 echo ORG
	./STAMP-intruder.original -t4 > /dev/null

	>&2 echo TM-ARG
	./STAMP-intruder.tm-arg -t4 > /dev/null

	>&2 echo TM-FULL-DAE
	./STAMP-intruder.tm-full-dae -t4 > /dev/null

	>&2 echo
	>&2 echo intruder readme
	>&2 echo ORG
	./STAMP-intruder.original -a10 -l128 -n262144 -s1 -t4 > /dev/null

	>&2 echo TM-ARG
	./STAMP-intruder.tm-arg -a10 -l128 -n262144 -s1 -t4 > /dev/null

	>&2 echo TM-FULL-DAE
	./STAMP-intruder.tm-full-dae -a10 -l128 -n262144 -s1 -t4 > /dev/null


	>&2 echo
	>&2 echo yada readme
	>&2 echo ORG
	./STAMP-yada.original -a15 -i inputs/ttimeu1000000.2 -t4 > /dev/null


	>&2 echo TM-ARG
	./STAMP-yada.tm-arg -a15 -i inputs/ttimeu1000000.2 -t4 > /dev/null


	>&2 echo TM-FULL-DAE
	./STAMP-yada.tm-full-dae -a15 -i inputs/ttimeu1000000.2 -t4 > /dev/null
done