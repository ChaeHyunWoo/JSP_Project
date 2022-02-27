<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	Calendar now = Calendar.getInstance();
	
	int nowYear = now.get(Calendar.YEAR);
	int nowMonth = now.get(Calendar.MONTH);
	int nowDay = now.get(Calendar.DAY_OF_MONTH);
	
	
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

<form action="guest_ok.jsp" method="post" name="myForm">

이름: <input type="text" name="userName"/><br/>
제목: <input type="text" name="subject"/><br/>
내용: <input type="text" name="content"/><br/>

<input type="hidden" name="created" 
value="<%=nowYear%>년 <%=nowMonth%>월 <%=nowDay%>일 "/>

<input type="button" value="글 올리기" onclick="sendIt();"/>



</form>

</body>
</html>