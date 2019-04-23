README.md: guessinggame.sh
	echo "# The VBN guessing game" > README.md
	echo "## This README file was automatically generated on: " >> README.md
	date >> README.md
	echo "## The number of lines of code contained in guessinggame.sh is:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "## To run the game, type:" >> README.md
	echo "bash guessinggame.sh" >> README.md

clean:
	rm README.md
