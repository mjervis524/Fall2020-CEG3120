## Written Answer:

1. Describe a scenario that would create a merge conflict.

- 2 developers clone a repository in the same moment.
- Developer 1 works on a file in the repository, commits and pushes changes to master.
- Developer 2 works on the same file, commits their work, and tries to push. They find out their local repository is out of date. To ammend, they use git pull. The pull fetches and attempts to merge the remote and local branches. There is a conflict since both developers worked on the same file the Developer 2 needs to resolve.
- Once resolved, Developer 2 can now add the file back for tracking, then commit and push now resolved conflict.

2. What is the difference between using source on a script versus running the script (with ./script_name or by calling the script by name)

- Using source on a script runs it in the current shell. Running the script with ./ or by calling it by name (assuming it is in PATH) runs the script in a subshell.

3. Storage requirement is that array of disks needs to allow a rebuild from a single disk failure. What type of RAID array would best suit the requirement?

- Accepted RAID 1 or RAID 5 here
- RAID 1 creates a mirror
- RAID 5 bulks up storage, allows one disk in an array of disks to fail. Also allows rebuild while "hot" or in use

4. What is the difference between a git pull and a Pull Request?

- git pull performs a fetch & merge between two branches in one step. These can be done the the developer / user independent of a review process.
- A Pull Request is a GUI managed request enabled by some cloud hosting repositories (such as GitHub) which allows the setting of branch managers who would be notified of a generated request to merge one branch with another.

5. Describe the traffic that is managed by an INBOUND chain for iptables / firewalls.

- Incoming traffic (traffic TO the server / computer / host) is managed by INBOUND firewall rule chains \ iptables.

6. Describe the load balancing allocation strategy of round robin connection distribution.

- In round robin allocation, when a connection request is made, the balancer goes down the list and assigns the connection to the next server in the list.

7. Given a host on a private network, how would it communicate with the outside world? The role of NAT should be used in your answer.

- Network address translation would be used to repackage the packet from its private IP to an ISP assigned address. It then uses the ISP address to communicate with world servers, which communicate back to the ISP address. The router would then repackage the received packet with the private IP address.

8. Describe a key difference between a forward proxy and a VPN.

- A VPN masks traffic between the user and VPN and between the VPN and the requested connection. A proxy only masks the originating IP address.

9. Describe a difference between running a job in the background and running a job in screen.

- Background jobs are tied to your active terminal. If the terminal is closed, the job is also terminated. screen(s) are detached from the terminal (think virtual terminals). If the terminal is closed, the jobs assigned to the screen will continue to run.

10. What service commonly runs on port 443?

- HTTPS

## Decipher:

1. Where would traffic to an IP of 10.8.45.2 be directed given a routing table of:  
   Note: This is the routing table from the AWS template system - you can run 'route -n' there to see the same table.

- Routed to "anywhere" 0.0.0.0, then routed to gateway 10.0.0.1
- Accepted either 0.0.0.0 or 10.0.0.1 for credit

2. What is the gateway address given a routing table of:

- 10.0.0.1

3. Write the CIDR notation form of a subnet with a network prefix of 172.168.5.0 and a subnet mask of 255.255.254.0

- 172.168.5.0/23
- 8 bits + 8 bits + 7 bits = 23 bits set

4. When would the following cronjob run?  
   0 18 15 \* \* backup_everything.sh

- Minute is 0, Hour is 18, Day is 15, Month is \* (every/any), Day of the Week is \* (any/every), script name is backup_everything.sh
- Runs at 6:00PM (1800 hours) on the 15th day of every month, regardless of day of the week.

5. test.sh contains the following contents.

```
#! /bin/bash
foo () {
    echo $1
}

echo $1
foo bar
```

On the command line, I run the script as follows:

```
test.sh orange banana
```

What is the output of the script?

- Outputs first argument passed to script then outputs first argument passed to function

```
orange
bar
```

## Commands:

1. Add the path /home/bob/cool_scripts to PATH (for the duration of your shell or permanently in the appropriate dotfile).

```
export PATH=$PATH:/home/bob/cool_scripts
# AND / OR
echo 'export PATH=$PATH:/home/bob/cool_scripts' >> ~/.profile
```

2. Given the following [truncated] output of git status on a repository, write commands that would put my local repository changes on the remote repository. (Assume both reference the same branch, and a pull request is not required)

Changes to be committed:  
 new file: foo.txt
Untracked files:  
 bar.txt

```
# Add untracked file first
git add bar.txt # git add * or . was also accepted
# commit new files
git commit -a -m "adding foo and bar"
# push commits to remote
git push
```

3. My local repository has been switched to a branch called 'hotfix'. Write the commands needed to merge the 'hotfix' branch with my local main branch.

```
git checkout main
git merge hotfix
git push
# assuming branch is now done
git branch -d hotfix
```

4. Write a bash if statement that check to see if the directory foo exists in the user's home directory. If foo does exist, write "Bubbles" to a file called joy.txt inside foo.

```
if [-d ~/foo]; then
   echo "Bubbles" >> ~/foo/joy.txt
fi
```

5. Write a command that would find display service / system logs for a user with UID 1005.
   - journalctl \_UID=1005

## T/F:

1. The IPv4 address of 10.6.3.90 on a host indicates that the host is on a private network / subnet.

   - True

2. The private key is the key I upload to the server I want to connect to via SSH.

   - False

3. The /etc/passwd file shows whether or not a user belongs to the sudoers group.

   - False

4. /etc/hosts & /etc/resolv.conf are examples of local files that can be used to set up DNS resolution.

   - True

5. Logs are typically stored in the /proc/ directory.

   - False
