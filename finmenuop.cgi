#!/usr/bin/perl 

print "Content-Type: text/html;CHARSET=UTF-8\n\n";

use CGI;

$q = new CGI;
$q->header(-charset=>'UTF-8');

my $razoper="bank";
if  ($q->param('razoper')) {
$razoper=$q->param('razoper');
}



my $chang1="Каса (F1)";
my $chang2="Банк (F2)";
my $chang3="Зарплатня (F4)";
my $chang4="Матеріали(F7)";
my $chang5="Головні засоби(F8)";
my $chang6="Податки (F9)";
my $chang7="Інші (F10)";

 #mova systemy
if ($mova eq "Ru") {
$chang1="Каcса (1)";
$chang2="Банк (2)";
$chang3="Зарплата (3)";
$chang4="Материали(4)";
$chang5="Основные фонды (5)";
$chang6="Налоги (6)";
$chang7="Прочие (7)";
}

my $bgcol1="#336699";
my $bgcol2="#336699";
my $bgcol3="#336699";
my $bgcol4="#336699";
my $bgcol5="#336699";
my $bgcol6="#336699";
my $bgcol7="#336699";

if  ($razoper eq 'kaca') {
$bgcol1="#0066ff";
}
if  ($razoper eq 'bank') {
$bgcol2="#0066ff";
}
if  ($q->param('razoper') eq 'zarplata') {
$bgcol3="#0066ff";
}
if  ($razoper eq 'mater') {
$bgcol4="#0066ff";
}
if  ($razoper eq 'fondy') {
$bgcol5="#0066ff";
}

if  ($razoper eq 'nalog') {
$bgcol6="#0066ff";
}
if  ($razoper eq 'proch') {
$bgcol7="#0066ff";
}



print '<div id="rmenu1" style="float:left; text-align: center; width: 12%; background-color:'.$bgcol1.';">';
print '<a style="color:#ffffff; font-size:14pt;" href="/cgi-bin/finspoper.cgi?razoper=kaca" id="kaca" class=menuf1op>'.$chang1.'</a></div>';
print '<div id="rmenu11" style="float:left; text-align: center; width: 1%; color:#ffffff; background-color: #999999;">.</div>';
print '<div id="rmenu2" style="float:left; text-align: center; width: 13%; background-color:'.$bgcol2.';">';
print '<a style="color:#ffffff; font-size:14pt;" href="/cgi-bin/finspoper.cgi?razoper=bank" class=menuf1op>'.$chang2.'</a></div>';
print '<div id="rmenu21" style="float:left; text-align: center; width: 1%; color:#ffffff; background-color: #999999;">.</div>';
print '<div id="rmenu3" style="float:left; text-align: center; width: 14%; background-color:'.$bgcol3.';">';
print '<a style="color:#ffffff; font-size:13pt;" href="/cgi-bin/finspoper.cgi?razoper=zarplata"  class=menuf1op>'.$chang3.'</a></div>';
print '<div id="rmenu31" style="float:left; text-align: center; width: 1%; color:#ffffff; background-color: #999999;">.</div>';
print '<div id="rmenu4" style="float:left; text-align: center; width: 13%; background-color: '.$bgcol4.';">';
print '<a style="color:#ffffff; font-size:14pt;" href="/cgi-bin/finspoper.cgi?razoper=mater" class=menuf1op>'.$chang4.'</a></div>';
print '<div id="rmenu41" style="float:left; text-align: center; width: 1%; color:#ffffff; background-color: #999999;">.</div>';
print '<div id="rmenu5" style="float:left; text-align: center; width: 16%; background-color: '.$bgcol5.';">';
print '<a style="color:#ffffff; font-size:12pt;" href="/cgi-bin/finspoper.cgi?razoper=fondy"  class=menuf1op>'.$chang5.'</a></div>';
print '<div id="rmenu51" style="float:left; text-align: center; width: 1%; color:#ffffff; background-color: #999999;">.</div>';
print '<div id="rmenu6" style="float:left; text-align: center; width: 13%; background-color: '.$bgcol6.';">';
print '<a style="color:#ffffff; font-size:14pt;" href="/cgi-bin/finspoper.cgi?razoper=nalog"  class=menuf1op>'.$chang6.'</a></div>';
print '<div id="rmenu61" style="float:left; text-align: center; width: 1%; color:#ffffff; background-color: #999999;">.</div>';
print '<div id="rmenu7" style="float:left; text-align: center; width: 13%; background-color: '.$bgcol7.';">';
print '<a style="color:#ffffff; font-size:14pt;" href="/cgi-bin/finspoper.cgi?razoper=proch"  class=menuf1op>'.$chang7.'</a></div>';

print '<div  style="clear:both;"></div>';











