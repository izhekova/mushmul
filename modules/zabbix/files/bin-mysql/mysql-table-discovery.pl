#!/usr/bin/perl
$first = 1;

print "{\n";
print "\t\"data\":[\n\n";

for (`HOME=/var/lib/zabbix /usr/bin/mysql -B -e "use information_schema; select table_schema,table_name from tables;"`) {
  ($db,$table) = m/^(\S+)\s+(\S+)\s*$/;

  print "\t,\n" if not $first;
  $first = 0;

  print "\t{\n";
  print "\t\t\"{#DB}\":\"$db\",\n";
  print "\t\t\"{#TABLE}\":\"$table\",\n";
  print "\t}\n";
  }

print "\n\t]\n";
print "}\n";

