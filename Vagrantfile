# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  config.vm.box = "hashicorp/precise64"

  # addition sync folders.
  config.vm.synced_folder ENV["HOME"] + "/Develop", "/develop", create: true

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
    chef.add_recipe 'nodejs'
  end

  # Shell
  #config.vm.provision :shell, :path => "shell/rbenv.sh"
  #config.vm.provision :shell, :path => "shell/gem.sh"
  config.vm.provision :shell, :path => "shell/virtualenvwrapper.sh"
  config.vm.provision :shell, :path => "shell/grunt.sh"
  config.vm.provision :shell, :path => "shell/bower.sh"
  config.vm.provision :shell, :path => "shell/compass.sh"
end
