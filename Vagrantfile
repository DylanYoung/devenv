# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  config.vm.box = "ubuntu-12.04"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/precise/current/precise-server-cloudimg-amd64-vagrant-disk1.box"

  # addition sync folders.
  config.vm.synced_folder "sync/", "/develop", create: true

  # attain local IP
  config.vm.network "public_network"

  # Chef 
  config.omnibus.chef_version = :latest

  config.vm.provision "chef_solo" do |chef|
    #chef.nfs = true
    chef.custom_config_path = "./chef/Vagrantfile"

    chef.cookbooks_path = "./chef/cookbooks"
    chef.data_bags_path = "./chef/data_bags"
    
    chef.add_recipe "python"
    chef.add_recipe "hipsnip-mongodb"
    chef.add_recipe 'vim'
    chef.add_recipe 'git'
    chef.add_recipe 'nginx'
  end

  # Shell
  #config.vm.provision :shell, :path => "shell/rbenv.sh"
  #config.vm.provision :shell, :path => "shell/gem.sh"
  config.vm.provision :shell, :path => "shell/virtualenvwrapper.sh"
end
