# NodeJS-Dev-env

## How to use

Fork this repo and clone the contents down onto your local device.

Go into the 'dev-environments' folder and run 'vagrant up'.

Then go to [this url](http://development.local:3000/) to see the app.

## How to edit the app

Go into the /app folder to make changes -- The app.js file is called and run in the environment/provision.sh file.

### Set Up

The Environment has been created using the HashiCorp Vagrant development environment and the Virtual Box Hypervisor.

Once Vagrant has been initiated, the Vagrantfile is set up with the Ubuntu xenial64 kernel. This was chosen as it is a robust and reliable operating system.

The virtual machine is then configured with the IP address 192.168.10.100. For ease of access this IP was aliased *to development.local*

A script was then set up to create an environment suitable for NodeJS. The provision.sh file was connected to the Vagrantfile to execute certian bash commands.

This was used to install the web-server Nginx and NodeJS version 6.

The production process manager, PM2, was also installed as a load-balancer, and so that the server will automatically be refreshed if the server goes down.

PM2 is then used to run the app.
