var finbase=1;
var f1opmenu="y";
var sprav=0;
var currentSelection = 1;
var currentSelpage1 = 1;
//var currentSelpage2 = 1;
var curSelrigth=1;
var curSelleft=1;
var tekprog1 = ("/cgi-bin/finspoper.cgi");
var tekprog2 = ("/cgi-bin/f1op.cgi");
var addnakl = ("/cgi-bin/finspplat.cgi");
var addriad = ("/cgi-bin/.cgi");
var tekurl = ("/cgi-bin/finspoper.cgi");
//var prog=0;
var poiskenter=0
var retpar = "";
var retpar1 = "";
var popup=0;
var retpar2 = "";
var retparwr = "";
var glpar =""; 
var col =""; 
var calkpole =1;
var recordid =0;
var altdown = "n"
// r s для лівого вікна  p c для правого
var winnavr ="p"; 
var razdeloper ="bank"; 
var sprnum =0;
var oblnavr ="p1"; 
var oblnavs ="c1"; 
        var p1 ="p1";
        var s1 = "c1";
var menuoff=1;
// Функция для добавления обработчиков событий
function addHandler(object, event, handler, useCapture) {
      if (object.addEventListener) {
            object.addEventListener(event, handler, useCapture ? useCapture : false);
      } else if (object.attachEvent) {
            object.attachEvent('on' + event, handler);
      } else alert("Add handler is not supported");
}

// Определяем браузеры
var ua = navigator.userAgent.toLowerCase();
var isIE = (ua.indexOf("msie") != -1 && ua.indexOf("opera") == -1);
var isGecko = (ua.indexOf("gecko") != -1);

//    $("#request").text("привет1");

// Добавляем обработчики
//if (isIE) addHandler (document, "keydown", hotSave);
//else addHandler (document, "keypress", hotSave);

function hotSave(evt) {

      // Получаем объект event
      evt = evt || window.event;
//    $("#request").text("привет1"+evt);
      var key = evt.keyCode || evt.which;
      // Определяем нажатие Ctrl+S
//      key = !isGecko ? (key == 83 ? 1 : 0) : (key == 115 ? 1 : 0);
//      if (evt.ctrlKey && key) {

//      key = !isGecko ? (key == 116 ? 1 : 0);
//      key = !isGecko ? (key == 116);
//      if (evt.key) {
//    $("#request").append("привет key "+key);
//       key = !isGecko ? (key == 83 ? 1 : 0) : (key == 115 ? 1 : 0);
       key =1;
//      key = !isGecko ? (key == 116 ? 1 : 0);

//    $("#request").append("привет k "+evt.ctrlKey && key);
      if (evt.ctrlKey && key) {

            // Блокируем появление диалога о сохранении
            if(evt.preventDefault) evt.preventDefault();
evt.returnValue = false;
            // Запускаем любую функцию, по желанию
            clientFunction();
            // Возвращаем фокус в окно
            window.focus();
            return false;
      }
}
function clientFunction() {
    $("#request").text("привет CntrS");
//    $("#request").append("привет "+key);
      // И тут что-то происходит...
}

function request ()
{
//    $("#request").text("Отправка данных");
}

function response ()
{
//    $("#request").text("Запись добавлена");
//    $("#addComp").resetForm();
}

function showmy (){
	$.ajax({
	    url: "/cgi-bin/finmenu.cgi",
//	    cache: false,
	    success: function(html) {
		$("#skladmenu").html(html);
	    }
	});

    $.ajax({
	url: tekurl,
//	cache: false,
	ifmodified: true,
	success: function(html) {
	    $("#content").html(html);
	},
	error: function() {
	    $("#request").text("Error");
	}
    });
////Показати праву панель
		menuop();
		shownakl();
}

function pokaz (p) {
//	$("#request").append("pokaz"+p);
	currentSelection=curSelleft;
        tekurl = tekprog1;
		content(p);
		shownakl(p);
		menuop(p);
}

function menuop (par) {
//	$("#request").append("menu"+f1opmenu);
if (f1opmenu=="y") {
	$.ajax({
	    url: "/cgi-bin/finmenuop.cgi",
//	    cache: false,
	    data: par,
	    success: function(html) {
		$("#menuoper").html(html);
	    }
	});
}else{
		$("#menuoper").text("Ins-додати рядок");
};
}

function menuplat (parm) {
//		$("#request").text("meuplat"+parm);
var menurl="/cgi-bin/finmenuplat.cgi";
if (parm == 1) {
menurl="/cgi-bin/finmenno.cgi";
}
	$.ajax({
	    url: menurl,
//	    cache: false,
	    data: parm,
	    success: function(html) {
		$("#menuplat").html(html);
	    }
	});
}

//function obrsubmit (p) {
//		$("#request").text("obr"+paraction);
//	$(this).ajaxSubmit({
//	    url: paraction,
//	    type: parmetod,
////	    cache: false,
//	    beforeSubmit: request,
//	    success: function (chdata) {
////	    content(chdata);
//	    }
//	});
//}

// если будут проблемы с изменениями востановить cashe:false

function content (cl) {
//		$("#request").append("cont1"+currentSelection);
//	$("#request").text("conten"+tekurl+"--"+cl);
//перевірить як впливае на роботу скріпта
	$("#content").blur();

	$.ajax({
	    url: "/cgi-bin/finmenu.cgi",
//	    cache: false,
	    success: function(html) {
		$("#skladmenu").html(html);
	    }
	});

	$.ajax({
	    url: tekurl,
//	    cache: false,
	    data: cl,
	    beforeSend: function() {
		$("#loader").html('<img src="/img/spinner1.gif" />');
	    },
	    success: function(html) {
		$("#content").html(html);
	    $('#'+oblnavs+currentSelection).css("background-color", "#ffff33");
		$("#loader").html("");
	    }

	});
};


//показ накладних
function shownakl (par) {

//	$("#request").text("show"+tekprog2+"--"+p1);
	$.ajax({
	    url: tekprog2,
//	    type: "POST",
//	    cache: false,
	    data: par,
	    beforeSend: function() {
		$("#loader").html('<img src="/img/spinner1.gif" />');
	    },
	    success: function(html) {
//	$("#request").append("show--"+oblnavs+currentSelection);

	$("#"+oblnavs+currentSelection).blur();
	$("#"+p1).blur();

		$("#shownakl").html(html);
	    $('#'+oblnavs+currentSelection).css("background-color", "#ffff33");
		$("#loader").html("");
	    }
	});
};


function navigate(direction) {

//		$("#request").append("nav--"+oblnavr);
//		$("#request").append("nav--"+currentSelection);
         p1 = (oblnavr+currentSelection);
         s1 = (oblnavs+currentSelection);

	if(direction == 'up') {
		if(currentSelection != 0) {
			currentSelection--;
		if(currentSelection > 0) {
}
		}
		if(currentSelection == 0) {
			currentSelection=1;
        var pnav1 = $("#pup").attr("href").split("?")[1];

//		$("#request").append("nav--"+pnav1);
if (winnavr == "p") {
	shownakl(pnav1);
}else{
	content(pnav1);
}
		}
	}

	if (direction == 'down') {
		if(currentSelection != 19) {
			currentSelection++;

		if(currentSelection == 19) {
// кінець таблиці
			currentSelection=1;
        var pnav1 = $("#pdw").attr("href").split("?")[1];
if (winnavr == "p") {
	shownakl(pnav1);
}else{
	content(pnav1);
}
		}
//Кінець інформації в таблиці
        var p10 = (oblnavr+currentSelection);
        var pnav10 = $("#"+p10).attr("href");
		if(pnav10) {
}else{
			currentSelection--;
}
		}
	}

	    $("#"+s1).css("background-color", "#eeeeee");
	    $('#'+oblnavs+currentSelection).css("background-color", "#ffff33");

// підказка коментаря2
        var pkom1 = (oblnavr+currentSelection);
        var komm2= $("#"+pkom1).attr("title");
//		$("#request").append("nav--"+pkom1);
		$("#slade").text(komm2);

}


function vybor(direction) {

        p1 = (oblnavr+currentSelection);
        p2 = $("#"+p1).attr("class");
//		$("#request").append("vybor"+p2);
//обробка звітів
if (addnakl == "zvity") {

        var parurl = $("#"+p1).attr("href");
var term1 =  $("#ipochatok").attr("value")
var term2 =  $("#ikincevadata").attr("value")
var term3 =  $("#idata").attr("value")
//		$("#request").append("term--"+glpar1);
//			currentSelection=1;

        parurl = parurl+"&term1="+term1+"&term2="+term2+"&term3="+term3;

if ($("#period2").attr("checked")==true){
        parurl = parurl+"&dcheck=per2";
}

//if ($("#period3").attr("checked")==true){
//        var parurl = parurl+"&dcheck=per3";
//}
if ($("#period4").attr("checked")==true){
        var parurl = parurl+"&dcheck=per4";
}
if ($("#period1").attr("checked")==true){
        var parurl = parurl+"&dcheck=per1";
}

//		$("#request").text("vybor"+parurl);
		zvit(parurl);
}

// обробка операцій та замовників
        if (p2 == "platoper") {
//ID операції у довіднику
var recid =$("#"+p1).attr("href").split("idkrt=")[1];
recid =recid.split("&")[0];

sprnum =$("#"+p1).attr("href").split("sprnum=")[1];
sprnum =sprnum.split("&")[0];
//		$("#request").append("vybor"+p1);
// Параметри для додання.редагування бази
        var par ="fbase="+finbase+"&idkrt="+recid+"&id="+recordid+"&sprnum="+sprnum;
//		$("#request").text("vybor1"+par);
	$.ajax({
	    url: $("#"+p1).attr("href"),
	    type: "POST",
//	    cache: false,
	    data:  par,
//	    beforeSumbit: request,
	    success: function (data) {
//		$("#request").text("vybor1"+data);
	    }
	});

			curSelleft=currentSelection;
if (recordid==0) {
	currentSelection=1;
winnavr = "p"
oblnavr ="p"+(calkpole+1); 
oblnavs ="c"+(calkpole+1); 
retparwr="";
}else{
winnavr = "p"
	currentSelection=curSelrigth;
oblnavr ="p"+(calkpole); 
oblnavs ="c"+(calkpole); 
recordid=0;
}

//plat/oper
if (sprnum != 0) {
sprnum = 0;
menuoff=1;
		menuplat(menuoff);
tekurl=tekprog1;
	content(retpar1);
}
////Показати поточні операції
//		$("#request").text("vybor1"+retparwr);
		shownakl(retparwr);
	$("#shownakl").blur();
//    	return false;
    };

          if (p2 == "redf1op") {

//		$("#request").append("redf1opKey-"+p1);
recordid =$("#"+p1).attr("href").split("id=")[1];
recordid =recordid.split("&")[0];
        var pnav1 = $("#"+p1).attr("href").split("?")[1];
//		$("#request").append("redf1opKey-"+pnav1);
			curSelrigth=currentSelection;
//Показує праву панель
		shownakl(pnav1);
}

          if (p2 == "redoper") {
recordid =$("#"+p1).attr("href").split("id=")[1];
recordid =recordid.split("&")[0];
        var pnav1 = $("#"+p1).attr("href").split("?")[1];
//		$("#request").append("redf1opKey-"+pnav1);
			curSelrigth=currentSelection;
//Показує праву панель
		shownakl(pnav1);
winnavr = "r"
oblnavr ="r"; 
oblnavs ="s"; 
        p1 ="r1";
        s1 = "s1";
	content();
}



          if (p2 == "redplat") {
recordid =$("#"+p1).attr("href").split("id=")[1];
recordid =recordid.split("&")[0];
//	$("#"+p1).blur();
        var pnav1 = $("#"+p1).attr("href").split("?")[1];
//		$("#request").append("redf1opKey-"+pnav1);
			curSelrigth=currentSelection;
//Показує праву панель
		shownakl(pnav1);
	$("#shownakl").blur();
winnavr = "r"
oblnavr ="r"; 
oblnavs ="s"; 
        p1 ="r1";
        s1 = "s1";

//Показує ліву панель
	menuplat(pnav1);
pnav1 =pnav1.split("&sprnum")[0];

// Параметри для додання.редагування бази
    pnav1 =pnav1+"&sprnum="+sprnum;

tekurl=addnakl;
	content(pnav1);

}

          if (p2 == "tabsaldo") {
        tekprog2 = $("#"+p1).attr("href").split("?")[0];

var prog=$("#"+p1).attr("href").split("navtab=")[1];
prog =prog.split("&")[0];
          if (prog == 1) {
         addriad = ("/cgi-bin/finaddsaldo.cgi");
finbase=31;
};
          if (prog == 2) {
         addriad = ("/cgi-bin/finadds2.cgi");
finbase=32;
};
          if (prog == 3) {
         addriad = ("/cgi-bin/finadds3.cgi");
finbase=33;
};
          if (prog == 4) {
         addriad = ("/cgi-bin/finadds4.cgi");
sprav=4;
finbase=34;
};
          if (prog == 5) {
         addriad = ("/cgi-bin/finadds5.cgi");
};
          if (prog == 6) {
         addriad = ("/cgi-bin/finadds6.cgi");
};
//		$("#request").text("saldo"+tekprog2);

			curSelleft=currentSelection;
			currentSelection=1;
//Показує праву панель
winnavr ="p"; 
oblnavr ="p1"; 
oblnavs ="c1"; 

		shownakl();
}
    	return false;
}


function zvit(parzvit) {
//		$("#request").append("term--"+glpar2);
var features, w = 800, h = 600;
	  var top = (screen.height - h)/2, left = (screen.width - w)/2;
	  if(top < 0) top = 0;
	  if(left < 0) left = 0;
	  features = 'top=' + top + ',left=' +left;
	  features += ',height=' + h + ',width=' + w + ',scrollbars=yes,menubar=yes';
//	  features += ',height=' + h + ',width=' + w + ',resizable=no,toolbar=yes';
	  myWin = open(parzvit, 'displayWindow', features);
////Показати накладну
	$("a.new1win").blur();
	return false;
};


function panpar() {
			currentSelection=1;
winnavr = "r";
oblnavr ="r"; 
oblnavs ="s"; 
        p1 ="r1";
        s1 = "s1";
        tekurl = tekprog1;
};

function dodaty(direction) {
////Додати рядок 
	$.ajax({
	    url: addriad,
	    type: "POST",
//	    cache: false,
//	    data:  parnakl,
//	    beforeSumbit: request,
	    success: function (data) {
//		$("#request").append(data);
////Показати таблицю
		shownakl(data);
	    }
	});
	return false;
    };




$(document).ready(function(){

//Авторизація
    var cook = $.cookie("passkey");
    if (cook == null) {
	$("#background").show();
	$("#login").show();
    }
    $("#loginForm").live("submit", function() {
	var link = $(this).attr("action");
	$(this).ajaxSubmit({
	    url: link,
	    cache: false,
	    beforeSubmit: function() {
		$("#rez").html("<img src=/img/spinner1.gif>");
	    },
	    success: function(log) {
		$("#rez").text(log);
		if (log == "1" || log == "2") {
		    $("#rez").text("Попытка входа не удалась");
		} else {
		    $.cookie("passkey", log, { path: '/', expires: 10 });
		    $("#background").hide();
		    $("#login").hide();
		}
	    }
	});
	return false;
    });


//document.onload = function(){
//     document.formf1op.vvod.focus();
//}

//$("#vvod").load(function () {
//focus();
//})

// Определяем браузеры
//var ua = navigator.userAgent.toLowerCase();
//var isIE = (ua.indexOf("msie") != -1 && ua.indexOf("opera") == -1);
//var isGecko = (ua.indexOf("gecko") != -1);

// Добавляем обработчики
if (isIE) {
addHandler (document, "keydown", hotSave);
}else{
 addHandler (document, "keypress", hotSave);
}

showmy();

    $("#foper").live("click", function(){
f1opmenu="y";
winnavr ="p"; 
oblnavr ="p1"; 
oblnavs ="c1"; 
			currentSelection=1;
        tekprog1 = ("/cgi-bin/finspoper.cgi");
        addnakl = ("/cgi-bin/finspplat.cgi");
        tekprog2 = ("/cgi-bin/f1op.cgi");
finbase=1;
		pokaz();
	return false;
    });

    $("#fprovod").live("click", function(){
winnavr ="p"; 
oblnavr ="p1"; 
oblnavs ="c1"; 
f1opmenu="n";
			currentSelection=1;
        tekprog1 = ("/cgi-bin/finspplat.cgi");
         addriad = ("/cgi-bin/finaddpr.cgi");
         addnakl = ("/cgi-bin/finspplat.cgi");
        tekprog2 = ("/cgi-bin/f1.cgi");
finbase=2;
		pokaz();
//		$("#request").text("prih"+tekurl);
	return false;
    });


    $("#dovid").live("click", function(){
winnavr ="p"; 
oblnavr ="p1"; 
oblnavs ="c1"; 
sprav=1;
			currentSelection=1;
        tekprog1 = ("/cgi-bin/fintabs.cgi");
         addriad = ("/cgi-bin/finaddsaldo.cgi");
         addnakl = ("/cgi-bin/finspplat.cgi");
        tekprog2 = ("/cgi-bin/fin330.cgi");
finbase=31;
f1opmenu="n";
		pokaz();
//		$("#request").text("prih"+tekurl);
	return false;
    });


    $("a.tabsaldo").live("click", function(){
        tekprog2 = $(this).attr("href").split("?")[0];
var prog=$(this).attr("href").split("navtab=")[1];
prog =prog.split("&")[0];
          if (prog == 1) {
         addriad = ("/cgi-bin/finaddsaldo.cgi");
finbase=31;
};
          if (prog == 2) {
         addriad = ("/cgi-bin/finadds2.cgi");
finbase=32;
};
          if (prog == 3) {
         addriad = ("/cgi-bin/finadds3.cgi");
finbase=33;
};
          if (prog == 4) {
         addriad = ("/cgi-bin/finadds4.cgi");
sprav=4;
finbase=34;
};
          if (prog == 5) {
         addriad = ("/cgi-bin/finadds5.cgi");
};
          if (prog == 6) {
         addriad = ("/cgi-bin/finadds6.cgi");
};
//		$("#request").text("saldo"+prog);
//		$("#request").append("saldo"+addriad);

			curSelleft=currentSelection;
currentSelection=1;
//Показує праву панель
winnavr ="p"; 
oblnavr ="p1"; 
oblnavs ="c1"; 
		shownakl();
	return false;
    });

    $("#zakaz").live("click", function(){
winnavr ="r"; 
oblnavr ="r"; 
oblnavs ="s"; 

			currentSelection=1;
        tekprog1 = ("/cgi-bin/tabzak.cgi");
         addnakl = ("/cgi-bin/addprih.cgi");
        tekprog2 = ("/cgi-bin/vzak.cgi");
		pokaz();
	return false;
    });

    $("#rasch").live("click", function(){
winnavr ="r"; 
oblnavr ="r"; 
oblnavs ="s"; 

			currentSelection=1;
        tekprog1 = ("/cgi-bin/fspisdvig1.cgi");
//         addnakl = ("/cgi-bin/addprih.cgi");
        tekprog2 = ("/cgi-bin/vrasch1.cgi");
		pokaz();
	return false;
    });


    $("#rash").live("click", function(){
winnavr ="r"; 
oblnavr ="r"; 
oblnavs ="s"; 

			currentSelection=1;
        tekprog1 = ("/cgi-bin/tabnakl.cgi");
        addnakl = ("/cgi-bin/addnakl.cgi");
        tekprog2 = ("/cgi-bin/vrnakl.cgi");
		pokaz();
	return false;
    });

    $("#vnp").live("click", function(){
winnavr ="r"; 
oblnavr ="r"; 
oblnavs ="s"; 

			currentSelection=1;
        tekprog1 = ("/cgi-bin/tabvnp.cgi");
        addnakl = ("/cgi-bin/addvnp.cgi");
        tekprog2 = ("/cgi-bin/vnpnakl.cgi");
		pokaz();
	return false;
    });

    $("#zvyt").live("click", function(){
//  myWin.document.write("/cgi-bin/finspplat.cgi");
 	$.ajax({
	    url: "/cgi-bin/finobnny.cgi",
//	    cache: false,

	    success: function(html) {
		$("#loader").html("");
	    }
	});




			currentSelection=1;
//poiskenter=0;
        tekprog1 = ("/cgi-bin/finzvyt.cgi");
        addnakl = ("zvity");
        tekprog2 = ("/cgi-bin/finzvity1.cgi");
//курсор на ліву панель
winnavr = "r"
oblnavr ="r"; 
oblnavs ="s"; 
//        p1 ="r1";
//        s1 = "s1";
f1opmenu="n";
		pokaz();
	return false;
    });


    $("a.winleft").live("click", function(){
popup=0;
			currentSelection=1;
        var parnakl = $(this).attr("href").split("?")[1];
			retpar1=parnakl;
//		$("#request").text("nakl"+parnakl);
		content(parnakl);
	return false;
    });

    $("a.winright").live("click", function(){
popup=0;
			currentSelection=1;
        var parnakl = $(this).attr("href").split("?")[1];
			retparwr=parnakl;
//		$("#request").text("nakl"+parnakl);
		shownakl(parnakl);
	return false;
    });

    $("a.naklpage2").live("click", function(){
popup=0;
			currentSelection=1;
        var parnakl = $(this).attr("href").split("?")[1];
			retpar2=parnakl;
//		$("#request").text("nakl"+parnakl);
		content(parnakl);
	return false;
    });


    $("a.menuf1op").live("click", function(){
//	$("#request").text("oper11");
			currentSelection=1;
winnavr ="r"; 
oblnavr ="r"; 
oblnavs ="s"; 
        p1 ="r1";
        s1 = "s1";
        var par = $(this).attr("href").split("?")[1];
        tekurl = $(this).attr("href").split("?")[0];
		menuop(par);
		content(par);
	return false;
    });

    $("a.menf1opp").live("click", function(){
//	$("#request").text("oper11");
			currentSelection=1;
winnavr ="r"; 
oblnavr ="r"; 
oblnavs ="s"; 
        p1 ="r1";
        s1 = "s1";

        var par = $(this).attr("href").split("?")[1];
        tekurl = $(this).attr("href").split("?")[0];
		menuplat(par);
		content(par);
	return false;
    });


    $("a.delrriad").live("click", function(){
poiskenter=0;
popup=0;

        var pardel = $(this).attr("href").split("?")[1];
//		$("#request").text("delnakl1"+pardel);
if ($("#delriad").attr("checked")==true){
        tekurl = tekprog1;
        pardel = pardel+"&dcheck=yes";
////виконати скрипт видалення
	$.ajax({
	    url: $(this).attr("href"),
	    type: "POST",
//	    cache: false,
	    data:  pardel,
//	    beforeSumbit: request,
	    success: function (data) {
//		$("#request").append(data);
	    }
	});
////Показати праву панель
		shownakl(pardel);
}
	return false;
    });

    $("a.month").live("click", function(){
poiskenter=0;
popup=0;

        var par = $(this).attr("href").split("?")[1];
	$.ajax({
	    url: $(this).attr("href"),
	    type: "POST",
//	    cache: false,
	    data:  par,
//	    beforeSumbit: request,
	    success: function (data) {
//		$("#request").append(data);
	    }
	});
////Показати праву панель
		shownakl();
	return false;
    });

    $("a.riaddubl").live("click", function(){
poiskenter=0;
popup=0;

	currentSelection=1;
        var par = $(this).attr("href").split("?")[1];
	$.ajax({
	    url: $(this).attr("href"),
	    type: "POST",
//	    cache: false,
	    data:  par,
//	    beforeSumbit: request,
	    success: function (data) {
//		$("#request").append(data);
//		shownakl(par);
		shownakl();
	    }
	});
    ////Показати праву панель
	return false;
    });

    $("a.cleankau").live("click", function(){
poiskenter=0;
popup=0;
	$("a.cleankau").blur();
        var par = $(this).attr("href").split("?")[1];
	$.ajax({
	    url: $(this).attr("href"),
	    type: "POST",
//	    cache: false,
	    data:  par,
//	    beforeSumbit: request,
	    success: function (data) {
//		$("#request").append("clean"+data);
	    }
	});
////Показати праву панель
winnavr = "p"
	currentSelection=curSelrigth;
oblnavr ="p"+(calkpole); 
oblnavs ="c"+(calkpole); 

		shownakl(par);
////Показати ліву панель
menuoff=1;
		menuplat(menuoff);
sprnum = 0;
tekurl=tekprog1;
	content(retpar1);


	return false;
    });


    $("a.platadd").live("click", function(){
//        var parurl = "";
        var parurl = $(this).attr("href");
//		$("#request").append("platadd--"+parurl);
var features, w = 800, h = 600;
	  var top = (screen.height - h)/2, left = (screen.width - w)/2;
	  if(top < 0) top = 0;
	  if(left < 0) left = 0;
	  features = 'top=' + top + ',left=' +left;
	  features += ',height=' + h + ',width=' + w + ',scrollbars=yes,menubar=yes';
//	  features += ',height=' + h + ',width=' + w + ',resizable=no,toolbar=yes';
//		$("#request").append("platadd--"+features);
	  myWin = open(parurl, 'displayWindow', features);
////Показати накладну

	$("a.platadd").blur();

	return false;
});

//    $("a.dszak").live("submit", function(){
//    $("#platredkrt").live("submit", function(){
//		$("#request").append("platredadd--");
//  myWin.document.write("/cgi-bin/finspplat.cgi");
//	return false;
//});




    $("a.platoper").live("click", function(){
poiskenter=0
popup=0;
// id рядка у довіднику
var recid =$(this).attr("href").split("idkrt=")[1];
recid =recid.split("&")[0];

sprnum =$(this).attr("href").split("sprnum=")[1];
sprnum =sprnum.split("&")[0];
//		$("#request").append("plat1 "+$(this).attr("href").split("?")[1]);
//		$("#request").append("plat1 "+$(this).attr("href"));
// Параметри для додання.редагування бази
        var par ="fbase="+finbase+"&idkrt="+recid+"&id="+recordid+"&sprnum="+sprnum;
//        var par ="idkrt="+recid+"&id="+recordid+"&sprnum="+sprnum;
//		$("#request").append("plat11 "+par);
//// Параметри для додання.редагування бази
	$.ajax({
	    url: $(this).attr("href"),
	    type: "POST",
//	    cache: false,
	    data:  par,
//	    beforeSumbit: request,
	    success: function (data) {
//		$("#request").append("plat1"+data);
	}
	});

			curSelleft=currentSelection;
if (recordid==0) {
	currentSelection=1;
winnavr = "p"
oblnavr ="p"+(calkpole+1); 
oblnavs ="c"+(calkpole+1); 
retparwr="";
}else{
winnavr = "p"
	currentSelection=curSelrigth;
oblnavr ="p"+(calkpole); 
oblnavs ="c"+(calkpole); 
recordid=0;
}
////Показати праву панель
		shownakl(retparwr);

if (sprnum != 0) {
menuoff=1;
		menuplat(menuoff);
sprnum = 0;
tekurl=tekprog1;
	content(retpar1);

}
	return false;
    });


    $("a.redf1op").live("click", function(){
        var parnakl = $(this).attr("href").split("?")[1];
        col ="c"+ $(this).attr("id").split("p")[1];
// id рядка у базі
recordid =$(this).attr("href").split("id=")[1];
recordid =recordid.split("&")[0];
//		$("#request").append("redf1opclick"+col);
//разберемо id td  для позиціювання  після обробки
calkpole=col.substr(1,1);
//calkpole=parseInt(calkpole);
currentSelection=col.substr(2,2);
oblnavr ="p"+col.substr(1,1);
oblnavs ="c"+col.substr(1,1); 
			curSelrigth=currentSelection;
////Показати праву панель
	    shownakl(parnakl);
	return false;
    });

    $("a.redoper").live("click", function(){
        var parnakl = $(this).attr("href").split("?")[1];
        col ="c"+ $(this).attr("id").split("p")[1];
// id рядка у базі
recordid =$(this).attr("href").split("id=")[1];
recordid =recordid.split("&")[0];
//разберемо id td  для позиціювання  після обробки
calkpole=col.substr(1,1);
//calkpole=parseInt(calkpole);
currentSelection=col.substr(2,2);
oblnavr ="p"+col.substr(1,1);
oblnavs ="c"+col.substr(1,1); 
			curSelrigth=currentSelection;
////Показати праву панель
	    shownakl(parnakl);
winnavr = "r"
oblnavr ="r"; 
oblnavs ="s"; 
        p1 ="r1";
        s1 = "s1";
	content();

	return false;
    });

    $("a.redplat").live("click", function(){
        var parnakl = $(this).attr("href").split("?")[1];
        col ="c"+ $(this).attr("id").split("p")[1];
	$(this).blur();
// id рядка у базі
recordid =$(this).attr("href").split("id=")[1];
recordid =recordid.split("&")[0];

parnakl =parnakl.split("&sprnum")[0];

// Параметри для додання.редагування бази
    parnakl =parnakl+"&sprnum="+sprnum;

//разберемо id td  для позиціювання  після обробки
calkpole=col.substr(1,1);
//calkpole=parseInt(calkpole);
currentSelection=col.substr(2,2);
oblnavr ="p"+col.substr(1,1);
oblnavs ="c"+col.substr(1,1); 
			curSelrigth=currentSelection;
//		$("#request").append("redf1op"+col);
////Показати праву панель
	    shownakl(parnakl);

//Показує ліву панель
winnavr = "r"
oblnavr ="r"; 
oblnavs ="s"; 
        p1 ="r1";
        s1 = "s1";
tekurl=addnakl;
//		$("#request").append("redf1op"+parnakl);
	content(parnakl);
		menuplat(parnakl);

	return false;
    });

//відключаємо керування клавішами в формі редагування

    $("#vvod").live("focusin", function(){
//		$("#request").append("vvod focus");
popup=1;
poiskenter=1;
    });

//    $("#vvodop").live("focusin", function(){
//		$("#request").append("vvod focus");
//popup=1;
//poiskenter=1;
//    });

// це редагування рядка
    $("#formf1op").live("submit", function(){
poiskenter=0;
popup=0;
var parnakl=retparwr;
//var parnakl=retparwr+"&razoper="+razdeloper;
//		$("#request").append("formf1op"+col);
	$(this).ajaxSubmit({
	    url: $(this).attr("action"),
	    type: $(this).attr("method"),
	    beforeSubmit: request,
	    success: function (chdata) {
//		$("#request").append("formf1op--"+chdata);
    ////Показати таблицю
		shownakl(parnakl);
	    }
	});
//прибрать id запису щоб не заважав доданню операцій
recordid=0;
	return false;
    });

    $("a.newwin").live("click", function(){
			currentSelpage1=currentSelection;
        var parnakl = $(this).attr("href").split("?")[1];
	$.ajax({
	    url: $(this).attr("href"),
	    type: "POST",
//	    cache: false,
	    data:  parnakl,
//	    beforeSumbit: request,
	    success: function(html) {
		$("#content").html(html);
	    }
	});
////Показати праву панель
		shownakl(parnakl);
	return false;
    });


    $("a.new1win").live("click", function(){
        var parurl = $(this).attr("href");
var term1 =  $("#ipochatok").attr("value")
var term2 =  $("#ikincevadata").attr("value")
var term3 =  $("#idata").attr("value")
//		$("#request").append("term--"+glpar1);
//			currentSelection=1;
			curSelleft=currentSelection;

        parurl = parurl+"&term1="+term1+"&term2="+term2+"&term3="+term3;

if ($("#period2").attr("checked")==true){
        parurl = parurl+"&dcheck=per2";
}

//if ($("#period3").attr("checked")==true){
//        var parurl = parurl+"&dcheck=per3";
//}
if ($("#period4").attr("checked")==true){
        parurl = parurl+"&dcheck=per4";
}
if ($("#period1").attr("checked")==true){
        parurl = parurl+"&dcheck=per1";
}
//		$("#request").append("wterm--"+parurl);
var features, w = 800, h = 600;
	  var top = (screen.height - h)/2, left = (screen.width - w)/2;
	  if(top < 0) top = 0;
	  if(left < 0) left = 0;
	  features = 'top=' + top + ',left=' +left;
	  features += ',height=' + h + ',width=' + w + ',scrollbars=yes,menubar=yes';
//	  features += ',height=' + h + ',width=' + w + ',resizable=no,toolbar=yes';
	  myWin = open(parurl, 'displayWindow', features);
//	  myWin = open('/cgi-bin/tabkart.cgi', 'displayWindow', features);

//	window.open({
//	    url: "/cgi-bin/tabkart.cgi",
//	});
////Показати накладну
	$("a.new1win").blur();
	return false;
    });

    $("#chengedate").live("submit", function(){
popup=0;
poiskenter=0;
glpar = $(this).attr("action").split("?")[1];
//		$("#request").text("chenge"+glpar);
//	obrsubmit();
	$(this).ajaxSubmit({
	    url: $(this).attr("action"),
	    type: $(this).attr("method"),
////	    cache: false,
//	    beforeSubmit: request,
	    success: function (chdata) {
//		$("#request").text("chenge"+chdata);
	    }
	});
//	content();
		shownakl(glpar);
	return false;
    });

    $("#naklpoisk").live("submit", function(){
poiskenter=0;
			currentSelection=1;
	$(this).ajaxSubmit({
	    url: $(this).attr("action"),
	    type: $(this).attr("method"),
//	    cache: false,
	    beforeSubmit: request,
	    success: function (chdata) {
//$("#request").text("poisk"+chdata);
	    content(chdata);
	    }
	});
	return false;
    });

    $("#termin").live("submit", function(){
poiskenter=0;

//tekurl = ("/cgi-bin/tabkart.cgi");
//		$("#request").text("cn"+tekurl);
var glpar1 =  $("#ipochatok").attr("value")
var glpar2 =  $("#ikincevadata").attr("value")
var glpar3 =  $("#idata").attr("value")
//		$("#request").append("term--"+glpar1);
			currentSelection=1;
var par = "&term1="+glpar1+"&term2="+glpar2+"&term3="+glpar3;
//var par = "&term1="+glpar1;
//		$("#request").append("term--"+par);
//poiskenter=0;
        tekprog1 = ("/cgi-bin/finzvyt.cgi");
        addnakl = ("zvity");
        tekprog2 = ("/cgi-bin/finzvity1.cgi");
		pokaz(par);
//		pokaz();
	return false;

//	return false;
    });



    $("#ipochatok").live("focusin", function(){
poiskenter=1;
// var value = $(this).attr('value') || '';
    });

    $("#ikincevadata").live("focusin", function(){
poiskenter=1;
    });

    $("#idata").live("focusin", function(){
poiskenter=1;
    });


    $("#poles").live("click", function(){
poiskenter=1;
    });

    $("#polep").live("click", function(){
poiskenter=1;
    });
    $("#poles").live("focusin", function(){
poiskenter=1;
    });

    $("#polep").live("focusin", function(){
poiskenter=1;
    });

    $("#polen").live("focusin", function(){
poiskenter=1;
    });

    $("#cpoles").live("focusin", function(){
poiskenter=1;
    });

    $("#polekilk").live("click", function(){
poiskenter=1;
    });

    $("#polekilk").live("focusin", function(){
poiskenter=1;
    });

    $("#period1").live("focusin", function(){
	$("#period1").blur();
    });

$("#period2").live("focusin", function(){
	$("#period2").blur();
    });

$("#period3").live("focusin", function(){
	$("#period3").blur();
    });


    });

// змінити фон коли вікно в фокусі
//<BODY BGCOLOR="lightgrey"
//   onBlur="document.bgColor='lightgrey'"

//   onFocus="document.bgColor='antiquewhite'">


    $(document).bind('keyup', 'f12', function(e) {
	$("#polep").focus();
//		$("#request").text("test");
	return false;
    });


	// Register keypress events on the whole document
//	$("document:not(select)").keydown(function(e) {
	$(document).keydown(function(e) {
//	$("#vvod").focus();
//	$(document).keypress(function(e) {
//		$("#request").append("presskey"+e.keyCode );
		switch(e.keyCode) { 

//			case 18:
//			// User pressed "alt" arrow
//if (altdown == "y") { 
//altdown = "n"
//}else{
//altdown = "y"
//}

			case 17:
			// User pressed "cntr" arrow
//		$("#request").text("cntr"+winnavr+popup);
if (winnavr == "p") { 
if (popup==0) {
	    $('#'+oblnavs+currentSelection).css("background-color", "#eeeeee");
			curSelrigth=currentSelection;
	currentSelection=curSelleft;
winnavr = "r"
oblnavr ="r"; 
oblnavs ="s"; 
         p1 = (oblnavr+currentSelection);
         s1 = (oblnavs+currentSelection);

	    $('#'+oblnavs+currentSelection).css("background-color", "#ffff33");
}

}else{
if (popup==0) {
	    $('#'+oblnavs+currentSelection).css("background-color", "#eeeeee");
			curSelleft=currentSelection;
	currentSelection=curSelrigth;
winnavr = "p"
oblnavr ="p"+calkpole; 
oblnavs ="c"+calkpole; 
//		$("#request").append("presskey"+p1);
         p1 = (oblnavr+currentSelection);
         s1 = (oblnavs+currentSelection);
	    $('#'+oblnavs+currentSelection).css("background-color", "#ffff33");
}

}
			break;

//			// User pressed "pgUp" arrow
			case 33:
			currentSelection=1;
if (winnavr == "p") {
        var pnav1 = $("#pupr").attr("href").split("?")[1];
			retparwr=pnav1;
		shownakl(pnav1);

}else{
        var pnav1 = $("#pup").attr("href").split("?")[1];
        var p2 = $("#pup").attr("class");
// обробка c сортування
        if (p2 == "naklpage2") {
//			currentSelpage2=currentSelection;
			retpar2=pnav1;
}
        if (p2 == "winleft") {
			currentSelpage1=currentSelection;
			retpar1=pnav1;
}
	content(pnav1);
}
			break;

//			// User pressed "pgDown arrow
			case 34:
			currentSelection=1;
//		$("#request").append("presskey"+oblnavr);

if (winnavr == "p") {
        var pnav1 = $("#pdwr").attr("href").split("?")[1];
			retparwr=pnav1;
		shownakl(pnav1);
}else{
        var pnav1 = $("#pdw").attr("href").split("?")[1];
        var p2 = $("#pdw").attr("class");
// обробка c сортування
        if (p2 == "naklpage2") {
//			currentSelpage2=currentSelection;
			retpar2=pnav1;
}
        if (p2 == "winleft") {
			currentSelpage1=currentSelection;
			retpar1=pnav1;
}
	content(pnav1);

}
			break;

//			// User pressed "end" arrow
			case 35:
			currentSelection=1;
if (winnavr == "p") {
        var pnav1 = $("#pendr").attr("href").split("?")[1];
			retparwr=pnav1;
	shownakl(pnav1);

}else{
        var pnav1 = $("#pend").attr("href").split("?")[1];
        var p2 = $("#pend").attr("class");
// обробка c сортування
        if (p2 == "naklpage2") {
//			currentSelpage2=currentSelection;
			retpar2=pnav1;
}
        if (p2 == "winleft") {
			currentSelpage1=currentSelection;
			retpar1=pnav1;
}
	content(pnav1);

}
			break;

//			// User pressed "home" arrow
			case 36:
			currentSelection=1;
if (winnavr == "p") {
        var pnav1 = $("#begr").attr("href").split("?")[1];
			retparwr=pnav1;
	shownakl(pnav1);
}else{
        var pnav1 = $("#beg").attr("href").split("?")[1];
        var p2 = $("#beg").attr("class");
// обробка c сортування
        if (p2 == "naklpage2") {
//			currentSelpage2=currentSelection;
			retpar2=pnav1;
}
        if (p2 == "winleft") {
			currentSelpage1=currentSelection;
			retpar1=pnav1;
}
	content(pnav1);
}
			break;

			// User pressed "left" arrow
			case 37:
if (winnavr == "p") {

if (popup==0) {

if (calkpole=="a") {
calkpole=10;
}

if (calkpole=="b") {
calkpole=11;
}

calkpole=calkpole-1;
if (calkpole==10) {
calkpole="a";
}


if (calkpole<=1) {
calkpole=1;
}
//		$("#request").append("calk"+calkpole);
	    $('#'+oblnavs+currentSelection).css("background-color", "#eeeeee");
oblnavr ="p"+calkpole; 
oblnavs ="c"+calkpole; 

         p1 = (oblnavr+currentSelection);
         s1 = (oblnavs+currentSelection);
//		$("#request").append("calk-"+p1);

	    $('#'+oblnavs+currentSelection).css("background-color", "#ffff33");
        var komm2= $("#"+oblnavr+currentSelection).attr("title");
		$("#slade").text(komm2);

}
}
			break;

			// User pressed "up" arrow
			case 38:
if (popup==0) {
				navigate('up');
}
			break;

			// User pressed "rigth" arrow
			case 39:
//		$("#request").append("calk"+calkpole);
if (winnavr == "p") {
if (popup==0) {

if (calkpole=="a") {
calkpole=10;
}

if (calkpole=="b") {
calkpole=11;
}

calkpole=calkpole+1;

if (f1opmenu=="y") {
if (calkpole>=7) {
calkpole=7;
}
}else{

if (finbase<31) {
if (calkpole>=11) {
calkpole="b";
}else{
if (calkpole==10) {
calkpole="a";
}

}

}else{

if (finbase==34) {
if (calkpole>=8) {
calkpole=8;
}
}else{

if (calkpole>=6) {
calkpole=6;
}
}
}

};
//		$("#request").append("calk"+calkpole);
	    $('#'+oblnavs+currentSelection).css("background-color", "#eeeeee");
oblnavr ="p"+calkpole; 
oblnavs ="c"+calkpole; 
//		$("#request").append("calk"+oblnavr);
         p1 = (oblnavr+currentSelection);
         s1 = (oblnavs+currentSelection);
//		$("#request").append("calk"+p1);
	    $('#'+oblnavs+currentSelection).css("background-color", "#ffff33");
        var komm2= $("#"+oblnavr+currentSelection).attr("title");
		$("#slade").text(komm2);

}
}
			break;

			// User pressed "down" arrow
			case 40:
if (popup==0) {
				navigate('down');
}
			break;

			case 45:
				dodaty('ins');
			break;

			case 112:
			// User pressed "F1" arrow
panpar();
        retpar1 = "razoper=kaca";
		content(retpar1);
		menuop(retpar1);
	return false;

			case 113:
			// User pressed "F2" arrow
panpar();
        retpar1 = "razoper=bank";
//	$("#request").text("oper"+par);
		content(retpar1);
		menuop(retpar1);
	return false;

			case 115:
			// User pressed "F4" arrow
panpar();
        retpar1 = "razoper=zarplata";
		content(retpar1);
		menuop(retpar1);
	return false;

			case 118:
			// User pressed "F7" arrow
panpar();
        retpar1 = "razoper=mater";
		content(retpar1);
		menuop(retpar1);
	return false;

			case 119:
			// User pressed "F8" arrow
panpar();
        retpar1 = "razoper=fondy";
		content(retpar1);
		menuop(retpar1);
	return false;

			case 120:
			// User pressed "F9" arrow
panpar();
        retpar1 = "razoper=nalog";
		content(retpar1);
		menuop(retpar1);
	return false;

			case 121:
			// User pressed "F10" arrow
panpar();
        retpar1 = "razoper=proch";
		content(retpar1);
		menuop(retpar1);
	return false;

//			case 27:
			// User pressed "esc" arrow
//			break;

			// User pressed "enter"
			case 13:
//	$("#request").append("enter"+poiskenter);
if (poiskenter==0) {
			vybor();
}
			break;
		}
	});

//    $("tr.mouseover").live("mouseover", function() {
//	var color = $(this).attr("class").split(" ")[1];
//	$(this).css({'backgroundImage': 'url(/img/cntr'+color+'.hover.gif)'});
//	$("#request").text(color);
//    });
//    $("tr.mouseover").live("mouseout", function() {
//	$(this).css("backgroundImage", "");
//    });
