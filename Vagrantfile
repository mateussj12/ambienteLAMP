# _*_ mode: ruby _*_
# vi: set ft=ruby :

require "yaml"

lab = YAML.load_file("labs.yaml")

Vagrant.configure("2") do |config|
  
  lab.each do |lab|
    config.vm.define lab["name"] do |host|
      host.vm.box = lab["box"]
      host.vm.hostname = lab["hostname"]
      host.vm.network "public_network", ip: lab["ipaddress"]
      host.vm.provider "virtualbox" do |vb|
        vb.name = lab["name"]
        vb.memory = lab["memory"]
      end
    
      host.vm.provision "shell", path: lab["provision"]
    end
  end
end


