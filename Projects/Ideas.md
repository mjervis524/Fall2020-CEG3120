During websever project, documentation includes: 
where log files are
port(s) that need to be open
firewall details
create user directories with read rules in a script
    right now: provide file of users
    future: connect to ldap server
1. Script on github
    * changes motd 
    * adds vim plugin
    * sets alias
2. Installing services
    * Apache system + service
    * Script to create users with certain rules
3. Format fixing
    * Create regex to effectively parse data
    * Emails in bad format
    * Add field to YML - split off first and last names
4. Resource sharing
    * Docker instead of singularity: network abstraction to get ports out of container
    * Create a container that runs x
    * Do something on Bender to play with slurm
5. Configuration recommendation
    * Recommend solution based on requirements set
6. Advanced topics:
    * Key & token management - awareness of corruption
    * Change management in services & systems


Install singularity & create script to avoid doing it again

Create a container that runs x
Pull resources off system for monitoring
Cloud configs
Webstack (+ firewall limitations)

## Figure out
 * git hooks
 * Connecting to a user directory (ldap)

