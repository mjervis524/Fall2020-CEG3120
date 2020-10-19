# Quiz 2

1. A Pull Request is created when I update my local repository with the main branch.

- False. A Pull Request is a GUI based process aided by git two merge one branch onto another. If I am updating my local repository with a remote branch, such as main, I am just doing a `git pull`

2. Write a command that would create a branch called dev1 and switch to it in a git repository.

- `git checkout -b dev1`

3. Where could I find what users are in the sudo group?

- `/etc/group` - `getent group sudo`
- `/etc/sudoers` does not contain who has sudo, more a list of rules for sudo usage
- `/etc/passwd` stores a list of users on the system, but not whether or not they have sudo

4. PATH contains absolute paths to directories where scripts / programs associated with commands exist.

- True. PATH contains a list of directories, such as `/bin` and `/sbin` where scripts / programs with associated commands exist.

5. What three things need to be created on a disk in order for my OS to put data on it?

   1. Partition table
   2. Partition(s)
   3. Filesystem
   4. (Also accepted) mount point

6. Write the netmask associated with the network prefix: `192.168.5.0 / 24`

- Network prefix: `192.168.5.0` Subnet mask: `255.255.255.0`

7. List an allocation strategy that is used by a load balancer to balance server connections.

- round robin, weight round robin, least connections, least response time

8. A hardware \_\_\_\_ can perform many roles, including Network Address Translation and acting as a DHCP server.

- Router

9. For chains in firewalls rules, it will see if the traffic matches any pattern, regardless of the order of the chain rules.

- False.

10. What service commonly runs on port 22?

- SSH
