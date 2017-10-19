declare -i tid=60
for FILE in "$@"
do
	/home/karlico/dat103/skallprogram/filkontroll.sh $FILE $tid
done
