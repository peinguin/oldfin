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

my $tekoc=$q->param('term1');

my $tekcoc=$q->param('term2');

my $datzvit=$q->param('term3');



$dbhr = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbhr->do("set names utf8");

# вибрати підрозділ


#print '<form id="chsklad" action="/cgi-bin/skladnum.cgi" method="post">';
#print '<div id="contsklad" style="float:left; width: 100%;">';

#$sthr=$dbhr->prepare("SELECT nce,nac FROM ceha ORDER BY nce");
#$sthr->execute();
#if  ($mova eq "Ua") {
#print '<lable for="serv">Підрозділ:</lable><select name="serv">';
#}else{
#print '<lable for="serv">Цех:</lable><select name="serv">';
#}
#while (($mceh,$mnac)=$sthr->fetchrow) {;

#if ($sklad eq $idnom) {;
#print '<option value='.$mceh.' selected>'.$mceh.' - '.$mnac;
#}else{
#print '<option value='.$mceh.'>'.$mceh.' - '.$mnac;
#};

#};
#print '</select>';
#if  ($mova eq "Ua") {
#print '<lable for="idsklad"></lable><input type=submit value="Вибрати">';
#}else{
#print '<lable for="idsklad"></lable><input type=submit value="Выбрать">';
#}

#print ' <div  style="clear:both;"></div>';

$dbhr->disconnect;


if  ($mova eq "Ua") {
print '<div  style="float:left; width: 50%; background-color: #eeeeee;"><font color="#0000ff" size="4">Звітний місяць<input type=radio id=period1 name="per1" value="per" checked></font></div>';
print '<div  style="float:left; width: 49%; background-color: #eeeeee;"><font color="#0000ff" size="4">Новий місяць<input type=radio id=period2 name="per1" value="per1"></font></div>';
}else{
print '<div  style="float:left; width: 50%; background-color: #eeeeee;"><font color="#0000ff" size="4">Отчетный месяц<input type=radio id=period1 name="per1" value="per"></font></div>';
print '<div  style="float:left; width: 49%; background-color: #eeeeee;"><font color="#0000ff" size="4">Новый месяц<input type=radio id=period2 name="per1" value="per1"></font></div>';
};
print ' <div  style="clear:both;"></div>';


#print '<form id="termin" action="/cgi-bin/finzvyt.cgi" method="post">';
print '<form id="termin" method="post">';

print '<div id="contterm"  width: 100%;">';
#print '<input type=hidden  name=idnd value='.$iddoc.'>';
#print '<input type=hidden  name=idnd1 value='.$iddoc.'>';


# Вибір номеру рахунку
if ($mova eq "Ua") {
print  '<div style="width: 5%; float:left; background-color:#ffffcc;"><input type=submit value="."></div>';
print '<div float:left; style="text-align: center;"><div id="zagolu" style="width: 25%; float:left; background-color:#ffffcc;"><font color="#0000ff" size="4">Рахунок </font></div></div>';
print  '<div style="width: 20%; float:left; background-color:#ffffcc;"><input type=text size=4 id="ipochatok" name="numnakl" value='.$tekoc.'></div>';

print '<div style="width: 30%;  float:left; background-color:#ffffcc;"><font color="#0000ff" size="4">Субрахунок</font></div>';
print  '<div style="width: 19%; float:left; background-color:#ffffcc;"><input type=text size=4 id="ikincevadata" name="datanakl" value='.$tekcoc.'></div>';

}else{

print '<div float:left; style="text-align: center;"><div id="zagolr" style="width: 30%; float:left; background-color:#ffffcc;"><font color="#0000ff" size="4">Счет</font></div></div>';
print  '<div style="width: 20%; float:left; background-color:#ffffcc;"><input type=text size=4 id="ipochatok" name="numnakl" value='.$tekoc.'></div>';

print '<div style="width: 30%;  float:left; background-color:#ffffcc;"><font color="#0000ff" size="4">Субсчет</font></div>';
print  '<div style="width: 19%; float:left; background-color:#ffffcc;"><input type=text size=4 id="ikincevadata" name="datanakl" value='.$tekcoc.'></div>';

}
#print  '<div style="width: 5%; float:left; background-color:#ffffcc;"><input type=submit></div>';

print '<div  style="clear:both;"></div>';

#print '<div style="width: 55%;  float:left; background-color:#ffffcc;"><font color="#0000ff" size="4">Дата для щоденного звіту </font></div>';
#print  '<div style="width: 4%; float:left; background-color:#ffffcc;"><input type=text size=3 id="idata" name="datazvit" value='.$datzvit.'></div>';
#print '<div  style="clear:both;"></div>';

print '</div>';
#print '</form>';



if  ($mova eq "Ua") {
#print '<div id="s0" style="width:85%; background-color: #eeeeee;">';
#print '<h4>Звіти по коморі №  '.$sklad.'</h4></div>';

print '<div id="s1" style="width:85%; background-color: #eeeeee;">';
#print '<a href="?navnakl='.'1'.'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="beg" class=naklpage1>оборотна відомість</a></div>';
print '<a href="/cgi-bin/finkacam.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&komm2='."Рух коштів по рахункам 30,31".'" id="r1" class=new1win><h4>Звіт по касі,банку </h4></a></div>';


#print '<div id="s2" style="width: 85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/fzviznos1.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&komm2='.$sklad.'" id="r2" class=new1win><h3>Щоденний звіт по касі,банку</h3></a></div>';

print '<div id="s2" style="width: 80%; float:left; background-color: #eeeeee;"><font color="#000000" size="4">';
print '<a href="/cgi-bin/finkacd.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&komm2='.$sklad.'" id="r2" class=new1win>Щоденний звіт по касі,банку</a></font></div>';

print '<div style="width: 5%;  float:left; background-color:#ffffcc;"><font color="#0000ff" size="4"> за </font></div>';
print  '<div style="width: 4%; float:left; background-color:#ffffcc;"><input type=text size=3 id="idata" name="datazvit" value='.$datzvit.'></div>';
print '<div  style="clear:both;"></div>';

#print '</form>';


#print '<div id="s2" style="width: 85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/fzviznos1.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&komm2='.$sklad.'" id="r2" class=new1win><h3>Щоденний звіт по касі,банку</h3></a>';


#print '<font color="#0000ff" size="4">за</font>';
#print  '<input type=text size=4 id="idata" name="datazvita" value='.$datzv.'></div>';




print '<div id="s3" style="width: 85%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/finzsub.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r3" class=new1win><h4>Відомість обліку по субрахункам</h4></a></div>';
print '<div  style="clear:both;"></div>';

print '<div id="s4" style="width: 85%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/finzsubd.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r4" class=new1win><h4>Відомість обліку по с/рахункам(Док)</h4></a></div>';

print '<div id="s5" style="width: 85%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/finzkau.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r5" class=new1win><h4>Відомість аналіт. обліку по КАУ</h4></a></div>';


print '<div id="s6" style="width:85%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/finzkaud.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r6" class=new1win><h4>Відомість обліку по КАУ(Док)</h4></a></div>';

print '<div id="s7" style="width:85%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/finzglav.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r7" class=new1win><h3>Головна книга</h3></a></div>';

print '<div id="s8" style="width: 85%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/finzsalv.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r8" class=new1win><h4>Сальдова відомість</h4></a></div>';


#print '<a href="/cgi-bin/finobnny.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r8" class=new1win><h4>Сальдова відомість</h4></a></div>';


print '<div id="s9" style="width: 85%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/zrzvedvnp1.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r9" class=new1win><h4>Відомість розподілу витрат</h4></a></div>';

print '<div id="s10" style="width: 85%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/zvnpnakl1.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r10" class=new1win><h4>Шахова відомість</h4></a></div>';

print '<div id="s11" style="width: 85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/zrealiz1.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r11" class=new1win><h4>Відомість реалізації</h4></a></div>';

#print '<div id="s12" style="width: 85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/finvent1.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r11" class=new1win><h4>Інвентарний опис</h4></a></div>';

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

print '</form>';







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
