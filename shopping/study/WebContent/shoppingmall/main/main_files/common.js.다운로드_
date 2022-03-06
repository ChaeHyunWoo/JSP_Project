var loaddata = function(sdata, callurl, callback)	{
	$.ajax({
		type:"POST",
		url:callurl,
		data:sdata,
		contentType: "application/x-www-form-urlencoded; charset=euc-kr", 
		cache:false,
		success: callback,
		error: function(error)	{
		}
	});
}

function test_getUserInfo(sdata, callback, basepath)		{
	loaddata(sdata,basepath +"/if/test.ifuserInfo.asp", callback);
}

function getUserInfo(sdata, callback, basepath)		{
	loaddata(sdata,basepath +"/if/ifuserInfo.asp", callback);
}

function getGoodsInfo(sdata, callback, basepath)		{
	loaddata(sdata,basepath +"/if/ifgoods.asp", callback);
}

function getCartInfo(sdata, callback, basepath)		{
	loaddata(sdata,basepath +"/if/ifcart.asp", callback);
}


function getCouponInfo(sdata, callback, basepath)		{
	loaddata(sdata,basepath +"/if/ifcoupon.asp", callback);
}

function fnEnterKey(obj, fnCallback)
{
	var keyCode = event.keyCode ? event.keyCode : event.which ? event.which : event.charCode;
	if (keyCode == 13)
	{
		fnCallback(obj);
	}
}

function fnGSearchGood(obj)	{
	/*if(obj.value.trim() == "")		{
		alert("검색어를 입력해 주세요.");
		obj.focus();
		return;
	}
	*/
	$("#frmGSearch").submit();
}

function fnGSearchGood_submit()	{
	if($("#gKeyword").val() == "")		{
		alert("검색어를 입력해 주세요.");
		$("#gKeyword").focus();
		return false;
	}
	
	return true;
}


function controlListImages()	{
	/*
	$('img.imgListToggle').mouseover(function() {
		if($(this).attr("oversrc") != "")	{
			$(this).attr("src",  $(this).attr("oversrc"));
		}
	});
	
	$('img.imgListToggle').mouseout(function() {
		if($(this).attr("src") != $(this).attr("outsrc"))	{
			$(this).attr("src", $(this).attr("outsrc"));
		}
	});*/
}


function fnLoadImgError(o, type)	{
	if(type==1)	{
		o.src = "/shop/images/300_300.gif";
	}
	else if(type==2)	{
		o.src = "/shop/images/140_140.gif";
	}
	else if(type==3)	{
		o.src = "/shop/images/60_60.gif";
	}
	else if(type==4)	{
		o.src = "/shop/images/500_500.gif";
	}
}

function findzipcode(basepath, callback){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.asp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open(basepath + "/common/jusoPopup.asp?cf=" + callback,"pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.asp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("jusoPopup.asp","pop","scrollbars=yes, resizable=yes"); 
}


function fnreceipt(tid)
{
		var receiptUrl = "https://iniweb.inicis.com/DefaultWebApp/mall/cr/cm/mCmReceipt_head.jsp?noTid=" + tid + "&noMethod=1";
		window.open(receiptUrl,"receipt","width=430,height=700, scrollbars=yes,resizable=yes");
	
}