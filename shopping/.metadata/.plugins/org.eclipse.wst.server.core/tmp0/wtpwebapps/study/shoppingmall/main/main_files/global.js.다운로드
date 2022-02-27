// �̹��� ���� ��ũ��Ʈ
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
function MM_openBrWindow(theURL,winName,features) { //v2.0
  window.open(theURL,winName,features);
}

// �÷��� ȣ��
function Flash( src,width,height )
{
	html = '';
	html += '<object type="application/x-shockwave-flash" classid="clsid:d27cdb6e-ae6d-11cf-96b8-444553540000" codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,0,0" id="param" width="'+width+'" height="'+height+'">';
	html += '<param name="movie" value="'+src+'">';
	html += '<param name="quality" value="high">';
	html += '<param name="bgcolor" value="#ffffff">';
	html  +='<param name="wmode" value="transparent">';
	html += '<param name="swliveconnect" value="true">';
	html += '<embed src="'+src+'" quality=high bgcolor="#ffffff" width="'+width+'" height="'+height+'" swliveconnect="true" id="param" name="param" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"></embed>';
	html += '</object>';
	document.write(html);
}
 //�ȹ� �غ��� ��ũ��Ʈ

function popupWindow(url, w, h) {
        var posX = (screen.width - w) / 2;
        var posY = (screen.height - h) / 2;
        var option = ",resizable=no,scrollbars=no,status=no";
        window.open(url, "new_win","width="+w+",height="+h+",left="+posX +",top="+posY+option);
}

// �̵�� ȣ��
function Media( src,width,height )
{
	html = '';
	html += '<object id="MediaPlayer"  classid="CLSID:22D6f312-B0F6-11D0-94AB-0080C74C7E95" standby="Loading Microsoft?Windows?Media Player components..." type="application/x-oleobject" width="'+width+'" height="'+height+'">';
	html += '<param name="transparentatstart" value="True">';
	html += '<param name="transparentatstop" value="True"> ';
	html += '<param name="animationatstart" value="False"> ';
	html += '<param name="autostart" value="true"> ';
	html += '<param name="autorewind" value="true">';
	html += '<param name="displaysize" value="1">';
	html += '<param name="autosize" value="true">';
	html += '<param name="showdisplay" value="false">';
	html += '<param name="showstatusbar" value="true">';
	html += '<param name="showcontrols" value="false"> ';
	html += '<param name="enablecontextmenu" value="false">';
	html += '<param name="filename" value="'+src+'">';
	html += '<param name="volume" value="0">';
	html += '</object>';
	document.write(html);
}

// �������̵�
function gobrand( brand )
{
	if ( brand == "parkland" )
	{
		window.open( "http://www.parkland.co.kr/renew/05_helpdesk/board_notice.asp?action=read&seq=94&page=&search_value=&keyword=" );
	}
	else if ( brand == "prelin" )
	{
		window.open( "http://www.prelin.co.kr/" );
	}
	else if ( brand == "crencia" )
	{
		window.open( "http://www.crencia.co.kr" );
	}
}

function event_open( url )
{
	location = url;
	//window.open( url,"event","width=917,height=700,top=10,left=10,scrollbars=yes,status=no'");
}

function check_login()
{
	window.open( "order_login.asp","event","width=550,height=450,top=10,left=10,scrollbars=no,status=no'");
}

//function delivery_chase( ordernumber )
//{	

//	var url = "delivery_chase.asp?ordernumber="+ordernumber;
//	window.open( url,"delivery","width=730,height=600,top=10,left=10,scrollbars=no,status=no'");
//}

function delivery_chase(orderno) {
var url;
url = ' http://www.hydex.net/ehydex/jsp/home/distribution/tracking/tracingNView.jsp?param1=468510&param2=' + orderno;   // �߱޹��� ��ID�� ���� �ڵ��Ͻø� �˴ϴ�.
	window.open( url,"delivery1","top=60,left=120,width=660,height=480, toolbar=no, status=no, menubar=no, scrollbars=yes, resizable=no, directories=no'");
}

function tracking_chase_3(logic_num) {
var url;
url = ' http://www.hydex.net/ehydex/jsp/home/distribution/tracking/tracingNView.jsp?param1=' + logic_num;   // �߱޹��� ��ID�� ���� �ڵ��Ͻø� �˴ϴ�.
	window.open( url,"delivery1","top=60,left=120,width=600,height=400, toolbar=no, status=no, menubar=no, scrollbars=yes, resizable=no, directories=no'");
}

function playIt()
{
	if ((navigator.userAgent.indexOf('IE') > -1) && (navigator.platform == "Win32")) 
	{
		MediaPlayer.Play();
	}
}
function pauseIt()
{
	if ((navigator.userAgent.indexOf('IE') > -1) && (navigator.platform == "Win32")) 
	{
		MediaPlayer.Pause();
	}
}
function stopIt()
{
	if ((navigator.userAgent.indexOf('IE') > -1) && (navigator.platform == "Win32"))
	{
		MediaPlayer.Stop();
		MediaPlayer.CurrentPosition=0;
	}
}


// �ƹ��͵� ���� ������ üũ
function isEmpty(s)
{
	return ((s == null) || (s.length == 0));
}


// �ƹ��͵� ���� ������ üũ
function isTitle(s)
{
	if(isEmpty(s))
		return true;
	else
		return false;
}

// ����üũ ����
function isNum(s)
{
	if(isEmpty(s))
		return true;
	else
		return false;

	var i;
	var num="1234567890";
	for(i=0;i<s.length;i++)
	{
		if(num.indexOf(s.substring(i,i+1)) == -1)
		{			  
			return true;
		}
	}
	return false;
}

// �ֹε�Ϲ�ȣ üũ�ϱ�
function isJumin(s)
{
    var i;
    var IDtot = 0;
    var IDAdd="234567892345";
    for(i=0;i<12;i++)
	{
      IDtot=IDtot+parseInt(s.substring(i,i+1))*parseInt(IDAdd.substring(i,i+1));
    }
    IDtot=11-(IDtot%11);
    if(IDtot==10)
	{
       IDtot=0;
    }
	else if(IDtot==11)
	{ 
       IDtot=1;
    }
    if(parseInt(s.substring(12,13))!=IDtot) return true;
}

//emailüũ
function CheckEmail(strValue)
{
	/*
	var filter=/^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i
	if (filter.test(str))
		return true; 
	else
		return false; 
	*/
	var regExp = /[0-9a-zA-Z][_0-9a-zA-Z-]*@[_0-9a-zA-Z-]+(\.[_0-9a-zA-Z-]+){1,2}$/;

	//입력을 안했으면

	if(strValue.length == 0)	{
		return false;
	}

	//이메일 형식에 맞지않으면
	if (!strValue.match(regExp))		{
		return false;
	}

	return true;
}

//=================================================================
// �Է�üũ
function category_action()
{
	if ( isTitle( document.action.categoryname.value ) )
	{
		alert( "\n ī�װ����� �Է����ּ���. ");
		document.action.categoryname.focus();
		return;		
	}
	action.submit();
}

//=================================================================
// ��ǰ�˻� üũ

function search_action()
{

	if ( isTitle( document.action.stringtext.value ) )
	{
		alert( "\n�˻������� �Է����ּ���. ");
		document.action.stringtext.focus();
		return;		
	}
	action.submit();
}

// ���� ��ǰ�˻�(��ǰ���̳� ��ǰ�ڵ�)
function pmsearch()
{
	//if ( isTitle( document.planleft.pm_brand.value ) )
	//{
	//	alert( "\n�귣�带 �������ּ���. ");
	//	document.planleft.pm_brand.focus();
	//	return;		
	//}
	if ( isTitle( document.pmform.search_input.value ) )
	{
		alert( "\n�˻������� �Է����ּ���. ");
		document.pmform.search_input.focus();
		return;		
	}
	document.pmform.submit();
}

// ��ǰ�˻�
function search()
{
	//if ( isTitle( document.pmsform.pm_brand.value ) )
	//{
	//	alert( "\n�귣�带 �������ּ���. ");
	//	document.pmsform.pm_brand.focus();
	//	return;		
	//}
	if ( isTitle( document.pmsform.search_input.value ) )
	{
		alert( "\n�˻������� �Է����ּ���. ");
		document.pmsform.search_input.focus();
		return;		
	}
	document.pmsform.submit();
}


// ��ȸ�� �ֹ���ȣ üũ
function order()
{
	if ( isTitle( document.orderform.ordernum.value ) )
	{
		alert( "\n�ֹ���ȣ�� �Է����ּ���. ");
		document.orderform.ordernum.focus();
		return;		
	}
	document.orderform.submit();
}

// ��ȸ�� �ֹ���ȣ üũ
function order_member()
{
	if ( isTitle( document.guestform.oi_name.value ) )
	{
		alert( "\n�̸��� �Է����ּ���. ");
		document.guestform.oi_name.focus();
		return;		
	}

	if ( isTitle( document.guestform.oi_email.value ) )
	{
		alert( "\n�̸����ּ�(email)�� �Է����ּ���. ");
		document.guestform.oi_email.focus();
		return;		
	}
	document.guestform.submit();
}

// �������� �Է� üũ
function searchs()
{
	if ( isTitle( document.form.keyfield.value ) )
	{
		alert( "\n�˻�� �Է����ּ���. ");
		document.form.keyfield.focus();
		return;		
	}
	form.submit();
}

// �α��� üũ
function logininput()
{
	if ( isTitle( document.login.c_userid.value ) )
	{
		alert( "\n���̵� �Է����ּ���. ");
		document.login.c_userid.focus();
		return;		
	}
	if ( isTitle( document.login.c_pwd.value ) )
	{
		alert( "\n��й�ȣ�� �Է����ּ���. ");
		document.login.c_pwd.focus();
		return;		
	}
	login.submit();
}

function isEnter(id)
{
	if(window.event.keyCode == 13)
	{
		if (id == "1")
		{
			document.login.c_userid.focus();
		}
		else if (id == "2")
		{
			document.login.c_pwd.focus();
		} 
		else if (id == "3")
		{
			logininput();
		} 
	}
}

function brand_select()
{
	var pm_brand = document.pmform.pm_brand.value;

	if ( pm_brand == "1201" )
	{
		location = "/parkland/?cat_sn="+pm_brand+"&pm_brand="+pm_brand;
	}
	else if ( pm_brand == "1202" )
	{
		location = "/crencia/?cat_sn="+pm_brand+"&pm_brand="+pm_brand;
	}
	else if ( pm_brand == "1203" )
	{
		location = "/prelin/?cat_sn="+pm_brand+"&pm_brand="+pm_brand;
	}
	else if ( pm_brand == "1204" )
	{
		location = "/jhass/?cat_sn="+pm_brand+"&pm_brand="+pm_brand;
	}
	else if ( pm_brand == "1205" )
	{
		location = "/insolito/?cat_sn="+pm_brand+"&pm_brand="+pm_brand;
	}
	else if ( pm_brand == "1206" )
	{
		location = "/homme/?cat_sn="+pm_brand+"&pm_brand="+pm_brand;
	}
	else if ( pm_brand == "1207" )
	{
		location = "/jbroox/?cat_sn="+pm_brand+"&pm_brand="+pm_brand;
	}
}

function explorer_open( url, width, height )
{
	window.open( url,"browser","width="+width+",height="+height+",top=10,left=10,scrollbars=no,status=no");
}
function explorer_open_yes( url, width, height )
{
	window.open( url,"browser","width="+width+",height="+height+",top=10,left=10,scrollbars=yes,status=no");
}

function openmap() 
{
 window.open('http://www.cybermap.co.kr/cm2000/company/parkland/index.html', 'map2','width=680,height=670, marginwidth=,marginheight=0,toolbar=no,top=0, left=0,directories=no,status=no,menubar=no,scrollbars=yes,resizable=yes');
}


