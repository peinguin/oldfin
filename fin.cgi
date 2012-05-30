#!/usr/bin/perl

print "Content-Type: text/html;CHARSET=UTF-8\n\n";

use CGI;
$q = new CGI;
$q->header(-charset=>'UTF-8');
$url=$q->url();
use DBI;

$view=$q->param('view');

#$sql_type="mysql";
#$sql_host="localhost";
#$sql_login="root";
#$sql_passwd="w9jmEo3B";
#$sql_dbname="zal";

#$dbh = DBI->connect("DBI:$sql_type:database=$sql_dbname;host=$sql_host", $sql_login, $sql_passwd);
#$dbh->do("SET NAMES utf8");

use Config::IniFiles;
my $cfg = Config::IniFiles->new( -file => "config.ini" );

my $mysql_table = $cfg->val( 'database', 'database' );
my $mysql_user  = $cfg->val( 'database', 'user' );
my $mysql_pass  = $cfg->val( 'database', 'pass' );

#my ($idnom,$sk);



# отримати номер поточної комори
$dbh = DBI->connect("DBI:mysql:$mysql_table:localhost",$mysql_user,$mysql_pass,{RaiseError=>1});
$dbh->do("set names utf8");

($sec, $min, $hour, $mday, $mon, $year, $wday, $yday, $isdst)=localtime(time);
$mon++;
$year+=1900;
$mday="0$mday" if ($mday<10);
$mon="0$mon" if ($mon<10);
$hour="0$hour" if ($hour<10);
$min="0$min" if ($min<10);
$sec="0$sec" if ($sec<10);
$cur_date = "$year-$mon-$mday";
$cur_time = "$hour:$min";
$cur_times = "$hour:$min:$sec";
$cur_h = "$hour";
$cur_m = "$min";
$cur_mon = "$mon";
$cur_day = "$mday";
$ctime=time;
$hourinminc=($cur_h*60)+$cur_m;

$red="#ffb3b3";
$dred="#ff4a4a";
$blue="#c8ceff";
$yellow="#fffea1";
$green="#d5ffd2";
$silver="#e0e0e0";
$dsilver="#b1b1b1";

$cdate=$cur_date if ($cdate eq "");

#print $cdate;
#$getdatarows=$dbh->prepare("SELECT id FROM comps WHERE cur_date='$cdate'");
#$getdatarows->execute;
#$datarows=$getdatarows->rows;
#$setstr=$getstr;
#$setstr="20" if ($setstr eq "");
#$getstr="20" if ($getstr eq "");
#$setstr=$datarows if ($getstr eq "all");
#$mm=1;
#if ($datarows < $setstr) {
#    $start=0;
#} else {
#    $start=($datarows-$setstr);
#}


#	    <tr>
#		<td>

#		</td>
#		</tr>

#		<td valign="top" width="3000">

#$getdata=$dbh->prepare("SELECT id, numbcomp, TIME_FORMAT(startt,'%H:%i'), TIME_FORMAT(stopt,'%H:%i'), balance, compserv, paidedserv, status FROM comps WHERE cur_date='$cdate' ORDER BY status LIMIT $start,$setstr");
#$sortby="статусу";
#$getdata->execute;
#	<div id="skladmenu"></div>
#<div  style="clear:both;"></div>


#	<div id="winscroll"></div>

print qq {
<html>
    <head>
	<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
	<title>Учет финансов</title>
	<link href="/css/style1.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="/js/standartny/jquery.js"></script>  
	<script type="text/javascript" src="/js/standartny/jquery.form.js"></script>
	<script type="text/javascript" src="/js/standartny/jquery.cookie.js"></script>
	<script type="text/javascript" src="/js/standartny/jquery.hotkeys.js"></script>
	<script type="text/javascript" src="/js/cfin.js"></script>

    </head>
    <body>

	<div id="skladmenu" style="width: 99%; border: 1px solid #000000;"></div>

	<table border="1" width="100%">

	    <tr>
		<td valign="top" width=30%>
	<div id="menuplat" style="border: 1px solid #000000;">Cntr - панелі. Стрілки - рух. Enter - виконати.</div>
		</td>
		<td valign="top" width=70%>
	<div id="menuoper" style="border: 1px solid #000000;"></div>
		</td>
	    </tr>

	    <tr>
		<td valign="top" width=30%>
		    <div id="content">
		    </div>
		</td>
		<td valign="top" width=70%>

		    <div id="shownakl" style="width: 99%;">
		    </div>
		</td>
	    </tr>
	    <tr>
		<td valign="bottom">
	<div id="slade" style="border: 1px solid #000000;"></div>
		</td>
		<td valign="bottom">
	<div id="loader" style="border: 1px solid #000000;"></div>
		</td>

	    </tr>
	</table>
	<div id="request"></div>
    </body>
</html>
};