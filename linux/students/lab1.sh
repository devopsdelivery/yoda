echo "Hello, pls enter your password"
read password


if  [ $password -eq "1234" ]
then
        echo "Welcome!"
else 
        echo "Pls try again"
fi