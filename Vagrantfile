
VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  # General Vagrant VM configuration.
  # All VMs will run under centos7 exploitation system
  config.vm.box = "debian/buster64"
  # If true, Vagrant will automatically insert a keypair
  # to use for SSH, replacing Vagrant's default insecure key
  # inside the machine if detected. By default, this is true
  config.ssh.insert_key = false
  # Configures synced folders on the machine, so that folders
  # on your host machine can be synced to and from the guest machine
  config.vm.synced_folder ".", "/vagrant", disabled: true
  # VM Provider
  config.vm.provider :virtualbox do |v|
  v.memory = 256
  v.linked_clone = true
  end

  # nginx server
  config.vm.define "nginx" do |nginx|
    nginx.vm.hostname = "nginx.dev"
   # static ip address
   nginx.vm.network :private_network, ip: "192.168.60.4"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook= "nginx.yml"
    ansible.inventory_path="./inventory"
    ansible.limit="nginx"
    end
    
  end

  # wordpress server
  config.vm.define "wordpress" do |wordpress|
    wordpress.vm.hostname = "wordpress.dev"
    # static ip address
    wordpress.vm.network :private_network, ip: "192.168.60.5"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook= "wordpress.yml"
    ansible.inventory_path="./inventory"
    ansible.limit="wordpress"
    end

  end

  # MariaDB server
  config.vm.define "database" do |database|
    database.vm.hostname = "database.dev"
    # static ip address
    database.vm.network :private_network, ip: "192.168.60.6"
  config.vm.provision "ansible" do |ansible|
    ansible.playbook= "database.yml"
    ansible.inventory_path="./inventory"
    ansible.limit="database"
    end

  end

end