#! /bin/bash
#
# Author: David Ward
#

# For Stage 1
# Use this function to print out the help message for -h
# or if the user does not provide a valid argument.
#
function print_usage () {
	echo "Usage:"
	echo "myuseradd.sh -a <login> <passwd> <shell> - add a user account"
	echo "myuseradd.sh -d <login>  - remove a user account"
	echo "myuseradd.sh -h          - display this usage message"

	#
	# Add your implementation of print_usage here
	#
}



# For Stage 2:
# Use this function to delete users as described in the
# assignment instructions.
# 
# Arguments : userToDelete
#
function delete_user () {
	# echo "delete_user"
	userToDelete=$1
	# echo "User to delete: $userToDelete"
	if id -u "$userToDelete" >/dev/null 2>&1; then
			sudo userdel -r "$userToDelete"
			echo "User $userToDelete is deleted"
	else
			echo "ERROR: $userToDelete does not exist"
	fi
}



# For Stage 3:
# Use this function to add users as described in the
# assignment instructions
#
# Arguments : userToAdd, userPassword, shell
# 
function add_user () {
	echo "add_user"
}



# For Stage1:
# Use this function to parse the command line arguments
# provided to this script to determine which function
# to call.  Example, if -h is used, print_usage
#
function parse_command_options () {

# This is just pseudo code.  Look at the BASH Script
# tips document for an example of how to use case in BASH
#	case 
#	-h
#		print_usage
#	-d 
#		delete_user
#	-a
#		add_user
	case $1 in
		-h) 
			print_usage
			;;
		-d)
			delete_user $2
			;;
		-a)
			add_user
			;;
		*)
			echo -e "ERROR: Invalid option: $1\n"
			print_usage
			;;
	esac
}


#
# This will run and call the parse_command_options function
# and pass all of the arguments to that function
#
parse_command_options "$@"

