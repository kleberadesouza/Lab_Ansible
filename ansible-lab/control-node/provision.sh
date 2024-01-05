#/bin/sh
sudo yum -y install epel-release
echo "Inicio da instalacao do Ansible"
sudo yum -y install ansible
cat <<EOT >> /etc/hosts
192.168.56.3 control-node
192.168.56.4 app01
192.168.56.5 db01
EOT

# Configuração para garantir a instalação do Vagrant Guest Additions
config.vbguest.auto_update = false
config.vbguest.no_remote = true
config.vbguest.no_install = false
