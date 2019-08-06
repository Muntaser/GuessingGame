#!/bin/bash

(( countFile=$(ls -f . | wc -l) ))

countFiles (){

while (( answer != countFile ))
do
	read -p "How many files are in the current directory? Make a guess." answer

    if (( answer == countFile )) ;
    then
        echo "Congratulate, you guessed right";
        exit

    elif ((  answer > countFile )) ;
    then
        echo "The guess was too high, try again"
    else
        echo "The guess was too low, try again"
    fi
done

}

countFiles



