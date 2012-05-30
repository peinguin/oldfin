#!/usr/bin/perl 

print "Content-Type: text/html;CHARSET=UTF-8\n\n";

use CGI;

$q = new CGI;
$q->header(-charset=>'UTF-8');

use DBI;
#use CGI;

my $mysql_table = '';
my $mysql_user = 'root';
my $mysql_pass = '';


$dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbhr->do("set names utf8");


my $tid;
if  ($q->param('id')) {
# Id картки
$tid=$q->param('id');
}


my $muser="buh1";
my $mperiod=1;
my $mid=0;


$sqlr ='SELECT id,uslog,period FROM finstatus WHERE uslog = "'.$muser.'"';
#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
($mid,$muser,$mperiod)=$sthr->fetchrow();

my $base="f340";
if  ($mperiod eq 2) {
$base="f340new";
}
my $satel=$mid;

my ($day,$month,$year) = (localtime)[3..5];
$year = 1900 + $year;
$month++;
my $date = sprintf("%.4d.%.2d.%.2d",($year,$month,$day));
my $tekdata=$date;

#------------------
#my $prioper2= $dbhr->quote($prioper);
#print $prioper2;
#my $satel=1;

#$sqla = 'LOCK TABLES sfak read ';

$sqlr ='SELECT id,oc,coc,kc,ckc,booc,data,kau,kaukc,summa,priznak,kol1,kol2,kol3,idzak,zakname,idzakkc,zaknamekc FROM '.$base.'  WHERE satelit = "'.$satel.'" and id="'.$tid.'"';
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();

#print $sqlr;
my ($mrecnum,$moc,$mcoc,$mkc,$mckc,$mbooc,$mdataop,$mkauop,$mkaukcop,$msummaop,$mprizop,$mkol1op,$mkol2op,$mkol3op,$midzak,$mzakname,$midzak1,$mzakname1)=$sthr->fetchrow();

my $pryzn=$dbhr->quote($mprizop);

my $tname="n";

if  (($mbooc eq 2) or ($mbooc eq 4)) {
$moborot=($mbooc)+1;
}else{
$moborot=($mbooc)-1;
};


# дубль проводка
$sqlr = 'INSERT INTO '.$base.' (kc,ckc,oc,coc,booc,data,satelit,kau,kaukc,summa,priznak,kol1,kol2,kol3,idzakkc,zaknamekc,idzak,zakname)';
$sqlr = $sqlr .  ' VALUES ("'.$moc.'","'.$mcoc.'","'.$mkc.'","'.$mckc.'","'.$moborot.'","'.$tekdata.'","'.$satel.'","'.$mkauop.'","'.$mkaukcop.'","'.$msummaop.'","'.$mprizop.'","'.$mkol1op.'","'.$mkol2op.'","'.$mkol3op.'","'.$midzak.'","'.$mzaknam.'","'.$midzak1.'","'.$mzaknam1.'")';
$sthr = $dbhr->do($sqlr);

my $idlast;
$sqlr ='SELECT LAST_INSERT_ID()';
#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
($idlast) = $sthr->fetchrow_array();


$sqlr = 'INSERT INTO '.$base.' (oc,coc,kc,ckc,booc,data,satelit,kau,kaukc,summa,priznak,kol1,kol2,kol3,idsimetr,idzak,zakname,idzakkc,zaknamekc)';
$sqlr = $sqlr .  ' VALUES ("'.$moc.'","'.$mcoc.'","'.$mkc.'","'.$mckc.'","'.$mbooc.'","'.$tekdata.'","'.$satel.'","'.$mkauop.'","'.$mkaukcop.'","'.$msummaop.'","'.$mprizop.'","'.$mkol1op.'","'.$mkol2op.'","'.$mkol3op.'","'.$idlast.'","'.$midzak.'","'.$mzaknam.'","'.$midzak1.'","'.$mzaknam1.'")';


#print $sqlr;
$sthr = $dbhr->do($sqlr);

# отримати id останього доданого рахунку 
$idlast;
$sqlr ='SELECT LAST_INSERT_ID()';

#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
$idlast = $sthr->fetchrow_array();

# транслювати параметри 

if ($ENV{'HTTP_X_REQUESTED_WITH'}) {

my $par3=$idlast;
#    print 'psort='."$par".'&navnakl='."$par1".'&poisk='."$par2".'&id='."$par3".'&redag='."$par4".'&idnakl='."$par5".'&nadd='."$par6".'&sprnum='."$par7";

#    print 'id='."$par3".'&navnakl='."$par4";
    print 'id='."$par3";

} else {
#    print "Доступ запрещен";
}

$sthr->finish;
$dbhr->disconnect;