loggfil=$1
declare -i sum=0
read -p"Hva er hendelsen? " hendelseInput
hendelseFil=""
declare -i i=0 #for å sjekke etter partall
declare -i tall=0
for line in $(cat $loggfil)
do
	if [[ $((i % 2)) -eq 1 ]]
	then
		if [[ "$hendelseInput" == "$hendelseFil" ]]
		then
			tall=$(( line ))
			sum=$sum+$tall
		fi
	elif [[ $((i % 2)) -eq 0 ]]
	then
		hendelseFil=$line
	fi
	i=$i+1
done
echo $sum
