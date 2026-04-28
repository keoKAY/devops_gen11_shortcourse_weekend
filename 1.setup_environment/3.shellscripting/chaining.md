
## Note for chaining operators 
```bash 
nginx -v ; docker --version 
# first command works , then the second command is excuted 
docker --version &> /dev/null && docker run hello-world
# second command will not run 
dockering --version &> /dev/null && docker run hello-world

# Second command work if the first command fails 
which dockers &>/dev/null || nginx -v 
which dockers &> /dev/null && docker -v || echo "Another command " 
```

## Control flow statements in shellscripts 
1. using `case` : Just like how you use switch case in programming 
```bash 
case $option in 
    1)
    echo "First option " 
    ;; 
    2) 
    echo "Second Option"
    ;;
    *) 
    echo "Default optiion" 
    ;;  
esac 
```

- Using `if-else` 
Used in in order to add the condition to the script 


> -lt , -eq , -gt , .... 
[[ ]]

(())
