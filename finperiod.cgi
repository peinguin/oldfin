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

#print "---------------";
my $idriad=$q->param('id');

my $val=$q->param('parval');

my $redpole=$q->param('redag');

if ($redpole eq 2) {
$sqlr = 'UPDATE finstatus SET period=2 WHERE id="'.$idriad.'"';
}else{
$sqlr = 'UPDATE finstatus SET period=1 WHERE id="'.$idriad.'"';
};

$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";
#$sthr = $dbhr->prepare($sqlr);
#print $sqlr;
#$sthr->execute();

#$sthr->finish;
$dbhr->disconnect;