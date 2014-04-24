# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  
  # the box we want
  config.vm.box = "hashicorp/precise64"

  # sync folders.                       #Local dir, #VM dir
  config.vm.synced_folder ENV["HOME"] + "/Develop", "/develop", create: true

  # attain local IP
  config.vm.network "public_network"

  # update apt-get 
  config.vm.provision "shell", inline: "apt-get update"

  # ---------- Shell, TODO change to rbenv or cookbooks
  config.vm.provision :shell, :path => "shell/curl.sh"
  config.vm.provision :shell, :path => "shell/rvm.sh",  :args => "stable"
  #config.vm.provision :shell, :path => "shell/ruby.sh", :args => "1.9.3"
  config.vm.provision :shell, :path => "shell/ruby.sh", :args => "2.0.0"
  config.vm.provision :shell, inline: "gem install compass bson_ext"

  # ---------- Chef 
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

# ---------- Shell

#config.vm.provision :shell, :path => "shell/rbenv.sh"
#config.vm.provision :shell, :path => "shell/gem.sh"
config.vm.provision :shell, :path => "shell/virtualenvwrapper.sh"
config.vm.provision :shell, :path => "shell/grunt.sh"
config.vm.provision :shell, :path => "shell/bower.sh"

end
