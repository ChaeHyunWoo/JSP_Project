<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">


body {
	font-size: 10pt;
}

.itemBtn {

	font-size: 10pt;
	color: rgb(0,0,0);
	background-color: rgb(240,240,240);
	width: 30pt;
}

.btn {
	
	font-size: 10pt;
	color: rgb(0,0,0);
	background-color: rgb(240,240,240);
}

.itemList {

	font-size: 10pt;
	width: 100pt;
}



</style>

<script type="text/javascript">

//왼쪽 리스트에 데이터를 넣는 함수
	function itemAdd() {
		
		var f = document.myForm;
		var leftItem = f.leftItem; 
		
		f.leftItem[0] = new Option('배수지','배수지');
		f.leftItem[1] = new Option('유인나','유인나');
		f.leftItem[2] = new Option('정인선','정인선');
		f.leftItem[3] = new Option('정인아','정인아');
		f.leftItem[4] = new Option('한지혜','한지혜');
		f.leftItem[5] = new Option('천송이','천송이');
		f.leftItem[6] = new Option('이수지','이수지');
		
		
	}
	
	function itemMove(val) {
		
		var f = document.myForm;
		//전체리스트 : source / 받는사람 : target
		var source,target;
		
		if(val=="left") {
			
			source = f.rightItem;
			target = f.leftItem;
		}else{
			
			source = f.leftItem;
			target = f.rightItem;
		}
		
		var n,i;
		n = target.length;
		
		//몇개가 선택된지 모르기때문에 처음부터 끝까지 체크를 해야 한다.(밑에부터 시작)
		for(i=source.length-1; i>=0; i--) {
			
			//i번째까 선택되어 있다면
			if(source.options[i].selected) {
				target[n++] = new Option(source.options[i].text, source.options[i].value);
				
				source[i] = null; //전체리스트를 null로 초기화하면 데이터가 삭제된다.
								  //우측으로 옮겨지기때문에 좌측 데이터 삭제해줘야함
				
			}
		}
		
	}
	
	
	function sendIt() {
		
		var f = document.myForm;
		
		if(f.rightItem.length==0) {
			
			alert("쪽지를 보낼 사람을 선택하세요!");
			f.leftItem.focus();
			return;
		}
		
		if(!f.msg.value) {
			
			alert("메세지를 입력하세요!");
			f.msg.focus();
			return;
		}
		
		
		//오른쪽으로 넘긴 후 속성들을 true로 만들어줘야함
		for(i=0; i<f.rightItem.length; i++) {
			f.rightItem[i].selected=true;
			//f.rightItem.option[i].selected=true; //이렇게 써도 된다.
		}
		
		f.submit();
		
	}

</script>


</head>
<!-- <body>가 뜰 때 itemAdd()함수를 호출해준다. -->
<body onload="itemAdd();">

<form action="listTest_ok.jsp" method="post" name="myForm">

<table border="0" style="font-size: 10pt;" align="center">
<tr align="center">
	<td width="150">전체리스트</td>
	<td width="70">&nbsp;</td>
	<td width="150">받는사람</td>
</tr>

<tr align="center">
	<td width="150">
	<select name="leftItem" multiple="multiple" size="7" class="itemList">
		<!-- <option value="배수지">배수지</option>-->
	</select>
	</td>
	<td width="70">
		<input type="button" class="itemBtn" value="&gt;" onclick="itemMove('right');"/><br/>
		<input type="button" class="itemBtn" value="&lt;" onclick="itemMove('left');"/><br/>
	</td>
	<td width="150">
	<select name="rightItem" multiple="multiple" size="7" class="itemList">
	
	</select>
	</td>
</tr>

<tr>
	<td colspan="3" align="center">
	<br/>메세지<br/>
	<textarea rows="5" cols="42" name="msg" ></textarea>
	</td>
</tr>

<tr>
	<td colspan="3" align="center">
		<input type="button" class="btn" value="쪽지보내기" onclick="sendIt();"/><br/>
	</td>
</tr>
		

</table>


</form>







</body>
</html>