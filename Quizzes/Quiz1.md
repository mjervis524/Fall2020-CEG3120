# Quiz 1

1. Write a command to clone the repository https://github.com/pattonsgirl/shiny-griffo.git
* git clone https://github.com/pattonsgirl/shiny-griffo.git
* git clone git@github.com:pattonsgirl/shiny-griffo.git 

2. Write a command that gives all users (anyone who logs on the system), permission to read, write, and execute a script called my_script.sh
* chmod a+rwx my_script.sh

3. Provide a difference between a public and private ssh key.
* A private key file begins with RSA PRIVATE KEY
* A public key file doesn't
* Private key - for machine that will make the connection, permissions locked to u+rw
* Public key - place on system(s) you want to connect to

4. Name two ways discussed so far for a user to leave a job running after they log out / disconnect from the terminal.
* Screen & nohup

5. In which folder in the Linux filesystem do configuration files usually exist?
* /etc/

6. When permantly storing a mount configuration in /etc/fstab is it better to use the device name (such as /dev/sdb1) or the UUID?
* UUID

7. Name a difference between using a RAID 5 and a RAID 6 array.
* RAID 5 allows for 1 disk failure - RAID 6 allows for 2

8. Write a command to amend the $PATH environment variable to include the folder /usr/my_scripts
* export PATH=$PATH:/usr/my_scripts

