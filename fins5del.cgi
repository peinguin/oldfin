#!/usr/bin/perl 

print "Content-Type: text/html;CHARSET=UTF-8\n\n";

use CGI;
use DBI;

$q = new CGI;
$q->header(-charset=>'UTF-8');

my $mysql_table = '';
my $mysql_user = 'root';
my $mysql_pass = '';

$dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbhr->do("set names utf8");
my $id;
# номер Рядка
if  ($q->param('id')) {
$id=$q->param('id');
}

# номер рядка що видаляється з базм
#my $idplat;
#if  ($q->param('idkrt')) {
# Id картки
#$idplat=$q->param('idkrt');
#}

#if  ($q->param('redag') eq "prih") {
#$rashsklad=$prihsklad;
#}

my $muser="buh1";
my $mperiod=1;
my $mid=0;


$sqlr ='SELECT id,uslog,period FROM finstatus WHERE uslog = "'.$muser.'"';
#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
($mid,$muser,$mperiod)=$sthr->fetchrow();

my $base="fnazrah";
if  ($mperiod eq 2) {
#$base="f340new";
}
my $satel=$mid;

if  ($q->param('dcheck')) {
$sqlr = 'DELETE  FROM '.$base.' WHERE id = "'.$id.'"';
$sthr = $dbhr->do($sqlr);
};

#$sthr->finish;
$dbhr->disconnect;