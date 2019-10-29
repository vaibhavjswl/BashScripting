

echo -e "Enter the String "
read String
words=`echo -n $String|wc -w`
chars=`echo -n $String|wc -c`
space=`echo $words-1|bc`
echo -e "No of Words = $words\nNo of Chars = $chars\nSpaces : $space\n"


echo -e '$String'

vowels=`echo $String | grep -o -i "[aeiou]" | wc -l`

consonants=`echo $chars-$space-$vowels|bc`
	
echo -e "No of Vowels : $vowels\nNo of consonants: $consonants\n"

for a in a e i o u 
do
    echo -e "$a"
done