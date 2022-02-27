<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	function sendIt() { //데이터를 보낼 때 사용하는 함수
		
		var f = document.myForm;
	
		if(!f.dan.value) { //dan의 value가 없으면
			
			alert("단을 입력하세요!");
			f.dan.focus();//단에 커서를 갖다둔다,
			return;
		}
		
		f.action="gugudan_ok.jsp";  //하단 form action의 주소를 여기서 써도 된다.
		
					//submit은 action을 찾아간다.
		f.submit(); //이걸 써야 하단  action을 가게 물길을 만들어주고 다른 페이지로 넘어간다. 매우중요@@@!!!!
	}

</script>

</head>
<body>
<!-- 여기 action의 gugudan_ok_jsp주소를 위에 f.action으로 해서 써줘도된다. -->
<form action="" method="post" name="myForm">

단 입력: <input type="text" name="dan"/><br/>
<input type="button" value="결과" onclick="sendIt();"/><br/>


</form>



</body>
</html>