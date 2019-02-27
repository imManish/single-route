# Upwork Test - Single Route with Multiple Views

This repository contains the Single Route Multiple Views functionalities.

##Cloning
To clone the Test project to your local machine, run the following command

`git clone git@github.com:imManish/single-route.git /your_desired_location`

This will also clone the submodules attached to this project. The submodules will clone from the _master_ branch,
in a **detached** state.

This will prevent git from tracking file mode changes made with _chmod_.

##File Permissions and Ownerships

To make sure the file permissions are correct, a script is supplied, available at _./bin/configure.sh_. Make the file
executable by running:

`sudo chmod +x ./bin/configure.sh`

from the project root. When done, run the script as follows:

`./bin/configure.sh`

Do not run this as root or via sudo, the script will request your root password where needed. This script changes the
ownerships to your account, which it gets from the `whoami` command, and tries to figure out your Apache group, and sets
the folders to the group recursively.

The script will also make the required folders writeable.

##Composer
When checking out the project, be sure to run

`composer install` to install the vendor libraries. These libraries have been excluded from the Git repository.

##Configuration Files
To have the configuration on your local machine
_.env.development_ copy _.env_

##Database Migration
All that needs to be done now, is to run the database migration script from the project root.
`./artisan migrate`
