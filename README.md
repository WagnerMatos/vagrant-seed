# vagrant-seed
vagrant seed for angular app

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


To start a new project, you can go into the `webapp` folder and run `yo webapp-generator`.

If you want to use some other generator, you can run `yo --help` to see all the available generators. The one I mostly use for my angular project is `yo angular-require`. You can install your own generator too. If you want to add some other generator thats not installed in the VM by default, you can either send a pull request or just send me a message.


