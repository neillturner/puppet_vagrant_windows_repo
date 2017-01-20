file { 'c:/mysql/my.ini':
      ensure => 'file',
      mode   => '0660',
      owner  => 'mysql',
      group  => 'Administrators',
      source => 'N:/software/mysql/my.ini',
    }