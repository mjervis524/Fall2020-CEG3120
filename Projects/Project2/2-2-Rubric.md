# Project 2 - Milestone 2 Rubric

1. Cloud Formation Template - / 8 pts total

   - creates VPC
   - creates security groups + needed ports
   - creates openldap server
   - creates git server

2. User creation from file - / 4 pts total

   - reads list of users from file
   - checks if run with sudo OR run as root
   - checks if `devops` group exists, else creates it
   - For each user:
     - creates user, gives user a password
     - prints username + password to file
     - adds user to group `devops`
     - puts a file in each user's home directory (via `/etc/skel`, `echo`, or `cp`)
