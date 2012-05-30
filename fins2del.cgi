#!/usr/bin/perl 

print "Content-Type: text/html;CHARSET=UTF-8\n\n";

use CGI;
use DBI;

$q = new CGI;
$q->header(-charset=>'UTF-8');

use Config::IniFiles;
my $cfg = Config::IniFiles->new( -file => "config.ini" );

my $mysql_table = $cfg->val( 'database', 'database' );
my $mysql_user  = $cfg->val( 'database', 'user' );
my $mysql_pass  = $cfg->val( 'database', 'pass' );

$dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbhr->do("set names utf8");
my $id;
# номер Рядка
if  ($q->param('id')) {
$id=$q->param('id');
}

my $muser="buh1";
my $mperiod=1;
my $mid=0;

$sqlr ='SELECT id,uslog,period FROM finstatus WHERE uslog = "'.$muser.'"';
#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
($mid,$muser,$mperiod)=$sthr->fetchrow();

my $base="f330new";
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