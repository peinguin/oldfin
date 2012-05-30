#!/usr/bin/perl 

print "Content-Type: text/html;CHARSET=UTF-8\n\n";

use CGI;

$q = new CGI;
$q->header(-charset=>'UTF-8');

my $sprnum=1;
if  ($q->param('sprnum')) {
$sprnum=$q->param('sprnum');
}

my $pole=$q->param('redag');

my $chang1="Замовники";
my $chang2="Підзвітники";

 #mova systemy
if ($mova eq "Ru") {
$chang1="Заказчики";
$chang2="Подотчетники";
}

my $bgcol1="#336699";
my $bgcol2="#336699";
my $bgcol3="#336699";
my $bgcol4="#336699";
my $bgcol5="#336699";
my $bgcol6="#336699";
my $bgcol7="#336699";

#if  ($sprnum == 1 or $sprnum == 0) {
if  ($sprnum == 1) {
$bgcol1="#0066ff";
}
if  ($sprnum == 2) {
$bgcol2="#0066ff";
}


print '<div id="menup1" style="float:left; text-align: center; width: 49%; background-color:'.$bgcol1.';">';
print '<a style="color:#ffffff; font-size:14pt;" href="/cgi-bin/finspplat.cgi?sprnum=1&redag='.$pole.'" class=menf1opp>'.$chang1.'</a></div>';
print '<div id="menup11" style="float:left; text-align: center; width: 1%; color:#ffffff; background-color: #999999;">.</div>';
print '<div id="menup2" style="float:left; text-align: center; width: 49%; background-color:'.$bgcol2.';">';

print '<a style="color:#ffffff; font-size:14pt;" href="/cgi-bin/finspplat.cgi?sprnum=2&redag='.$pole.'" class=menf1opp>'.$chang2.'</a></div>';
#print '<a style="color:#ffffff; font-size:14pt;" href="/cgi-bin/finspplat.cgi?sprnum=2&redag='.$pole.'" class=menf1opp>'.$chang2.'</a></div>';


print '<div  style="clear:both;"></div>';











