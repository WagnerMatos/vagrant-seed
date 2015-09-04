# vagrant-seed
vagrant seed for angular app

Installs yeoman, webapp generator, sass and compass

How to use:

1. create your project folder and initialize git. 

  $ mkdir project_name

  $ cd project_name

  $ git init

  $ git submodule add https://github.com/adikari/vagrant-seed.git vagrant

  $ cd vagrant

  $ vagrant up 

  $ vagrant ssh // logs you in the vm

  $ cd yeoman

You will find `yeoman/webapp` folder in your vm. This is the synced folder. You can now work locally in your `your_project/webapp` folder.


To start a new project, you can go into the `webapp` folder and run `yo webapp-generator`.

## Adding your own generators

`yo --help` lists all available generators

The one I mostly use for my angular project is `yo angular-require`. You can install your own generator too. 

If you want to add some other generator thats not installed in the VM by default, you can either send a pull request or just send me a message.


