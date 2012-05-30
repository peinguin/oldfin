#!/usr/bin/perl 

print "Content-Type: text/html;CHARSET=UTF-8\n\n";

use CGI;

$q = new CGI;
$q->header(-charset=>'UTF-8');

use DBI;
#use CGI;


use Config::IniFiles;
my $cfg = Config::IniFiles->new( -file => "config.ini" );

my $mysql_table = $cfg->val( 'database', 'database' );
my $mysql_user  = $cfg->val( 'database', 'user' );
my $mysql_pass  = $cfg->val( 'database', 'pass' );

my $mova="Ua";
#my $mova="Ru";


#$dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
#$dbhr->do("set names utf8");

# вибрати комору

#$sqlr ='SELECT inum FROM ini_sk'; 
#$sthr = $dbhr->prepare($sqlr);
#$sthr->execute();
#my $sklad = $sthr->fetchrow() ;



#print '<form id="chsklad" action="/cgi-bin/skladnum.cgi" method="post">';
#print '<div id="contsklad" style="float:left; width: 100%;">';

#$sthr=$dbhr->prepare("SELECT nom, sk  FROM sk ORDER BY nom");
#$sthr->execute();
#if  ($mova eq "Ua") {
#print '<lable for="serv">Комора:</lable><select name="serv">';
#}else{
#print '<lable for="serv">Склад:</lable><select name="serv">';
#}
#while (($idnom, $sk)=$sthr->fetchrow) {;

#if ($sklad eq $idnom) {;
#print '<option value='.$idnom.' selected>'.$idnom.' - '.$sk;
#}else{
#print '<option value='.$idnom.'>'.$idnom.' - '.$sk;
#};

#};
#print '</select>';
#if  ($mova eq "Ua") {
#print '<lable for="idsklad"></lable><input type=submit value="Вибрати">';
#}else{
#print '<lable for="idsklad"></lable><input type=submit value="Выбрать">';
#}
#print '</div>';

print '<div  style="clear:both;"></div>';

#$dbhr->disconnect;
#print '</form>';

# правою кнопкою миші  знімає відмітку на radio oncontextmenu="if(this.checked)this.checked=false;return(false)" 

#print '<div  style="float:left; width: 33%; background-color: #eeeeee;"><input type=radio id=period1 oncontextmenu="if(this.checked)this.checked=false;return(false)" name="per" value="per">поточний місяць</div>';
#print '<div  style="float:left; width: 33%; background-color: #eeeeee;"><input type=radio id=period2 oncontextmenu="if(this.checked)this.checked=false;return(false)" name="per" value="per1">минулий</div>';
#print '<div  style="float:left; width: 25%; background-color: #eeeeee;"><input type=radio id=period4 oncontextmenu="if(this.checked)this.checked=false;return(false)" name="per" value="per3">з початку року</div>';
#print ' <div  style="clear:both;">_________________________________________________________</div>';


my ($day,$month,$year) = (localtime)[3..5];
$year = 1900 + $year;

#$year--;

# налаштувати пехыдны дати кінець початок місяця
$month++;
#$month--;
#$day--;

my $date = sprintf("%.4d-%.2d-%.2d",($year,$month,$day));
#my $tekdatanak=$date;

my ($day,$month,$year) = (localtime)[3..5];
$year = 1900 + $year;
$month++;
my $tekdatanak=sprintf("%.4d-%.2d-%.2d",($year,$month,$day));




#print '<div id="contterm"  width: 100%;">';
#print '<input type=hidden  name=idnd value='.$iddoc.'>';
# заголовок накладної
#if ($mova eq "Ua") {

#print '<div float:left; style="text-align: center;"><div id="zagol" style="width: 20%; float:left; background-color:#ffffcc;"><font color="#0000ff" size="4">За період з </font></div></div>';
#print  '<div style="width: 20%; float:left; background-color:#ffffcc;"><input type=text size=11 id="ipochatok" name="numnakl" value='.$date.'></div>';

#print '<div style="width: 8%;  float:left; background-color:#ffffcc;"><font color="#0000ff" size="4">по</font></div>';
#print  '<div style="width: 20%; float:left; background-color:#ffffcc;"><input type=text size=10 id="ikincevadata" name="datanakl" value='.$tekdatanak.'></div>';

#}else{

#print '<div float:left; style="text-align: center;"><div id="zagol" style="width: 20%; float:left; background-color:#ffffcc;"><font color="#0000ff" size="4">За период с </font></div></div>';
#print  '<div style="width: 20%; float:left; background-color:#ffffcc;"><input type=text size=11 id="ipochatok" name="numnakl" value='.$date.'></div>';

#print '<div style="width: 8%;  float:left; background-color:#ffffcc;"><font color="#0000ff" size="4">по</font></div>';
#print  '<div style="width: 20%; float:left; background-color:#ffffcc;"><input type=text size=10 id="ikincevadata" name="datanakl" value='.$tekdatanak.'></div>';

#}
#print '<div  style="clear:both;"></div>';
#print '</div>';

print '<div float:left; style="text-align: center;"><div id="zagolp" style="width: 20%; float:left; background-color:#ffffcc;"><font color="#0000ff" size="4">Зведені звіти</font></div></div>';
print '<div  style="clear:both;"></div>';

if  ($mova eq "Ua") {
#print '<div id="c0" style="width:85%; background-color: #eeeeee;">';
#print '<h4>Звіти по коморі №  '.$sklad.'</h4></div>';

print '<div id="c1" style="width:85%; background-color: #eeeeee;">';
#print '<a href="?navnakl='.'1'.'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="beg" class=naklpage1>оборотна відомість</a></div>';
print '<a href="/cgi-bin/zobor11.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&komm2='."надходження та витрати краму".'" id="p1" class=new1win><h4>Балансовий звіт</h4></a></div>';


print '<div id="c2" style="width: 85%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/zpnakl1.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&komm2='.$sklad.'" id="p2" class=new1win><h4>Фінансовий звіт</h4></a></div>';

print '<div id="c3" style="width: 85%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/zpvnadh1.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="p3" class=new1win><h4>Аналіз головної книги</h4></a></div>';

#print '<div id="c4" style="width: 85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/zpzved1.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="p4" class=new1win><h4>Зведена відомість надходження(з вн.переміщенням)</h4></a></div>';

#print '<div id="c5" style="width: 85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/zpzvedvnp.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="p5" class=new1win><h4>Зведенi надходження та переміщення</h4></a></div>';


#print '<div id="c6" style="width:85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/zrnakl.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="p6" class=new1win><h4>Перелік видаткових накладних</h4></a></div>';

#print '<div id="c7" style="width:85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/zrvnadh.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="p7" class=new1win><h4>Відомість відвантаження</h4></a></div>';

#print '<div id="c8" style="width: 85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/zrzved.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="p8" class=new1win><h4>Зведена відомість відвантаження(з вн.переміщенням)</h4></a></div>';

#print '<div id="c9" style="width: 85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/zrzvedvnp.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="p9" class=new1win><h4>Зведенi відвантаження та переміщення</h4></a></div>';

#print '<div id="c10" style="width: 85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/zvnpnakl.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="p10" class=new1win><h4>Перелік накладних внутрішнього переміщення</h4></a></div>';

#print '<div id="c11" style="width: 85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/zrealiz1.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="p11" class=new1win><h4>Відомість реалізації</h4></a></div>';

#print '<div id="c12" style="width: 85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/zinvent.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="p12" class=new1win><h4>Інвентарний опис</h4></a></div>';

print ' <div  style="clear:both;"></div>';
}else{
print '<div  style="float:left; width: 25%; background-color: #eeeeee;">';
print '<a href="?navnakl='.'1'.'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="beg" class=naklpage1>в начало (Home)</a></div>';
print '<div  style="float:left; width: 22%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="pup" class=naklpage1>назад (pageUp)</a></div>';
print '<div  style="float:left; width: 29%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($sdvigpn+18).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="pdw" class=naklpage1>вперед(pageDown)</a></div>';
print '<div  style="float:left; width: 23%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($porojnia-15).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="pend" class=naklpage1>в конец (End)</a></div>';
print ' <div  style="clear:both;"></div>';

}









#my ($idnom,$sk);
#$idmom=$q->param('poisk');
#my $postserv=$q->param('serv');
#    print "111";
#    print $idnom;
#    print $postserv;
#    print $q->param('poisk');
#    print $q->param('comp');
# зберегти поточну комору 

if ($ENV{'HTTP_X_REQUESTED_WITH'}) {

} else {
    print "Доступ запрещен";
}

#   print "Поиск66666666666666";
