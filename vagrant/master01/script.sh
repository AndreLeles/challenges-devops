#!/bin/bash

#Criando usuario srv.admin com a senha admin@123

useradd -s /bin/bash -m -d /home/srv.admin -p $(openssl passwd -1 admin@123) srv.admin

# Adicionando usuario admin superuser privileges root
echo 'srv.admin  ALL=(ALL:ALL) ALL' >> /etc/sudoers

# adicionando entrada /etc/hosts
echo "192.168.56.50 vm-kubernetes-master01" >> /etc/hosts