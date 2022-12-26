# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
	config.vm.define "vm_01" do |vm_01|
		vm_01.vm.box = "generic/ubuntu2004"
		vm_01.vm.provider "vmware_desktop" do |v|
			v.vmx["memsize"] = "2048"
			v.vmx["numvcpus"] = "1"
			v.vmx["displayname"] = "vm_01"
		end
		vm_01.vm.network "private_network", ip: "192.168.1.2"
		vm_01.disksize.size = "20GB"
		vm_01.vm.hostname = "vm01"
	end
	config.vm.define "vm_02" do |vm_02|
		vm_02.vm.box = "generic/ubuntu2004"
		vm_02.vm.provider "vmware_desktop" do |v|
			v.vmx["memsize"] = "2048"
			v.vmx["numvcpus"] = "1"
			v.vmx["displayname"] = "vm_02"
		end
		vm_02.vm.network "private_network", ip: "192.168.1.3"
		vm_02.disksize.size = "20GB"
		vm_02.vm.hostname = "vm02"
	end
end
