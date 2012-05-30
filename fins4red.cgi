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

my $base="f331kor";
if  ($mperiod eq 2) {
#$base="f340new";
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

if  ($q->param('oborot')) {
$sqlr = 'UPDATE '.$base.' SET booc="'.$q->param('oborot').'" WHERE id="'.$idriad.'"';
};


if ($redpole eq "oc") {
$sqlr = 'UPDATE '.$base.' SET oc="'.$val.'" WHERE id="'.$idriad.'"';
};

if ($redpole eq "coc") {
$sqlr = 'UPDATE '.$base.' SET coc="'.$val.'" WHERE id="'.$idriad.'"';
};


if ($redpole eq "kc") {
$sqlr = 'UPDATE '.$base.' SET kc="'.$val.'" WHERE id="'.$idriad.'"';
};

if ($redpole eq "ckc") {
$sqlr = 'UPDATE '.$base.' SET ckc="'.$val.'" WHERE id="'.$idriad.'"';
};

#if ($redpole eq "kc") {
#$sqlr = 'UPDATE '.$base.' SET kc="'.$val.'" WHERE id="'.$idriad.'"';
#};

#if ($redpole eq "ckc") {
#$sqlr = 'UPDATE '.$base.' SET ckc="'.$val.'" WHERE id="'.$idriad.'"';
#};


#if ($redpole eq "dok") {
#$sqlr = 'UPDATE '.$base.' SET dok="'.$val.'" WHERE id="'.$idriad.'"';
#};

if ($redpole eq "summa") {
$sqlr = 'UPDATE '.$base.' SET summa="'.$val.'" WHERE id="'.$idriad.'"';
};

#print "--- $redpole";
if ($redpole eq "priznak") {
my $val1=$dbhr->quote($val);
$val=$val1;
$sqlr = 'UPDATE '.$base.' SET priznak='.$val.' WHERE id="'.$idriad.'"';
};


#print $val;

$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";

#print $sqlr;

#$sthr->finish;
$dbhr->disconnect;