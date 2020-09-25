# Project 1:

## Goal:
Create a script that, once run, will configure your server and user directory to your custom preferences.  This script will be the only thing to run on a new system.  Internal to the script should be any service restarts needed - a user should not need to do any additional action.

### Repository Layout:
Please add the instructor (`pattonsgirl`) to your repository.
1. Resources Page:  
   * Document resources you used to complete the project requirements.  
   * Use markdown to create section headers for organization
2. README Page: 
   * Living usage document that will have a section for each Project
   * README will be updated each project with a "changelog"
   * Use markdown to create section headers for organization
3. Script folder:  
   * Will have scripts corresponding to each project 

### Script installation requirements:
1. `git clone` followed by your project repository URL
2. `chmod` to allow user / others to run script
3. `./script_name` the first time the script is run

### Script functionality requirements:
1. Add script to PATH:
   * If the command to run your script does not exist
      * Add the script directory to your PATH by appending to `.profile`
   * **Leave a note in the script output that the user needs to reload .profile** 
      * (ie. Run `$ source .profile` to reload).
   * Note: it is understood that the command version of using the script cannot be done until it is added to path, thus the installation requirements above.
2. Change the `motd` to reflect information you are interested in.
   * Remove at least one default message
   * Add at least one custom message (i-nodes used, processes running, friendly fortune...)
3. Make `vim` more you.
   * Install the plugin to the directories needed.  Store pre requisite files on your github page, if needed.  If it requires a large download, have your script use `curl` or `wget` to download the file for installation.
4. Make `alias` your ally.
   * Add `alias` commands to `.bashrc` if they do not exist.
      * [Hint](https://stackoverflow.com/questions/9783507/how-can-i-check-in-my-bashrc-if-an-alias-was-already-set)
   * Required alias:
      * An `alias` called `aws-ssh` that contains the command and parameters you have been using to log on to your AWS Educate system.
         * Note: it is understood that this is "useless" when logged on to your AWS system.  But it won't create errors ;)
         * Note for the note: This is a useful alias to have in your local terminal.  If using Moba + Cygutils, you'll need to create a file called `.bash_profile` and add you aliases there.
   * Second `alias` ideas: 
      * Truncate a common git command / git process into a lovely one liner 
      * A lighthearted command that prints out something nice (think `cowsay` or `fortune`)
   * Your script should reload `.bashrc` for you.
   * **Leave a note in the script output that the user needs to do this** 
      * (ie. Run `$ source .bashrc` to reload).
5. Create a `-help` option
   * Help should detail what the script does

### Extra Credit (10%)
Impress me.  Pick from one of below options:
* Scrape a daily message off a website for the `motd`
* Create a user interface with tput
   * https://ryanstutorials.net/bash-scripting-tutorial/bash-user-interface.php
* Create a menu for the script
   * https://www.shellscript.sh/tips/getopts/ 
   * Minimum of –i (dash i) for install & -h (dash h) for help / usage


## Submission
1. Add instructor to your repository
2. Zip your repository and upload it to Pilot
   * This appeases the Dropbox gods and is a failsafe / timestamp