class mongod {
  service {"mongod": ensure => running, require => Package["mongo-10gen-server"]}
}