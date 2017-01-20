# puppet_vagrant_windows_repo

Puppet Repository to demonstrate using kitchen-puppet with Vagrant and Windows Server


This demonstrates using test-kitchen, puppet to build a server.


## Workstation Software Installation

The first thing you need to do is install the test-kitchen environment on your workstation.
A useful link is: http://misheska.com/blog/2013/12/26/set-up-a-sane-ruby-cookbook-authoring-environment-for-chef/

The follow instructions are for Windows PC (it will be similar for Mac):

1. Download and install virtualbox from https://www.virtualbox.org/wiki/Downloads.
2. Download and install Vagrant from https://www.vagrantup.com/downloads.html
3. Download and install the Windows RubyInstaller for 64 bit Ruby 2.1 from http://rubyinstaller.org/downloads.
   * Check the option to add ruby to your path.
4. Download and install the Windows Ruby DevKit for use with Ruby 2.0 and above (64bits version only) from http://rubyinstaller.org/downloads.
5. Configure the Ruby DevKit
   * In the devkit directory run “ruby dk.rb init”.
   * Check the config.yml generated has added the the path of the ruby install, if not add it manaully.
   * run “ruby dk.rb install” to bind it to the ruby installation.
6. Then install the following gems
  * gem install librarian-puppet
  * gem install test-kitchen
  * gem install kitchen-puppet
  * gem install kitchen-vagrant
7. git clone the repository https://github.com/neillturner/puppet_vagrant_windows_repo

## Check everything installed
In a command window in the puppet_vagrant_windows_repo directory run command
```
kitchen list
```
This will return a list if everything is correctly installed.

NOTE: See https://atlas.hashicorp.com/mwrock for Windows Vagrant boxes.
We are using the box mwrock/windows2016 but these expire and change over time.

## Create Server in Virtual Box on your Workstation.
```
kitchen create base-mwrock-Windows2016 -l debug
```

## Build the server.
```
kitchenconverge base-mwrock-Windows2016 -l debug
```

## Verify the server.
```
Not supported yet
```

## Shutdown the server.
```
kitchen destroy base-mwrock-Windows2016 -l debug
```

##
