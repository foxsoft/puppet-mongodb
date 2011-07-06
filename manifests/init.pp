import "classes/*.pp"

class mongodb {
  case $architecture {
    x86_64: {
      yumrepo {"10gen":
        baseurl => "http://downloads-distro.mongodb.org/repo/redhat/os/x86_64",
        gpgcheck => 0,
        descr => "10gen Repository",
        enabled => 1,
      }
    }
    i686: {
      yumrepo {"10gen":
        baseurl => "http://downloads-distro.mongodb.org/repo/redhat/os/i686",
        gpgcheck => 0,
        descr => "10gen Repository",
        enabled => 1,
      }
    }
  }

  package {"mongo-10gen-server": ensure => installed, require => Yumrepo["10gen"]}
  package {"mongo-10gen": ensure => installed, require => Yumrepo["10gen"]}
}