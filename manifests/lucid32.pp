class inception {
  package { "git-core": ensure => present } 
  exec { "gem install vagrant": 
    unless => "which vagrant",
    require => Package["git-core"]
  }
  exec { 'bash /vagrant-files/setup.sh &':
    unless => "ls /var/vagrant/.vagrant",
    command => "bash /vargrant-files/setup.sh &",
    require => Exec["gem install vagrant"]
  }
}

include inception
