Vagrant.configure("2") do |config|
  config.vm.box = "jaxmetalmax/debian-jessie-8.5-x32"

  config.vm.network "forwarded_port", guest: 80, host: 8085, host_ip: "127.0.0.1", auto_correct: true

  config.vm.synced_folder "./", "/var/www", create: true, group: "www-data", owner: "www-data"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "512"
  end

  config.vm.provision "shell", path: "project/web.sh"
end