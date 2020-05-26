function game()
{
	a=$(ls -l | grep "^-" | wc -l)
	flag=0
	while [ $flag != 1 ]
	do
		echo "Enter your guess"
		read g
		if [ $g -lt $a ]
		then
			echo "your guess is less than the correct guess"
		elif [ $g -gt $a ]
		then
			echo "your guess is greater then the correct guess"
		else
			echo "your guess is correct!!!"
			echo "congratulation!!!"
			flag=1
 			break;
		fi
	done
}
echo "guess the number of files in the current directory"
game
