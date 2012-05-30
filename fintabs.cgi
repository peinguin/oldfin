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



if  ($mova eq "Ua") {
#print '<div id="s0" style="width:85%; background-color: #eeeeee;">';
#print '<h4>Звіти по коморі №  '.$sklad.'</h4></div>';

print '<div id="s1" style="width:99%; background-color: #eeeeee;">';
#print '<a href="?navnakl='.'1'.'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="beg" class=naklpage1>оборотна відомість</a></div>';
print '<a href="/cgi-bin/fin330.cgi?navtab=1&psort='.$idsort.'&komm2='."$sklad".'" id="r1" class=tabsaldo><h4>Поточне сальдо по рахункам</h4></a></div>';


print '<div id="s2" style="width: 99%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/fin330new.cgi?navtab=2&psort='.$idsort.'&komm2='.$sklad.'" id="r2" class=tabsaldo><h3>Сальдо на початок року</h3></a></div>';

print '<div id="s3" style="width: 99%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/fin331.cgi?navtab=3&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r3" class=tabsaldo><h3>Обороти з початку року</h3></a></div>';

print '<div id="s4" style="width: 99%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/fin331kor.cgi?navtab=4&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r4" class=tabsaldo><h4>Обороти по кор.рахункам</h4></a></div>';

print '<div id="s5" style="width: 99%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/finnazva.cgi?navtab=5&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r5" class=tabsaldo><h4>Назви рахунків</h4></a></div>';


print '<div id="s6" style="width:99%; background-color: #eeeeee;">';
print '<a href="/cgi-bin/finrahun.cgi?navtab=6&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r6" class=tabsaldo><h4>Довідник рахунків</h4></a></div>';
#print '<a href="/cgi-bin/finobnoborny.cgi?navtab=6&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r6" class=tabsaldo><h4>Довідник рахунків</h4></a></div>';

#print '<div id="s7" style="width:85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/fruxpotoch.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r7" class=new1win><h3>Рух засобів</h3></a></div>';

#print '<div id="s8" style="width: 85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/fruxarx.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r8" class=new1win><h4>Зведений рух засобів</h4></a></div>';

#print '<div id="s9" style="width: 85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/zrzvedvnp.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r9" class=new1win><h4>Зведенi </h4></a></div>';

#print '<div id="s10" style="width: 85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/zvnpnakl.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r10" class=new1win><h4>Перелік  внутрішнього переміщення</h4></a></div>';

#print '<div id="s11" style="width: 85%; background-color: #eeeeee;">';
##print '<a href="/cgi-bin/zrealiz1.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r11" class=new1win><h4>Відомість реалізації</h4></a></div>';

#print '<div id="s12" style="width: 85%; background-color: #eeeeee;">';
#print '<a href="/cgi-bin/finvent.cgi?navnakl='.($sdvigpn-16).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="r11" class=new1win><h4>Інвентарний опис</h4></a></div>';
#print '<a href="/cgi-bin/sortnakl.cgi?navnakl='.($porojnia-15).'&psort='.$idsort.'&poisk='.$prpoisk.'&id='.$naklid.'" id="pend" class=naklpage1>Інвентарний опис</a></div>';

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
