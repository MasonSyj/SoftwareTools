Vagrant.configure("2") do |config|
  config.vm.box = "generic/alpine317"
  config.vm.network "forwarded_port", guest: 8080, host: 1236
  config.vm.synced_folder ".", "/vagrant"

  config.vm.provision "shell", inline: <<-SHELL
    echo 'set completion-ignore-case On' >> /etc/inputrc
    apk add npm
    npm install -g tldr
    tldr tldr
    apk add libc6-compat
    apk add git
    apk add gcc
    apk add musl-dev
    apk add nano
    apk add nano-syntax
    echo "include /usr/share/nano/*.nanorc" >> ~/.nanorc
    apk add shadow
    apk add openjdk17
    apk add maven 
    ln -s /vagrant/.profile /home/vagrant/.profile
    apk add mariadb mariadb-client
    /etc/init.d/mariadb setup
    rc-update add mariadb default
    rc-service mariadb start
    mysql -e 'source /vagrant/Database/secure-setup.sql'
    mysql -e 'source /vagrant/Database/sample-data.sql'

    git config --global user.name "MasonSyj"
    git config --global user.email "shiyujiesx@163.com"
    echo set completion-ignore-case on | sudo tee -a /etc/inputrc
  SHELL
end


