#class apache::install {
 # package { 'apache2':
 # ensure => present,
 # }
#}
class apache::install (
  String $package_name = $::apache::package_name,
){
  package { 'web_package':
    ensure => present,
    name   => $package_name,
  }
}
