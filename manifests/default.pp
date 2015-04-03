class must-have {
  include apt

  apt::ppa { "ppa:chris-lea/node.js": }

  exec { 'apt-get update':
    command => '/usr/bin/apt-get update',
    before => Apt::Ppa["ppa:chris-lea/node.js"],
  }

  exec { 'apt-get update 2':
    command => '/usr/bin/apt-get update',
    require => Apt::Ppa["ppa:chris-lea/node.js"],
  }

  exec { 'update npm':
    command => '/usr/bin/npm install -g npm@next',
    require => Exec["apt-get update 2"],
  }

  exec { 'apt-get install make':
    command => '/usr/bin/apt-get install make',
    before => Exec["install gem compass", "install gem sass"],
    require => Exec["apt-get update 2"],
  }

  exec { 'install gem compass':
    command => '/opt/vagrant_ruby/bin/gem install compass',
    creates => "/opt/vagrant_ruby/bin/compass",
    require => Exec["apt-get update 2", "apt-get install make"],
  }

  exec { 'install gem sass':
    command => '/opt/vagrant_ruby/bin/gem install sass',
    creates => "/opt/vagrant_ruby/bin/sass",
    require => Exec["apt-get update 2", "apt-get install make"],
  }

  exec { 'install yeoman':
    command => '/usr/bin/npm install -g yo bower grunt-cli gulp',
    creates => [
      '/usr/bin/yo',
      '/usr/lib/node_modules/bower/bin/bower',
      '/usr/lib/node_modules/grunt-cli/bin/grunt',
      '/usr/lib/node_modules/gulp/bin/gulp'
      ],
    require => [ Exec["apt-get update 2", "update npm"], Package["nodejs"] ],
  }

  exec { 'install webapp generator':
    command => '/usr/bin/npm install -g generator-webapp',
    creates => '/usr/lib/node_modules/generator-webapp',
    require => Exec["install yeoman"],
  }

  file { "/home/vagrant/yeoman/webapp":
      ensure => "directory",
      require => Exec['install webapp generator'],
  }

  package { ["vim",
             "bash",
             "nodejs",
             "git-core",
             "fontconfig"]:
    ensure => present,
    require => Exec["apt-get update 2"],
  }


}

include must-have
