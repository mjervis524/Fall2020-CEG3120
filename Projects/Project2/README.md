# Project 2-1

## The Story

You've been convinced to join a startup company as their primary (and right now, only) systems admin. It's unclear on what their goal is, but the pay is good, so you're ready for the ride.

While the new CEO runs around looking for developers, you've been tasked with getting some basic infrastructure setup. You will start by building out a directory service (phonebook) and a project repository server. Since the CEO loves linux, they requested that you use SLAPD for the directory service and GitLab as the repository server.

Since you've walked the startup road before, you know to thoroughly document everything. Since email is not a good documentation method, you're going to separately keep track of things on a private GitHub repository.

## Objectives:

- Create a VPC on AWS.
- Create two instances, one for GitLab, one for SLAPD.
  - Note: You may use AMIs
- Attach an IP address to each.
- Install the services on the instances
- Make networking decisions and open ports appropriately.
  - Utilize Security Groups
    - Edit inbound (ports for our services, traffic on 10.0.0.0/16)
    - Outbound does not need to be edited
- Configure GitLab for LDAP authentication

### AWS Educate Quick Link:

- [Sign in to AWS educate](https://www.awseducate.com/signin/SiteLogin)

## Deliverables:

The primary deliverable for this project is a changelog that includes the components listed below. You may do this by using GitHub Projects in your class repository or by manually keeping track of changes. Since we will be building from this project, your log should include a date and/or time implemented. You may choose to break up the tasks into their own changelogs. I would get templating then check with me if you have concerns about your changelog.

I have no preference on if you manipulate your repository via the AWS instance that was created for us or use your repository locally.

### Changelog management includes:

- A record of changes made over time
- Justifications
- Resources used as a template for your installation / configuration
- Screenshot of the result

### Template changelog:

Note: I tend to think of changelogs as old events sinking to the bottom - therefore most recent changes end up at the top.

# Changelog Project 2

## Instances on AWS

### 10/14/2020 created instances

Created instance from GitLab AMI  
Created instance from Ubuntu AMI to create SLADP server  
[screenshot of instances]

## Configure VPC in AWS

### 10/15/2020 security group update

Based on security rules from templated AWS system.  
Added inbound rules for SSH (22) traffic  
Need ports x open for SLADP and x open for GitLab.  
[screenshot of security group rules]

### 10/14/2020 creation

Created VPC via wizard with default network rules  
VPC id:  
[screenshot of VPC]
