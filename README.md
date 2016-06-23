# Tournament Results

 Develop PostgreSQL database schema to store the game matches between players. write code to query this data and determine the winners of various games.

# Required Before Installation

* Have VirtualBox
	* You can download it from (virtualbox.org)[https://www.virtualbox.org/wiki/Downloads]
* Have Vagrant
	* You can download it from (vagrantup.com)[https://www.vagrantup.com/downloads.html]
* Have VM configuration
	* Clone / download the configuration
    	* ```git clone https://github.com/udacity/fullstack-nanodegree-vm.git fullstack ```
    	This will give you a directory named fullstack
* Run the virtual machine
	* Using the terminal, change directory to fullstack/vagrant (cd fullstack/vagrant), then type vagrant up to launch your virtual machine
	* Once it is up and running, type vagrant ssh to log into it. This will log your terminal in to the virtual machine, and you'll get a Linux shell prompt. When you want to log out, type exit at the shell prompt.  To turn the virtual machine off (without deleting anything), type vagrant halt. If you do this, you'll need to run vagrant up again before you can log into it.

# Installation

 * Clone / download the project
    * ```git clone https://github.com/elmasria/tournament-results.git ```
 * Navigate to repository
    * ``` cd tournament-results ```
 * Replace tournament folder on fullstack/vagrant/tournament by the files that have been cloned from previous repository
 * run the test file
 	* ``` python tournament_test.py ```