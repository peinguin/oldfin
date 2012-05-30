#!/usr/bin/perl 

print "Content-Type: text/html;CHARSET=UTF-8\n\n";

use CGI;

$q = new CGI;
$q->header(-charset=>'UTF-8');

my $razoper="bank";
if  ($q->param('razoper')) {
$razoper=$q->param('razoper');
}



my $chang1="Cntr-панелі";
my $chang2="Стрілки - рух. Enter -виконати";
#my $chang2="Стрілки - рух.";

 #mova systemy
if ($mova eq "Ru") {
$chang1="Заказчики";
$chang2="Подотчетники";
}

my $bgcol1="#999999";
my $bgcol2="#999999";
my $bgcol3="#336699";
my $bgcol4="#336699";
my $bgcol5="#336699";
my $bgcol6="#336699";
my $bgcol7="#336699";

#if  ($razoper eq 'kaca') {
#$bgcol1="#0066ff";
#}
#if  ($razoper eq 'bank') {
#$bgcol2="#0066ff";
#}


print '<div id="menup1" style="float:left; text-align: center; width: 29%; background-color:'.$bgcol1.';">';
print '<a style="color:#000000; font-size:14pt;" href="/cgi-bin/stoppoiskn.cgi?plat=zak" class=menuf1op>'.$chang1.'</a></div>';
print '<div id="menup11" style="float:left; text-align: center; width: 1%; color:#ffffff; background-color: #999999;">.</div>';
print '<div id="menup2" style="float:left; text-align: center; width: 69%; background-color:'.$bgcol2.';">';
print '<a style="color:#000000; font-size:14pt;" href="/cgi-bin/stoppoiskn.cgi?plat=pod" class=menuf1op>'.$chang2.'</a></div>';


print '<div  style="clear:both;"></div>';











