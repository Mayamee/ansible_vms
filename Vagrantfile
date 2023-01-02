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
		vm_01.vm.network "private_network", ip: "10.100.1.2"
		# vm_01.disksize.size = "20GB"
		vm_01.vm.synced_folder ".", "/vagrant"
		vm_01.vm.hostname = "vm01"
		vm_01.vm.provision "shell" do |s|
			ssh_pub_key = File.readlines("/home/#{ENV['USER']}/.ssh/id_rsa.pub").first.strip
			s.inline = <<-SHELL
			echo "Append SSH Public Key to authorized_keys"
			echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
			SHELL
			end
	end
	config.vm.define "vm_02" do |vm_02|
		vm_02.vm.box = "generic/ubuntu2004"
		vm_02.vm.provider "vmware_desktop" do |v|
			v.vmx["memsize"] = "2048"
			v.vmx["numvcpus"] = "1"
			v.vmx["displayname"] = "vm_02"
		end
		vm_02.vm.network "private_network", ip: "10.100.1.3"
		# vm_02.disksize.size = "20GB"
		vm_02.vm.synced_folder ".", "/vagrant"
		vm_02.vm.hostname = "vm02"
		vm_02.vm.provision "shell" do |s|
			ssh_pub_key = File.readlines("/home/#{ENV['USER']}/.ssh/id_rsa.pub").first.strip
			s.inline = <<-SHELL
			echo "Append SSH Public Key to authorized_keys"
			echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
			SHELL
			end
	end
	config.vm.define "vm_03" do |vm_03|
		vm_03.vm.box = "generic/ubuntu2004"
		vm_03.vm.provider "vmware_desktop" do |v|
			v.vmx["memsize"] = "2048"
			v.vmx["numvcpus"] = "1"
			v.vmx["displayname"] = "vm_03"
		end
		vm_03.vm.network "private_network", ip: "10.100.1.4"
		# vm_03.disksize.size = "20GB"
		vm_03.vm.synced_folder ".", "/vagrant"
		vm_03.vm.hostname = "vm03"
		vm_03.vm.provision "shell" do |s|
			ssh_pub_key = File.readlines("/home/#{ENV['USER']}/.ssh/id_rsa.pub").first.strip
			s.inline = <<-SHELL
			echo "Append SSH Public Key to authorized_keys"
			echo #{ssh_pub_key} >> /home/vagrant/.ssh/authorized_keys
			SHELL
			end
	end
end
