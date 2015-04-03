# vagrant-seed
seed for angular app

Installs yeoman, webapp generator, sass and compass

How to use:

1. create your project folder. 

`mkdir project_name`

2. initialize git in your project

`cd project_name`

`git init`

3. clone `vagrant-angular-seed` as git submodule

`git submodule add https://github.com/adikari/vagrant-seed.git vagrant`

4. rename your vm hostname. Open `Vagrantfile` and rename hostname to whatever you want.

5. initialize your vm

`cd vagrant`

`vagrant up`

`vagrant ssh`

`cd yeoman`

You will find `yeoman/webapp` folder in your vm. This is the synced folder. You can now work locally in your `your_project/webapp` folder.

