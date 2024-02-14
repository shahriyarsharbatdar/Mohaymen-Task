#!/bin/bash

echo "Please enter your name:"
read username

right_log="${username}_right_answer.log"
wrong_log="${username}_wrong_answer.log"

target=$((RANDOM % 1000))

echo "Welcome to the number guessing game, $username!"
echo "Please guess a number between 0 and 1000, or type 'exit' to quit:"

while true; do
    read guess  
    if [[ $guess == "exit" ]]; then
        echo "Thank you for playing. Goodbye!"
        exit
    elif [[ $guess =~ ^[0-9]+$ ]]; then
        if [[ $guess -eq $target ]]; then
            echo "Congratulations! You guessed the number $target correctly."
            echo "$(date '+%Y-%m-%d %H:%M:%S') - $username successfully guessed the number $target." >> "$right_log"
            break
        elif [[ $guess -lt $target ]]; then
            echo "Your guess is less than the target number. Please try again:"
            echo "$(date '+%Y-%m-%d %H:%M:%S') - $username guessed a number less than $target." >> "$wrong_log"
        else
            echo "Your guess is greater than the target number. Please try again:"
            echo "$(date '+%Y-%m-%d %H:%M:%S') - $username guessed a number greater than $target." >> "$wrong_log"
        fi
    else
        echo "Please enter a valid number, or type 'exit' to quit."
    fi
done

