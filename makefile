
README.md: guessinggame.sh
	touch README.md
	echo "  # Project: Guessing Game" > README.md
	echo "    " >> README.md
	echo "Date is: " >> README.md
	echo "$$(date)   " >> README.md
	echo "    " >> README.md
	echo "Number of lines is:"  >> README.md
	echo  $$(wc -l guessinggame.sh | egrep -o "[0-9]+") >> README.md


clean:
	rm 	README.md
