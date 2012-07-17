#!/bin/bash
mkdir -p /var/vagrant
git clone https://github.com/JustinCarmony/vagrant-inception.git /var/vagrant
cd /var/vagrant
vagrant box add lucid32 http://files.vagrantup.com/lucid32.box
vagrant up
