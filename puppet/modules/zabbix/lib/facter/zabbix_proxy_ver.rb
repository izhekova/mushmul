Facter.add('zabbix_proxy_ver') do
  setcode do
      distid = Facter.value(:operatingsystem)
      case distid
 		when /Amazon|RedHatEnterprise|CentOS|Fedora/
      		Facter::Core::Execution.exec('/bin/rpm -q --qf "%{VERSION}" zabbix-proxy')
      	when /Ubuntu|Debian/
      		Facter::Core::Execution.exec('/bin/dpkg-query -W -f \'${version}\n\' zabbix-proxy-sqlite3 | cut -d":" -f2')
          
      else
          distid
      end
# rpm -q --qf "%{VERSION}" zabbix-proxy
  end
end
