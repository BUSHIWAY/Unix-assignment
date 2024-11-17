

function get_file_count {
    local count=$(ls -A | wc -l)
    echo "$count"
}

function check_guess {
    local correct_count=$1
    local user_guess=$2
    
    if [[ $user_guess -lt $correct_count ]]
    then
        echo "Too low! Try again."
        return 1
    elif [[ $user_guess -gt $correct_count ]]
    then
        echo "Too high! Try again."
        return 1
    else
        echo "Congratulations! You guessed correctly!"
        return 0
    fi
}

file_count=$(get_file_count)

while true
do
    echo "How many files are in the current directory?"
    read guess
    
    if [[ ! $guess =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid number."
        continue
    fi
    
    check_guess $file_count $guess && break
done
