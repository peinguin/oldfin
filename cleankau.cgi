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

my $finbase=1;
if  ($q->param('fbase')) {
$finbase=$q->param('fbase');
};

my $base="fo340";


if  ($finbase==1) {

if  ($mperiod eq 2) {
$base="fo340new";
}
};

if  ($finbase==2) {
$base="f340";
if  ($mperiod eq 2) {
$base="f340new";
}

};
#if  ($mperiod eq 2) {
#$base="f340new";
#}
my $satel=$mid;

if  ($q->param('id')) {
$idriad=$q->param('id');
}

if  ($finbase==31) {
$base="f330";
}

if  ($finbase==32) {
$base="f330new";
}

if  ($finbase==33) {
$base="f331";
}

if  ($finbase==34) {
$base="f331kor";
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
$val="";

if ($redpole eq "rkau") {
$sqlr = 'UPDATE '.$base.' SET kau="'.$val.'",sprnum=0,idzak=0,zakname="'.$val.'" WHERE id="'.$idriad.'"';
};

if ($redpole eq "rkaukc") {
$sqlr = 'UPDATE '.$base.' SET kaukc="'.$val.'",idzak=0,zakname="'.$val.'" WHERE id="'.$idriad.'"';
};
#print $sqlr;
#print "--- $redpole";

$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
#print $sqlr;

#$sthr->finish;
$dbhr->disconnect;