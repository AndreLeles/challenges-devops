#####Procedimento Windows######

##Instalação do virttual box
Acesse o link e faça Downloads do virtualbox para Windows:

https://download.virtualbox.org/virtualbox/6.1.22/VirtualBox-6.1.22-144080-Win.exe

##instalação do vgrant windows

https://www.vagrantup.com/docs/installation

##Abra o seu powshell como administrador e deabilita o Hyper, este procedimento vai pedi para reinicia a sua maquina:

Disable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V-All

##Instale o Git Bash para executa os comando do vagrant

https://git-scm.com/download/win


#####Procedimento Linux######



##Atualize os pacotes do linux
apt-get  update -y

##Instale o virtualbox
apt-get install virtualbox  curl -y

##Faça Download do pacote do Vagrant 

curl -O https://releases.hashicorp.com/vagrant/2.2.16/vagrant_2.2.16_x86_64.deb

##Instalação do pacote

apt-get install ./vagrant_2.2.6_x86_64.deb

##verificar a versão instalada

vagrant --version


####Comandos vagrant ####

#Acesse o diretorio, vagrant e execute o comando abaixo em cada projeto
vagrant up

#Apos a execução execute para acessa o servidor
vagrant ssh

#ou pode executar ssh direto com o ususario  srv.admin e a senha admin@123

ssh -l srv.admin IP

#Este comando e mais usando quando faz alguma atulização do Vagrantfile sem precisa destruir a vm
vagrant reload 

#Este comando destroi a vm a nivel de disco.
vagrant destroy
