fil=$1
tid=$2

if [ -e $fil ]
then #må sjekke endring/sletting
	gammelFil=$(stat $fil -c%Y)
	while [ true ]
	do
		if [ ! -e $fil ] #ikke eksisterer
		then
			echo "Filen $fil ble slettet."
			exit 0
		elif [[ $gammelFil != $(stat $fil -c%Y) ]] #endret
		then
			echo "Filen $fil ble endret"
			exit 0
		fi
	        sleep $tid
	done
else
#må sjekke oprettelse
	while [ true ]
	do
		if [ -f $fil ] #om den eksisterer
		then
			echo "Filen $fil ble opprettet"
			exit 0
		fi
		sleep $tid
	done
fi
