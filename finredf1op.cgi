#!/usr/bin/perl 

print "Content-Type: text/html;CHARSET=UTF-8\n\n";
use CGI;

$q = new CGI;
$q->header(-charset=>'UTF-8');

use DBI;

my $mysql_table = '';
my $mysql_user = 'root';
my $mysql_pass = '';


$dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbhr->do("set names utf8");

my $muser="buh1";
my $mperiod=1;
my $mid=0;


$sqlr ='SELECT id,uslog,period FROM finstatus WHERE uslog = "'.$muser.'"';
#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
($mid,$muser,$mperiod)=$sthr->fetchrow();

my $base="fo340";
my $basef1="f340";
if  ($mperiod eq 2) {
$base="fo340new";
$basef1="f340new";
}
my $satel=$mid;

if  ($q->param('id')) {
$idriad=$q->param('id');
}

#print ($q->param('idkrt'));
#print "---------------";

my $krtid;
if  ($q->param('idkrt')) {
# Id картки  краму 
$krtid=$q->param('idkrt');
}

my $val=$q->param('parval');
my $redpole=$q->param('redag');

if ($redpole eq "dok") {
$sqlr = 'UPDATE '.$base.' SET dok="'.$val.'" WHERE id="'.$idriad.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
$sqlr = 'UPDATE '.$basef1.' SET dok="'.$val.'" WHERE num1="'.$idriad.'"';
};

if ($redpole eq "summa") {
$sqlr = 'UPDATE '.$base.' SET summa="'.$val.'" WHERE id="'.$idriad.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
$sqlr = 'UPDATE '.$basef1.' SET summa=CASE WHEN perc=0 THEN "'.$val.'" ELSE ("'.$val.'"*perc/100) END  WHERE num1="'.$idriad.'"';
};


#print $sqlr;
#print "--- $redpole";

if ($redpole eq "priznak") {
# потім подивитись чипотрібні коментарі з операцції
my $val1=$dbhr->quote($val);
$val=$val1;
$sqlr = 'UPDATE '.$base.' SET priznak='.$val.' WHERE id="'.$idriad.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";

$sqlr = 'UPDATE '.$basef1.' SET priznak=CASE WHEN perc=0 THEN '.$val.' ELSE priznak END  WHERE num1="'.$idriad.'"';

#$sqlr = 'UPDATE '.$basef1.' SET priznak='.$val.' WHERE id=(SELECT MIN(id) FROM '.$basef1.' WHERE num1="'.$idriad.'")';
#$sqlr = 'UPDATE '.$basef1.' SET priznak= CASE WHEN priznak="" THEN '.$val.' ELSE priznak END  WHERE num1="'.$idriad.'"';
};

#print $val;

# сформуємо дату 

if ($redpole eq "data") {
#print $val;
my $ryear = substr($val,0,4);
#print $ryear;
my $rmonth = substr($val,5,2);
#print $rmonth;
#my $nperiod = substr($adddate,5,2);
my $rday = substr($val,8,2);
#print $rday;
#print $newyear;
$val = sprintf("%.4d.%.2d.%.2d",($ryear,$rmonth,$rday));
#print $val;
#$val=$rasdata;

$sqlr = 'UPDATE '.$base.' SET data="'.$val.'" WHERE id="'.$idriad.'"';
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
$sqlr = 'UPDATE '.$basef1.' SET data="'.$val.'" WHERE num1="'.$idriad.'"';
};
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
#print $sqlr;

#$sthr->finish;
$dbhr->disconnect;