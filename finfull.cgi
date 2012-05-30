#!/usr/bin/perl 

print "Content-Type: text/html;CHARSET=UTF-8\n\n";
use CGI;

$q = new CGI;
$q->header(-charset=>'UTF-8');

use DBI;

use Config::IniFiles;
my $cfg = Config::IniFiles->new( -file => "config.ini" );

my $mysql_table = $cfg->val( 'database', 'database' );
my $mysql_user  = $cfg->val( 'database', 'user' );
my $mysql_pass  = $cfg->val( 'database', 'pass' );


$dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbhr->do("set names utf8");

#print "---------------";
my $idriad=$q->param('id');

#my $val=$q->param('parval');

my $redpole=$q->param('redag');
#print $redpole;
if ($redpole eq 1) {
$sqlr = 'UPDATE finstatus SET fulloper=1 WHERE id="'.$idriad.'"';
}else{
$sqlr = 'UPDATE finstatus SET fulloper=2 WHERE id="'.$idriad.'"';
};
#print $sqlr;
$sthr = $dbhr->do($sqlr) or die "Не могу выполнить: $sthr -> errstr";

#$sthr->finish;
$dbhr->disconnect;