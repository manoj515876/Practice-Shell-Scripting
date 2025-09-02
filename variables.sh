#!/bin/bash

# Printing Hello World!
# echo "Hello World!"

# Storing Manoj in variable
# name=Manoj
# echo "Hello $name"

# Command lines Arguments $1->First argument $2->Second argument
# echo "Hi $1"
# echo "Hi $2, How can I help you"

# Taking username and Password from user.
# echo "Enter your username"
# read USERNAME
# echo "Your username is $USERNAME"

# echo "Enter your password"
# read -s PASSWD

# Any output can store in a variable we can use $() for example 
# TIMESTAMP=$(date)
# echo "Script excuted at $TIMESTAMP"

# Taking 2 numbers and printing it's sum
# NUMBER1=$1
# NUMBER2=$2
# SUM=$(($NUMBER1+$NUMBER1))
# echo "Sum of $NUMBER1 and $NUMBER2 is $SUM"

# Arrays 
# NAME=("Manoj" "Mantha" "Thippeswamy" "Radha" "Mounika")
# echo "First Name : ${NAME[0]}"
# echo "Last Name : ${NAME[4]}"
# echo "Name : ${NAME[@]}"

# # Special Variables
# echo "All variables passed : $@" 
# echo "Number of variables : $#"
# echo "Script name : $0"
# echo "Present Working Directory : $PWD"
# echo "Home working directory : $HOME"
# echo "which user is running the script : $USER"
# echo "process id of current script : $$"
# sleep 10 &
# echo "Process id of last command in background : $!"

# Condition Check given number is greater than or equal to 100 or not 

# if [ $1 -ge 100 ]
# then
#     echo "Given number $1 is greater than or equal to 100"
# else
#     echo "Given number $1 is less than 100"
# fi

#Installing sql and git using shell scripting

# USERID=$(id -u)

# if [ $USERID -ne 0 ]
# then 
#     echo "Error:: You must have sudo access to the script"
#     exit 1
# fi

# dnf list installed mysql

# if [ $? -ne 0 ]
# then    
#     dnf install mysql -y
#     if [ $? -ne 0 ]
#     then 
#         echo "Mysql installation failure"
#         exit 1
#     else 
#         echo "Mysql installation Success"
#     fi
# else 
#     echo "Already mysql installed"
# fi


# dnf list installed git 

# if [ $? -ne 0 ]
# then 
#     dnf install git 
#     if [ $? -ne 0 ]
#     then 
#         echo "Git installing faliure"
#         exit 1
#     else 
#         echo "Git installing success"
#     fi 
# else 
#     echo "Git already Installed"
# fi


# Installing packages using functions and Colours 

# Colours
# N="\e[30m"
# R="\e[31m"
# G="\e[32m"
# Y="\e[33m"

# USERID=$(id -u)

# VALIDATE(){
#     if [ $1 -ne 0 ]
#     then 
#         echo -e "$2 ... $R FAILURE $N"
#         exit 1
#     else 
#         echo -e "$2 ... $G SUCCESS $N"
#     fi
# }

# if [ $USERID -ne 0 ]
# then 
#     echo "ERROR:: You must have sudo access to excute the script"
#     exit 1
# fi

# dnf list installed mysql

# if [ $? -ne 0 ]
# then 
#     dnf install mysql -y 
#     VALIDATE $? "Installing mysql"
# else 
#     echo -e "MySQL already isntalled ... $Y SKIPPING $N"
# fi

# dnf list installed git 

# if [ $? -ne 0 ]
# then 
#     dnf install git -y 
#     VALIDATE $? "Installing Git"
# else 
#     echo -e "Git already Installed ... $Y SKIPPING $N"
# fi 


# Logs 

LOG_FOLDER="/var/log/shellscripts-logs"
LOG_FILE=$(echo $0 | cut -d "." -f1)
TIMESTAMP=$(date +%Y-%m-%d-%H-%M-%S)
LOG_FILE_NAME="$LOG_FOLDER/$LOG_FILE-$TIMESTAMP.log"

mkdir -p /var/log/shellscripts-logs

echo "Script started executing at: $TIMESTAMP" &>>$LOG_FILE_NAME