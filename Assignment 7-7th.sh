#chess board print

for (( i=1; i<=9; i++))
do
	for(( j=1; j<=9; j++))
	do
		tot=`expr $i + $j`

		temp=`expr $tot % 2`

		if [ $temp -eq 0 ]
		then
			echo  -n -e  " \033[47m "
		else
			echo  -n -e  " \033[40m "
		fi
	done

	echo -e -n " \033[40m " 
	echo " "
done