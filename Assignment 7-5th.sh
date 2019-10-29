

#Calculate factorial of a numver



echo -e -n "Enter the number :"
read no


factorial=1

for (( i=1; i<=no; i++))
do
	factorial=`echo $i*$factorial|bc -l`
done

echo -e "Factorial of $no is $factorial"