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

	function sendIt() {
		
		var f = document.myForm;
		f.submit();
	}

</script>

</head>
<body>

<form action="test3_ok.jsp" method="post" name="myForm">

이름: <input type="text" name="name"/><br/>
아이디: <input type="text" name="id"/><br/>
패스워드: <input type="text" name="pwd"/><br/>
성별:<input type="radio" name="gender" checked="checked" value="M">남자
<input type="radio" name="gender" value="F">여자<br/>
전화:
<select name="tel1">
<option value="">선택</option>
<option value="011">011</option>
<option value="010">010</option>
<option value="070">070</option>
</select> 
<input type="text" name="tel2"/>-<input type="text" name="tel3"/><br/>

전공<br/>
<select name="major" multiple="multiple" size="5">
<option value="컴퓨터공학">컴퓨터공학</option>
<option value="영문학과">영문학과</option>
<option value="지리학과">지리학과</option>
<option value="경영학과">경영학과</option>
<option value="수학과">수학과</option>
</select>
<br/>

동의합니까?<input type="checkbox" name="agree" value="y"/><br/>
메모<br/>
<textarea rows="5" cols="20" name="memo"></textarea><br/>

<input type="button" value="회원가입" onclick="sendIt();"/>
<input type="reset" value="다시입력"/>


</form>


</body>
</html>