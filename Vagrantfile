# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
# Machines pour le demonstrateur Cyber-Sécurité
# Pas d'optimisation pour faciliter la compréhension lecture pour les débutants
# 2 machines :  Victim
#		Attack
##############################################################################

  config.vm.define "attack" do |attack|
    attack.vm.box = "chavinje/fr-book-64"
    attack.vm.hostname = "attack"
    # Configuration des 2 interfaces 
    attack.vm.network :private_network, ip: "192.168.56.70"
    # Un repertoire partagé (Attention il faut les virtualbox Additions installé sur l'hôte)
    attack.vm.synced_folder "./data", "/partage"
    attack.vm.provider :virtualbox do |v|
      v.name ="attack"
      v.cpus = 2
      v.memory = 2048
      v.linked_clone = false
      v.gui = false
      v.customize ["modifyvm", :id, "--groups", "/ESEO_Cyber"]
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    end
    attack.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config    
      sleep 3
      service ssh restart
    SHELL
    attack.vm.provision "shell", path: "scripts/install_sys.sh"
    attack.vm.provision "shell", path: "scripts/install_attack.sh"
  end

# Configuration pour le serveur web victime
# Basé sur DVWA - https://dvwa.co.uk/
  config.vm.define "victim" do |victim|
    victim.vm.box = "chavinje/fr-book-64"
    victim.vm.hostname = "victim"
    victim.vm.network :private_network, ip: "192.168.56.60"
    victim.vm.synced_folder "./data", "/partage"
    victim.vm.provider :virtualbox do |v|
      v.name ="victim"
      v.cpus = 2
      v.memory = 2048
      v.linked_clone = false
      v.customize ["modifyvm", :id, "--groups", "/ESEO_Cyber"]
      v.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      v.customize ["modifyvm", :id, "--natdnsproxy1", "on"]
    end
    victim.vm.provision "shell", inline: <<-SHELL
      sed -i 's/ChallengeResponseAuthentication no/ChallengeResponseAuthentication yes/g' /etc/ssh/sshd_config    
      sleep 3
      service ssh restart
    SHELL
    victim.vm.provision "shell", path: "scripts/install_sys.sh"
    victim.vm.provision "shell", path: "scripts/install_victim.sh"
  end
end
