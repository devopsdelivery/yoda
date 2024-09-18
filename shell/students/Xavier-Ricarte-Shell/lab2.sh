
check_even_odd() {
    local number=$1
    local label=$2

    if [ $(( number % 2 )) -eq 0 ]; then
        echo "$label is even"
    else
        echo "$label is odd"
    fi
}

number1=$1
number2=$2
number3=$3

check_even_odd "$number1" "First number"
check_even_odd "$number2" "Second number"
check_even_odd "$number3" "Third number"


