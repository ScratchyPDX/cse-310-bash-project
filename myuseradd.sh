#! /bin/bash
#
# Author: 
#

# For Stage 1
# Use this function to print out the help message for -h
# or if the user does not provide a valid argument.
#
function print_usage () {
	echo "print_usage"

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
	echo "delete_user"

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
	
}


#
# This will run and call the parse_command_options function
# and pass all of the arguments to that function
#
parse_command_options "$@"

