#class apache::service {
#  service { 'apache2':
#    ensure     => running,
#    enable     => true,
#    hasstatus  => true,
#    hasrestart =>true,
#  }
#}
class apache::service (
  String $service_name = $::apache::service_name,
) {
  service { 'apache-service':
    ensure     => running,
    name       => $service_name,
    enable     => true,
    hasstatus  => true,
    hasrestart =>true,
  }
}
