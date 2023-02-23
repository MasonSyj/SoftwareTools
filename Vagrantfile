Vagrant.configure("2") do |config|
  config.vm.box = "generic/alpine317"
  config.vm.network "forwarded_port", guest: 8080, host: 1234
  config.vm.synced_folder ".", "/vagrant"

  config.vm.provision "shell", inline: <<-SHELL
    apk add libc6-compat
    apk add git
    apk add gcc
    apk add musl-dev
    apk add nano
    apk add shadow
    apk add openjdk17
    apk add maven 
    apk add mariadb mariadb-client
    /etc/init.d/mariadb setup
    rc-update add mariadb default
    rc-service mariadb start
    mysql -e 'source /vagrant/Database/secure-setup.sql'
    mysql -e 'source /vagrant/Database/sample-data.sql'

    git config --global user.name "MasonSyj"
    git config --global user.email "shiyujiesx@163.com"
  SHELL
end


