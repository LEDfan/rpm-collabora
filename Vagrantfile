# this vagrant machine can be used to built the rpm
# automatically starts building the rpm, the rpm will be placed in the same directory as the Vagrantfile

Vagrant.configure("2") do |config|

  config.vm.box = "bento/centos-7.3"

  config.vm.provision "shell", path: "install_deps.sh"

  config.vm.provision "shell", path: "built.sh", privileged: false

end
