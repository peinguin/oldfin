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

my $base="fo340";
my $basef1="f340";
if  ($mperiod eq 2) {
$base="fo340new";
$basef1="f340new";
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
my ($mdok,$mkauop,$mkaukcop,$msummaop,$comoper,$midoper,$mnum,$mkol1op,$mkol2op,$mkol3op,$zamovn,$zakname,$idzak,$zaknamekc,$idzakkc)=(0,"","",0,"",0,"",0,0,0,0,"",0,"",0);

#print $sqlr;
#my ($mrecnum,$mnameop,$mdataop,$mdok,$mkauop,$mkaukcop,$msummaop,$mprizop,$midoper,$mnum,$mkol1op,$mkol2op,$mkol3op)=$sthr->fetchrow();

$sqlr ='SELECT id,name,data,dok,kau,kaukc,summa,priznak,idoper,num,kol1,kol2,kol3,sprnum,zakname,idzak,zaknamekc,idzakkc FROM '.$base.'  WHERE id="'.$tid.'"';
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
#zakname='.$zplat.', kaukc='.$mshifra.', sprnum='.$zamovn.', idzak='.$idnumbersp.'
($mrecnum,$mnameop,$mdataop,$mdok,$mkauop,$mkaukcop,$msummaop,$vcom,$midoper,$mnum,$mkol1op,$mkol2op,$mkol3op,$zamovn,$zakname,$idzak,$zaknamekc,$idzakkc)=$sthr->fetchrow();
#$idlastop =$midoper;


my $baseop="oper";

# вважаю що перейду на пошук накладної по  автоматичному id тому тут прибрав дату
$sqlr = 'SELECT name,num1,oc,coc,kc,ckc,com,perc,oc1,coc1,kc1,ckc1,com1,perc1,oc2,coc2,kc2,ckc2,com2,perc2,oc3,coc3,kc3,ckc3,com3,perc3,oc4,coc4,kc4,ckc4,com4,perc4 FROM '.$baseop.' WHERE id='.$midoper.'';
#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
my ($mname,$mnum1,$voc,$vcoc,$vkc,$vckc,$vcom,$vper,$voc1,$vcoc1,$vkc1,$vckc1,$vcom1,$vper1,$voc2,$vcoc2,$vkc2,$vckc2,$vcom2,$vper2,$voc3,$vcoc3,$vkc3,$vckc3,$vcom3,$vper3,$voc4,$vcoc4,$vkc4,$vckc4,$vcom4,$vper4,$voc5,$vcoc5,$vkc5,$vckc5,$vcom5,$vper5)=$sthr->fetchrow();



my $pryzn=$dbhr->quote($vcom);

my $tname="n";

$sqlr = 'INSERT INTO '.$base.' (name,num,idoper,data,satelit,dok,kau,kaukc,priznak,sprnum,zakname,idzak,zaknamekc,idzakkc)';
$sqlr = $sqlr .  ' VALUES ("'.$mnameop.'","'.$mnum.'","'.$midoper.'","'.$tekdata.'","'.$satel.'","'.$mdok.'","'.$mkauop.'","'.$mkaukcop.'","'.$vcom.'","'.$zamovn.'","'.$zakname.'","'.$idzak.'","'.$zaknamekc.'","'.$idzakkc.'")';

#print $sqlr;
$sthr = $dbhr->do($sqlr);

# отримати id останього доданого рахунку 
my $idlastop;
$sqlr ='SELECT LAST_INSERT_ID()';

#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
$idlastop = $sthr->fetchrow_array();


my $zplat=$dbhr->quote($mname);
my $zname=$dbhr->quote($zakname);
my $znamekc=$dbhr->quote($zaknamekc);

my $ocoper="";
my $cocoper="";
my $kcoper="";
my $ckccoper="";
my $comoper="";
my $percoper=0;

if  ($voc ne "") {
$ocoper=$voc;
$cocoper=$vcoc;
$kcoper=$vkc;
$ckcoper=$vckc;
$comoper=$vcom;
$percoper=$vper;
&provadd1();
};

if  ($voc1 ne "") {
$ocoper=$voc1;
$cocoper=$vcoc1;
$kcoper=$vkc1;
$ckcoper=$vckc1;
$comoper=$vcom1;
$percoper=$vper1;
&provadd1();
};
if  ($voc2 ne "") {
$ocoper=$voc2;
$cocoper=$vcoc2;
$kcoper=$vkc2;
$ckcoper=$vckc2;
$comoper=$vcom2;
$percoper=$vper2;
&provadd1();
};

if  ($voc3 ne "") {
$ocoper=$voc3;
$cocoper=$vcoc3;
$kcoper=$vkc3;
$ckcoper=$vckc3;
$comoper=$vcom3;
$percoper=$vper3;
&provadd1();
};

if  ($voc4 ne "") {
$ocoper=$voc4;
$cocoper=$vcoc4;
$kcoper=$vkc4;
$ckcoper=$vckc4;
$comoper=$vcom4;
$percoper=$vper4;
&provadd1();
};

if  ($voc5 ne "") {
$ocoper=$voc5;
$cocoper=$vcoc5;
$kcoper=$vkc5;
$ckcoper=$vckc5;
$comoper=$vcom5;
$percoper=$vper5;
&provadd1();
};


# транслювати параметри 

if ($ENV{'HTTP_X_REQUESTED_WITH'}) {

my $par3=$idlastop;
#    print 'psort='."$par".'&navnakl='."$par1".'&poisk='."$par2".'&id='."$par3".'&redag='."$par4".'&idnakl='."$par5".'&nadd='."$par6".'&sprnum='."$par7";

#    print 'id='."$par3".'&navnakl='."$par4";
    print 'id='."$par3";

} else {
#    print "Доступ запрещен";
}

#$sthr->finish;
$dbhr->disconnect;


# $idlastop  id операцыъ що розшифровуэться
sub provadd1{
#$percoper=10;
#Cформуємо сіметричну проводку
my $tsummaop=0;
#if ($percoper>0) {
#$tsummaop=($msummaop*$percoper)/100;
#};
$sqlr = 'INSERT INTO '.$basef1.' (num1,name,perc,data,satelit,booc,kc,ckc,oc,coc,priznak,kaukc,kau,zaknamekc,zakname,summa,dok,idzakkc,idzak)  VALUES ("'.$idlastop.'",'.$zplat.',"'.$percoper.'","'.$tekdata.'","'.$satel.'",3,"'.$ocoper.'","'.$cocoper.'","'.$kcoper.'","'.$ckcoper.'","'.$comoper.'","'.$mkauop.'","'.$mkaukcop.'","'.$zname.'","'.$znamekc.'","'.$tsummaop.'","'.$mdok.'","'.$idzak.'","'.$idzakkc.'")';
#print $sqlr;
$sthr = $dbhr->do($sqlr);

# для операцій це мабуть не потрібно використовується для знищення для показу можно вствити що завгодно 
my $idlast;
$sqlr ='SELECT LAST_INSERT_ID()';
#print $sqlr;
$sthr = $dbhr->prepare($sqlr);
$sthr->execute();
($idlast) = $sthr->fetchrow_array();

#Cформуємо основну проводку
$sqlr = 'INSERT INTO '.$basef1.' (num1,name,perc,data,satelit,booc,idsimetr,oc,coc,kc,ckc,priznak,kau,kaukc,zakname,zaknamekc,summa,dok,idzak,idzakkc)  VALUES ("'.$idlastop.'",'.$zplat.',"'.$percoper.'","'.$tekdata.'","'.$satel.'",2,"'.$idlast.'","'.$ocoper.'","'.$cocoper.'","'.$kcoper.'","'.$ckcoper.'","'.$comoper.'","'.$mkauop.'","'.$mkaukcop.'","'.$zname.'","'.$znamekc.'","'.$tsummaop.'","'.$mdok.'","'.$idzak.'","'.$idzakkc.'")';
#print $sqlr;
$sthr = $dbhr->do($sqlr);
};
