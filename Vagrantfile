# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

    config.vm.box = "scotch/box"
    config.vm.network "private_network", ip: "192.168.33.10"
    #config.vm.network :forwarded_port, host: 8001, guest: 8000
    config.vm.hostname = "scotchbox"
    config.vm.synced_folder "~/Code", "/home/vagrant/Code"
    
    config.vm.provider :virtualbox do |v|
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--memory", 1024]
      v.customize ["modifyvm", :id, "--name", "lamp_stack"]
    end
    
    # Optional NFS. Make sure to remove other synced_folder line too
    #config.vm.synced_folder ".", "/var/www", :nfs => { :mount_options => ["dmode=777","fmode=666"] }
  
    # Install some customizations
    config.vm.provision "shell", path: "bootstrap_general.sh"

    config.vm.provision "shell", run: "always" do |shell|
      shell.path = "bootstrap_bash_aliases.sh"
    end
end
