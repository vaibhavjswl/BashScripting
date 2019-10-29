
another='y'

while [ $another == 'y' ]
do

	echo -e " Enter:\n1.Addition\n2.Subtraction\n3.Division\n4.Multiplication\n5.Exit\n"
	echo -e "Your Choice : "

	read choice

	echo -e "Enter 2 Numbers : "
	read a b

	case $choice in
		1)	result=`echo $a+$b|bc -l`
			echo -e "Result : $result"
			;;
		2)	result=`echo $a-$b|bc -l`
			echo -e "Result : $result"
			;;

		3)	quotient=`echo $a/$b|bc -l`
			echo -e "Quotient : $quotient"
			;;
		
		4)	result=`echo $a\*$b|bc -l`
			echo -e "Result : $result"
			;;
	esac

	echo "Do you want to do another Operation (y/n) :"
	read another
done