#!/usr/bin/perl
#use warnings;
### https://jira.javelingroup.com/browse/DBK-10209
### this is the script to sort the lines from the apache log
###
#
$ViewDataStart = 0;
$SumViewDataStart = 0;
$ViewCheckoutShipping = 0;
$SumViewCheckoutShipping = 0;
$ProcessOrderUpdateService = 0;
$SumProcessOrderUpdateService = 0;
$ViewAdyenCallBack = 0;
$SumViewAdyenCallBack = 0;

foreach (<STDIN>) {
	if ( $_ =~ m! "GET /INTERSHOP/web/WFS/dbk-shop-Site/nl_NL/[\w\-]+/EUR/ViewData-Start/[\w\;\=\_\-\?]+JumpTarget=ViewCart-View HTTP/1.1" !
 ) {
			@line = split(' ',$_);
			$ViewDataStart++;
			#print "$line[$#line]\n";
			$SumViewDataStart = $SumViewDataStart + $line[$#line];
		}
	elsif ( $_ =~ m! "POST /?\w*/action/ViewCheckoutShipping-Dispatch HTTP/1.1" 200 ! ) {
			@line = split(' ',$_);
			$ViewCheckoutShipping++;
			#print "$line[$#line]\n";
			$SumViewCheckoutShipping = $SumViewCheckoutShipping + $line[$#line];
		}
	elsif ( $_ =~ m! "POST /INTERSHOP/web/WFS/dbk-shop-Site/nl_NL/[\w\-]+/EUR/ProcessOrderUpdateService-UpdateOrders.*" ! ) {
			@line = split(' ',$_);
			$ProcessOrderUpdateService++;
			#print "$line[$#line]\n";
			$SumProcessOrderUpdateService = $SumProcessOrderUpdateService + $line[$#line];
		}
	elsif ( $_ =~ m! "GET /INTERSHOP/web/WFS/dbk-shop-Site/nl_NL/[\w\-]+/EUR/ViewAdyen-CallBack.*" ! ) {
			@line = split(' ',$_);
			$ViewAdyenCallBack++;
			#print "$line[$#line]\n";
			$SumViewAdyenCallBack = $SumViewAdyenCallBack + $line[$#line];
		}
}


### Output of the average times into file - /tmp/apache_average_times
open AVT, '>',"/tmp/apache_average_times";
select AVT;
eval { print "ViewDataStart: ",$SumViewDataStart/$ViewDataStart,"\n";} or print "ViewDataStart: 0\n";
eval { print "ViewCheckoutShipping: ",$SumViewCheckoutShipping/$ViewCheckoutShipping,"\n";} or print "ViewCheckoutShipping: 0\n" ;
eval { print "ProcessOrderUpdateService: ",$SumProcessOrderUpdateService/$ProcessOrderUpdateService,"\n";} or print "ProcessOrderUpdateService: 0\n";
eval { print "ViewAdyenCallBack: ",$SumViewAdyenCallBack/$ViewAdyenCallBack,"\n";} or print "ViewAdyenCallBack: 0\n";
close AVT;

### Outputting the steps names in JSON for the discovery rule
select STDOUT;
$first = 1;
print "{\n";
print "\t\"data\":[\n\n";

foreach $result (qw/ ViewDataStart ViewCheckoutShipping ProcessOrderUpdateService ViewAdyenCallBack /) {

      print "\t,\n" if not $first;
         $first = 0;

          print "\t\n{\n";
          print "\t\t\"{#STEP}\":\"$result\"\n";
          print "\t}\n";
          }

          print "\n\t]\n";
          print "}\n";
