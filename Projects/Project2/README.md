# Project 2-2

Now that you have learned some lessons about AWS, you are going to vow to try not to mess with all of those buttons again. Your goal is to create a Cloud Formation template, a file that creates a VPC and the minimum servers so far (one git server, one openldap server)

The CEO has convinced a few developers to join in on the fun! Since the [directory service isn't ready for deployment](../ExtraCredit/README.md), you are going to write a script that creates users, groups, and gives those users access to certain places.

### AWS Educate Quick Link:

- [Sign in to AWS educate](https://www.awseducate.com/signin/SiteLogin)

## Objectives:

1. Create a CloudFormation Template that can recreate your environment installation - from the VPC to the two systems we have created so far.

- [Example Configuration File](https://github.com/mkijowski/aws-cf-templates/blob/master/course-templates/ceg3400.yml)
- Scope: "configurations" will include software that needs to be installed on the system. Do not deal with configuration files.
- Note: to keep costs down, you will need to delete your Cloud Stack in between build & test

2. Create a **bash** script that reads a file of usernames and performs the following actions:

- Name of file with users should be an argument passed to the script
- Script should check if it was run with `sudo`. If not, script should terminate with a message that `sudo` is required.
- If the groups `devops` does not exists, you should create it
- For each user:
  - Create a password for the user
  - The username and password should be printed to a different file. The filename should include a timestamp via the `date` command
  - Each user should be added to the group `devops`
  - The group `devops` should have group permissions in the user's directories
  - Place a welcome message file in each user's home directory. Make sure the user (at minimum) can read it.

```
Content of sample username file:
hpotter
hgranger
rweasley
nlongbottom
dmalfloy
```

## Deliverables:

In your GitHub repository, create a new folder called `CloudFormations`. In this folder is where you will place your template. This template should have a history of commits as you build out/ adjust the template.

The user creation script should be put in your `scripts` directory of you repository.

Submit a zipped version of your repository to Pilot.
