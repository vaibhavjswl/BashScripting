
continue="y"

a=0
t=0


while [ $continue = "y" ]
do
	echo -e "1. To check if string are Equal or not "
	echo -e "2. To concatenate Two strings"
	echo -e "3. To Find the length of a String "
	echo -e "4. To reverse a string "
	echo -n "Your Choice : "
	read choice

	case $choice in
		1)
			echo -e "Enter First string"
			read str1

			echo -e "Enter second string"
			read str2

			if [ $str1 = $str2 ]
			then
				echo " String are equal"
			else
				echo " Strings are not equal"
			fi
			;;

		2)	echo -e "Enter First string"
			read str1

			echo -e "Enter second string"
			read str2
			
			len2=`echo -n $str2|wc -c`

			for (( i=1; i<=len2; i++ ))
			do
				char=`echo $str2|cut -c $i`
				str1=`echo $str1$char`
			done

			echo -e "Concatenated String : $str1"
			
			;;

		3)	echo -e "Enter string"
			read str1
			
			len=`echo -n $str1|wc -c`

			echo -e "Length of $str1 is $len"
			
			;;

		4)	echo -e "Enter  string"
			read str
			
			len=`echo -n $str|wc -c`
			
			for (( i=len; i>=1; i-- ))
			do
				char=`echo $str|cut -c $i`
				rev=`echo $rev$char`
			done

			echo -e "reversed String : $rev"	
			 ;;
6
		5)
			continue="n";;

		esac
done