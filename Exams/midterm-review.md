# Midterm Review Outline for Fall 2020

[Link to Repo all students are in](https://github.com/pattonsgirl/Fall2020-CEG3120-ExamReview)

## Git / GitHub

- add
- commit
- push
- pull
- clone vs fork
- branch
- checkout
- merge conflicts
- stashing
- clean vs reset
- GitHub issues
- GitHub pull requests

## Linux

- file & directory permissions
- ownership & groups
- PATH manipulation
- File System - what to expect in root folders
  - /etc/
  - /var/
  - /proc/
  - /dev/
  - /bin/ & /sbin/
  - /boot/
  - /home/
- User / group management
  - Configuration files to note:
    - /etc/passwd , /etc/group, /etc/shadow
- Service management
  - systemctl
- System logs
  - Log files can cause disk bloat
  - journalctl
    - Find user associated logs
    - Find service related logs

## IT Knowledge

- Partition tables, partitions, filesystems
- Mounting partition(s)
  - Role of /etc/fstab
- RAID 0, 1, 5, 6
  - Given situation, which RAID would you recommend?
- ~~Backups & Imaging~~
- cronjobs
  - Where to add a cronjob - crontab
  - Format of a cronjob

## Networking

- dotted quad (format of IPv4 address)
- host
- subnet
  - Network prefix
  - Subnet mask
  - CIDR notation (substitute for long form subnet mask)
- gateway
- routing
  - Read a routing table for where traffic will be routed
- MAC addresses
  - arp table associates MAC with IP
- Hardware interface names (common)
  - eth0, wifi0 / wlan0, lo
- DNS
  - Local hostname resolution
    - Role of /etc/hosts
    - Role of /etc/resov.conf
- Ports (common)
  - 22 (SSH), 80 (HTTP), 443 (HTTPS)
  - Read output of netstat with flags (-n -t -l)
- What an IP address tells you about the network:
  - Private network prefixes:
    - 10.0.0.0/8
    - 192.168.0.0/16
    - 172.16.0.0/12
  - Local network prefixes:
    - 127.0.0.0/8
- Router (as separate hardware):
  - NAT
  - DHCP
- Firewall
  - INPUT, OUTPUT, FORWARD chains
  - Can be managed at router level or host level
  - Host level management in Linux: iptables
  - Packet is blocked by first rule that matches in chain
- Forward proxy vs VPN
- Reverse proxies:
  - Caching
  - Load balancing (web servers)
    - Monitor services?
    - Allocation strategies
    - Connection maintainence
    - Session persistence

## System level process control

- Background processes
  - move to background
  - bring to foreground
- User generated process independent of terminal connection
  - nohup
  - screen

## Bash

- IO redirection
- Different types of quotes
- ~/.bashrc vs ~/.profile
- source vs ./ vs running script using name
- Variables and accessing variable values
- Use arguments
  - In a script
  - In a script function
- Conditionals (using the `test` command)
- if statements
- functions
- ~~Regular expressions~~

## SSH

- keys (private vs public)
