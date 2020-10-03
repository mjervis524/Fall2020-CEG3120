#! /bin/bash

# PATH requirement
	# Check existence
	# export script directory to PATH
	# Append that line to .profile
modify_PATH () {
	echo "Inside modify_PATH function"
	# check existence
	echo 'export PATH=$PATH:/home/ubuntu/Fall2020-CEG3120/scripts' \
		 >> ~/.profile

}
# Alias requirement
	# Check existence
	# create aliases
	# append aliases to .bashrc
add_ALIAS (){
	# create ssh alias
	# alias aws-ssh="ssh -i demo.key ubuntu@52.3.26.208"
	echo 'alias aws-ssh="ssh -i demo.key ubuntu@52.3.26.208"' \
		 >> ~/.bashrc  
	# create other alias
}

# Vim plugin requirement
	# pick plugin - download or keep folder in repo?
	# Create / ammend .vimrc (vim needs to know about the plugins
plugin_VIM() {
	# only clone plugin IF directory does not exist
	if [ -d ~/.vim/pack/vendor/start/nerdtree ];then
		echo "nerdtree already installed"
		# update / do git pull on directory
	else 
		git clone https://github.com/preservim/nerdtree.git \
			 ~/.vim/pack/vendor/start/nerdtree
	fi 
	vim -u NONE -c "helptags ~/.vim/pack/vendor/start/nerdtree/doc" \
		 -c q
	# added autocmd vimenter * NERDTree to ~/.vimrc
	echo 'autocmd vimenter * NERDTree' >> ~/.vimrc
}

# MOTD requirement
	# create a message
	# delete unwanted messages
modify_MOTD () {
	# Note: numbers in front indicate order of messages 
		#(00-* will print before 98-*)
	# sudo rm /etc/update-motd.d/50-motd-news
	# sudo chmod -x /etc/update-motd.d/50-motd-news
	# echo "You are the best!" > /path/to/motd/folder/70-my-message
	# change permissions & change ownership & change group of that file
}

# Help page requirement
	# check if -help was an argument given
print_HELP () {
	echo "Help is here"
	# fill in with useful info about what the script is doing
}

# Something about functions
modify_PATH

# plugin_VIM
# call print_HELP IF -help was the argument
if [[ $1 = '-help' ]]; then
	echo "That's a fact"
	#call print_HELP
fi


