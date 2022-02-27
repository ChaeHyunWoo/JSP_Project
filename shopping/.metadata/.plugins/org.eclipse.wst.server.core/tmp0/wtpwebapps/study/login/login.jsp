<%@page import="java.util.Calendar"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String userId = (String)session.getAttribute("userId"); //session에 올리면 Object이기에 String으로 다운캐스팅
	
	Calendar cal = Calendar.getInstance();
	
	//오늘 날짜 구하기
	int nowYear = cal.get(Calendar.YEAR);
	int nowMonth = cal.get(Calendar.MONTH)+1;
	int nowDay = cal.get(Calendar.DAY_OF_MONTH);
	
	//클라이언트에 의해 넘어온 데이터(첫 시작시 null)
	String strYear = request.getParameter("strYear");
	String strMonth = request.getParameter("strMonth");
	
	//표시할 달력의 년,월
	int year = nowYear;
	int month = nowMonth;
	
	if(strYear != null) { // strYear이 null이 아니면
		year = Integer.parseInt(strYear); //strYear를 숫자로 바꿔서 덮어씌워라(year에 넣어라)
	}
	
	if(strMonth != null) {
		month = Integer.parseInt(strMonth); //위와 동일
	}
	
	//표시할 달력 세팅
	cal.set(year, month-1, 1);
	
	int startDay = 1;
	int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);//말일 구하기
	
	//year년 month월 1일의 week구하기
	int week = cal.get(Calendar.DAY_OF_WEEK);//주의 수 구하기

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판</title>

<script type="text/javascript">

	function sendIt() {
		
		var f = document.myForm;
		
		if(!f.userId.value) {
			
			alert("아이디 입력!!");
			f.userId.focus();
			return;
		}
		
		if(!f.userPwd.value) {
			
			alert("패스워드 입력!!");
			f.userPwd.focus();
			return;
		}
		
		f.submit(); //action찾아간다.
		
	}
	
	function selected() {
		
		var f = document.myForm;
		
		f.action = "login.jsp?year=<%=year%>&month=<%=month %>";
		f.submit();
	}


</script>

</head>
<body>
<table border="1" width="600" align="center" style="font-size: 10pt;">

<tr height="20">
	<td colspan = "2" align="right">
	|게시판|
	<%if(userId==null) {%>
	일정관리
	<%}else{%>
	<a href="schedule.jsp">일정관리</a>
	<%} %>|
	</td>
</tr>

<tr height="400">
	<td width="150" valign="top">
	<%if(userId==null){ %>
	<form action="login_ok.jsp" method="post" name="myForm">
		아이디: <input type="text" name="userId" size="10"/><br/>
		패스워드: <input type="password" name="userPwd" size="10"/><br/>		
		<input type="button" value="로그인" onclick="sendIt();"/> 
	</form>
	<%}else{ %>
		<b><%=userId %>님이 환영..</b><br/>
		
		<a href="logout.jsp">로그아웃</a>
	
	<%} %>
	</td>
	<td valign="middle" align="center">
	<%if(userId==null){ %>
		<b>로그인을 하면 새로운 세상이 보입니다</b>
	<%}else{ %>
	
	
<form action="" name="myForm" method="get">

<!-- 달력 년도 select,option -->
<table align="center" width="210" cellpadding="2" cellspacing="1">

	<tr height="15">
		<td align="center">
		
		<img src="today.png" width="35" height="25" align="left">
		
		<!-- 년도 고르기 -->
		<select name="strYear" onchange="selected();">
		
		<%
		for(int i=(year-5); i<=year+5; i++) {
			
			if(i != year) {
				
				out.print("<option value='" + i +"'>" + i + "</option>");
			}else{
				out.print("<option value= '" + i + "'selected = 'selected'>" + i +"</option>");
			}
		}
		%>
		</select><b>년</b>
		
		<!-- 월 고르기 -->
		<select name="strMonth" onchange="selected();">
		
		<%
		for(int i=(month-1); i<=month+10; i++) {
			
			if(i != month) {
				
				out.print("<option value='" + i +"'>" + i + "</option>");
			}else{
				out.print("<option value= '" + i + "'selected = 'selected'>" + i +"</option>");
			}
		}
		%>
		</select><b>월</b>
		
		</td>
	</tr>
</table>


<table align="center" width="210" cellpadding="2" cellspacing="1" bgcolor="#cccccc">
	

<tr>
	<td bgcolor="#e6e4e6" align="center"><font color="red">일</font></td>
	<td bgcolor="#e6e4e6" align="center">월</td>
	<td bgcolor="#e6e4e6" align="center">화</td>
	<td bgcolor="#e6e4e6" align="center">수</td>
	<td bgcolor="#e6e4e6" align="center">목</td>
	<td bgcolor="#e6e4e6" align="center">금</td>
	<td bgcolor="#e6e4e6" align="center"><font color="blue">토</font></td>
</tr>

<%
	int newLine=0;
	
	//내장객체(서블릿을 통해 만듬)
	out.print("<tr height='20'>");
	
	//달력 빈공간 만들기
	for(int i=1; i<week; i++) {
		
		out.print("<td bgcolor='#ffffff'>&nbsp;</td>");
		newLine++; //한줄 입력할때마다 1씩 증가
	}
	
	for(int i=startDay; i<=endDay; i++) {
		
		String fontColor = (newLine==0) ? "red" : (newLine==6) ? "blue" : "black";
		String bgColor = (nowYear==year)&&
				(nowMonth==month)&&(nowDay==i)?"#e5e4e6":"#ffffff";
		
		out.print("<td align='center' bgcolor='" + bgColor + 
				"'><font color='" + fontColor + "'>" + i + "</font></td>");
		//<td align='center' bgcolor = '#ffffff'><font color='black'>10</font></td>
		
		newLine++;
		
		if(newLine==7 && i!=endDay) {
			out.print("</tr><tr height='20'>");
			
			newLine=0;
		}
		
	}
	
	//빈칸 td만들기 - td를 다 만들고 닫아줘야함
	while(newLine>0 && newLine<7) {
		out.print("<td bgcolor='#ffffff'>&nbsp;</td>");
		newLine++;
		
	}
	
	out.print("</tr>");

%>


</table>
		
</form>
		
<%} %>
	</td>
</tr>
	
</table>
</body>
</html>