Vagrant.configure("2") do |config|
  config.vm.box = "generic/alpine317"
  config.vm.network "forwarded_port", guest: 8001, host: 8001
  config.vm.synced_folder ".", "/vagrant"

  config.vm.provision "shell", inline: <<-SHELL
    echo 'set completion-ignore-case On' >> /etc/inputrc
    apk add nodejs
    apk add npm
    apk add libc6-compat
    apk add git
    apk add gcc
    apk add musl-dev
    echo "include /usr/share/nano/*.nanorc" >> ~/.nanorc
    ln -s /vagrant/.profile /home/vagrant/.profile

    git config --global user.name "MasonSyj"
    git config --global user.email "shiyujiesx@163.com"
    echo set completion-ignore-case on | sudo tee -a /etc/inputrc
  SHELL
end


