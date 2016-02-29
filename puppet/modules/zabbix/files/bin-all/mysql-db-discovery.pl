#!/usr/bin/perl
$first = 1;

print "{\n";
print "\t\"data\":[\n\n";

for (`HOME=/var/lib/zabbix /usr/bin/mysql -B -e "show databases;" | grep -v '^Database\$'`) {
  ($db) = m/^(\S+)\s*$/;

  print "\t,\n" if not $first;
  $first = 0;

  print "\t{\n";
  print "\t\t\"{#DB}\":\"$db\",\n";
  print "\t}\n";
  }

print "\n\t]\n";
print "}\n";
