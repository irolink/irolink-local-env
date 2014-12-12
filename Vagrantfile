# -*- mode: ruby -*-
# vi: set ft=ruby :

unless ENV["IROLINK_LOCAL_ENV_PRIVATE_IP"]
  raise "Environment Variable [IROLINK_LOCAL_ENV_PRIVATE_IP] is not defined."
end

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # config.vm.box = "ubuntu/trusty64"
  config.vm.box = "tetsuwo/centos-6.5"
  config.hostsupdater.remove_on_suspend = true

  config.vm.define :web do |web|
    web.vm.hostname = "www.irolink.local"
    web.vm.network :private_network, ip: ENV["IROLINK_LOCAL_ENV_PRIVATE_IP"]
  end

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
    vb.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    vb.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
  end

  config.vm.synced_folder "./", "/vagrant/",
      type: "rsync",
      mount_options: ["dmode=777", "fmode=666"],
      rsync__exclude: ".git/"

  # config.vm.provision :shell, :path => "bootstrap.sh"
end
