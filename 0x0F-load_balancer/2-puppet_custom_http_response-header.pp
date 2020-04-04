# creating a custom HTTP header response
exec {'HTTP_Header':
  command  => 'apt-get -y update && apt-get -y install haproxy && echo -e "\nfrontend front\n\tbind *:80\n\tmode http\n\tdefault_backend back\n\nbackend back\n\tbalance roundrobin\n\tserver 970-web-01 35.231.24.237:80 check\n\tserver 970-web-02 54.90.204.128:80 check" >> /etc/haproxy/haproxy.cfg && service haproxy restart',
  provider => shell,
}
