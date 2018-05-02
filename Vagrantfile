# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.synced_folder '.', '/vagrant'

  # VirtualBox.
  # `vagrant up virtualbox --provider=virtualbox`
  config.vm.define "virtualbox" do |virtualbox|
    virtualbox.vm.hostname = "stackstorm"
    # TODO: Try to automatically find & use the latest box from the ./builds dir?
    virtualbox.vm.box = "file://builds/st2-v2.7.0_1523648841.box"
    virtualbox.vm.network :private_network, ip: "172.16.3.3"

    config.vm.provider :virtualbox do |v|
      v.gui = false
      v.memory = 2048
      v.cpus = 2
    end
    config.vm.provision "shell", inline: "st2 --version"
  end

end