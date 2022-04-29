#!/bin/bash

# A function to build the structure
function buildStructure()
{
    echo "Building the structure"
    mkdir root
    mkdir -p root/(users,files,bin,lib)
}

# A function to create five directories for five users in the Users directory
function createUserDirectories()
{
    cd root
    cd users
    echo "Creating user directories"
    for (( i = 1; i <= 5; i++ ))
        do
        mkdir user$i
    done
    # User directories are named as User1, User2, User3, User4, User5
    
}

# A function to create 20 files in the Files directory
function createFileDirectories()
{
    echo "Creating files ....."
    cd /root/files
    # Files must be of types txt, jpg, gz, iso, log, exe only
    types=(".txt", ".jpg", ".gz", ".iso", ".exe")
    # The text files MUST NOT be empty (i.e. they must contain some randome texts)
    # The file types MUST be passed as an argument to this function as array
    # To generate a random number, use the command $RANDOM
    # To generate a random number between two numbers, use the command $(( RANDOM % (max - min) + min ))
    for (( i = 1; i <= 20; i++ ))
        randomNum='expr (($RANDOM%6))'
        touch file$i.${types[$randomNum]}
    done
    
 
}

# A function to send messages to the users
function sendMessage()
{
    echo "Sending messages to users"
    users=(53, 50, 59, 60, 62)
    # A message indicating the sending of special files to special users displayed in the terminal windows of those users
    
    # The txt files in the Files directory are sent to user1 in the Users directory
    # The jpg files in the Files directory are sent to user2 in the Users directory
    # The gz files in the Files directory are sent to user3 in the Users directory
    # The iso files in the Files directory are sent to user4 in the Users directory
    # The log files in the Files directory are sent to user5 in the Users directory

    
}

# A function to clean up all the exe files in the Files directory
function cleanUp()
{
    echo "Cleaning up files"
    cd root/files
    find /root/files -iname "*.exe" -exec rm {} \;
}


# A function to display the contents of the structure 
function displayStructure()
{
    echo "Displaying the structure"
    tree $root
}


# --------------------------- Main Program ---------------------------- #

# First, you MUST use the Miami University Linux server to run this script


# Open five different terminal windows (Do this using the ssh command five times)


# Display pts of the terminal windows so that you can know which terminal window is associated with which user


# Call the functions in the order that they are written in the script above

buildStructure
createUserDirectories
createFileDirectories
cleanUp
displayStructure
