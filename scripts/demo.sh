#! /bin/bash

# PATH requirement
	# Check existence
	# export script directory to PATH
	# Append that line to .profile
modify_PATH () {
	echo "Inside modify_PATH function"

}
# Alias requirement
	# Check existence
	# create aliases
	# append aliases to .bashrc

# Vim plugin requirement
	# pick plugin - download or keep folder in repo?
	# Create / ammend .vimrc (vim needs to know about the plugins

# MOTD requirement
	# create a message
	# delete unwanted messages

# Help page requirement
	# check if -help was an argument given
print_HELP () {
	echo "Help is here"
	# fill in with useful info about what the script is doing
}

# Something about functions
modify_PATH
# call print_HELP IF -help was the argument
if [[ $1 = '-help' ]]; then
	echo "That's a fact"
	#call print_HELP
fi


