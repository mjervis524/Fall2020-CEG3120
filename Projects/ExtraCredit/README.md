# Extra Credit Project

To complete this project, you will need to create an openLDAP server and a client. The client will request authentication from the openLDAP server.

## OpenLDAP Server Setup (2 pts):

Install an interface system on your openLDAP server (strongly recommend `phpldapadmin`). You can reference my installation notes:

```
sudo apt-get install slapd ldap-utils
sudo dpkg-reconfigure slapd
sudo apt install phpldapadmin
sudo vim /etc/phpldapadmin/config.php
\$servers->setValue('server','base',array('dc=your_stuff,dc=also_your_stuff'));
```

[Reference article](https://www.digitalocean.com/community/tutorials/how-to-install-and-configure-openldap-and-phpldapadmin-on-an-ubuntu-14-04-server)

Using the interface, create the following structure:

- groups:
  - unicorns
    - rlupin
    - ntonks
    - sblack
  - devs
    - adumbledore
    - ntonks
    - rlupin
  - finance
    - ssnape
    - mmcgonagall
- users:
  - Albus Dumbledore
  - Severus Snape
  - Minerva McGonagall
  - Alastor Moody
  - Sirius Black
  - Remus Lupin
  - Nymphadora Tonks

## Configure a Client to Authenticate (6 pts)

## TLS Certification (2 pts)

Newer Operating Systems (Ubuntu 20.\*) are enforcing server certification.
