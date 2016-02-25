class aalvz_node {
  Exec {
    provider => shell,
    timeout  => 180,
  }

  package {'curl':
    ensure => installed,
  } ->

  exec {'download_node':
    user     => root,
    command  => 'curl -sL https://deb.nodesource.com/setup_0.10 | sudo bash -',
    onlyif   => '! test -e /usr/bin/npm',
    path     => ['/usr/local/sbin', '/usr/sbin', '/sbin', '/usr/bin', '/usr/local/bin'],
  } ->

  exec {'install_node':
    user     => root,
    command  => 'apt-get install --yes nodejs',
    onlyif   => '! test -e /usr/bin/npm',
    path     => ['/usr/local/sbin', '/usr/sbin', '/sbin', '/usr/bin', '/usr/local/bin', '/bin'],
  } ->

  exec {'upgrade_node':
    user     => root,
    command  => 'npm -g install npm@latest',
    path     => ['/usr/local/sbin', '/usr/sbin', '/sbin', '/usr/bin', '/usr/local/bin', '/bin'],
  }
}
