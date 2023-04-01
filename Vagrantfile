Vagrant.configure("2") do |config|
  
  os = "centos/7"
  net = "192.168.111"

  config.vm.define :myvmproject do |myvmproject_config|
      myvmproject_config.vm.provider "virtualbox" do |vb|
          vb.memory = "1024"
          vb.cpus = 2
          vb.name = "My-VM-Project-vm"
      end
      myvmproject_config.vm.host_name = 'myvmproject'
      myvmproject_config.vm.box = "#{os}"
      myvmproject_config.vm.network "private_network", ip: "#{net}.11"
      myvmproject_config.vm.provision "shell", inline: <<-SHELL
      echo "root:myvmproject" | chpasswd
      sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
      systemctl restart sshd
      yum install -y git
      yum install -y telnet
      yum install -y wget
      yum install -y vim
      yum install -y net-tools
      yum install -y rng-tools
      yum install -y unzip
      mkdir /home/vagrant/shared
      
      SHELL
  end

end