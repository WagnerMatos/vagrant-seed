# -*- mode: ruby -*-
# vi: set ft=ruby :

VERSION = "2"

Vagrant.configure(VERSION) do |config|
  config.vm.box = "precise32"
  config.vm.hostname = "vagrant-seed"

  config.vm.box_url = "http://files.vagrantup.com/precise32.box"

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine.
  config.vm.network :forwarded_port, host: 9000, guest: 9000

  # Share an additional folder to the guest VM
  config.vm.synced_folder "../", "/home/vagrant/yeoman"

  # Create a private network, which allows host-only access to the machine
  config.vm.network :private_network, ip: "192.168.40.10"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision :puppet, :module_path => "modules" do |puppet|
    puppet.manifests_path = "manifests"
    puppet.manifest_file  = "default.pp"
  end

end
