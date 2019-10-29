

another='y'

while [ $another == 'y' ]
do

	echo -e " Enter:\n1.Generate Multiplication table\n2.Calculate a power b"
	echo -e "3.Generate Seriver\n4.Generate Fibonacci Series\n5.Reverse a Number"
	echo -e "Your Choice : "

	read choice

	case $choice in
		1) echo -e "Enter Which Number's Table to generate"
		   read number

		   i=1
		   while [ $i -le 10 ]
		   do
		   		res=`echo $number\*$i|bc -l`
				echo -e "$number * $i = $res "
				i=`echo $i+1|bc`
			done
			;;

		2) echo -e "Enter The Number and its power separated by a space :"
		   read num expo

		   res=1

		   while [ $expo -gt 0 ]
		   do
		   		res=`echo $res\*$num|bc -l`
		   		expo=`echo $expo-1|bc`
		   done

		   echo -e "Result : $res"
		   ;;

		3) echo -e "Enter Till where to generate series :"
		   read n

		   printf "1 "
		   i=2
		   while [ $i -le $n ]
		   do
		   	printf "+ 1/$i"
		   	i=`echo $i+1|bc`
		   done
		   ;;
		
		4) echo -e "Enter Number Of Fibonacci Terms to generate"
		   read n

		   f1=0
		   f2=1
		   f3=0

		   printf "0,1"

		   n=`echo $n-2|bc`

		   while [ $n -gt 0 ]
		   do
		   	f3=`echo $f1+$f2|bc`
		   	f1=$f2
		   	f2=$f3
		   	printf ",$f3"
		   	n=`echo $n-1|bc`
		   done
		   ;;

		5) echo -e "Enter the number to reverse :"
		   read num 

		   rev=0

		   while [ $num -ne 0 ]
		   do
		   	rev=`echo $rev\*10+$num%10|bc`
		   	num=`echo $num/10|bc`
		   done

		   echo -e "Result : $rev"
		   ;;
		
	esac
	
	echo -e "\nDo you want to do another Operation (y/n) :"
	read another

done