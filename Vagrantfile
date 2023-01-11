Vagrant.configure("2") do |config|
  config.vm.box = "debian/buster64"

  # jenkins_server VM
  config.vm.define "jenkins_server" do |jenkins_server|
    jenkins_server.vm.provider "virtualbox" do |vb|
      vb.memory = "4096"
      vb.name = "jenkins"
    end
    jenkins_server.vm.network "private_network", ip: "192.168.33.22"
    jenkins_server.vm.hostname = "jenkins"
    jenkins_server.vm.provision "shell", path: "install_jenkins.sh"
  end

  # web_server VM
  config.vm.define "web_server" do |web_server|
    web_server.vm.provider "virtualbox" do |vb|
      vb.memory = "1024"
      vb.name = "web"
    end
    web_server.vm.network "private_network", ip: "192.168.33.20"
    web_server.vm.hostname = "web"
  end

end
