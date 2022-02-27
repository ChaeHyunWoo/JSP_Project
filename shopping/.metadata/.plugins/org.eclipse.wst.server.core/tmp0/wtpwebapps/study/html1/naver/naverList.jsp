<%@page import="com.naver.NaverDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.naver.NaverDAO"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	Connection conn = DBConn.getConnection();

	NaverDAO dao = new NaverDAO(conn);
	
	List<NaverDTO> lists = dao.getLists();
	
	DBConn.close();

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

td {
	font-size: 10pt;
}

.txtField {
	font-size: 10pt;
	border: 1px solid;
}

.btn {
	font-size: 10pt;
	background: #e6e6e6
}


a {
	text-decoration: none;
	color: blue;
}

</style>
</head>
<body>

<br/><br/>

<table width="700" cellpadding="0" cellspacing="3" align="center" bgcolor="#e4e4e4">
<tr height="50">
	<td align="center" bgcolor="#ffffff" style="padding-left: 10px;">
	<b>회원 정보 리스트 화면</b>
	</td>
</tr>
</table>

<br/>

<table width="650" cellpadding="0" cellspacing="3" align="center">
<tr height="35">
	<td align="right">

	<input type="button" class="btn" value="회원가입하기"
	onclick="javascript:location.href='<%=cp%>/html1/naver/naver.jsp'"/>
	</td>
</tr>
</table>

<table width="700" cellpadding="0" cellspacing="1" align="center" bgcolor="#cccccc">
<tr height="30">
	<td align="center" bgcolor="#e6e6e6" width="80">아이디</td>
	<td align="center" bgcolor="#e6e6e6" width="80">비밀번호</td>
	<td align="center" bgcolor="#e6e6e6" width="100">이름</td>
	<td align="center" bgcolor="#e6e6e6" width="80">년</td>
	<td align="center" bgcolor="#e6e6e6" width="60">월</td>
	<td align="center" bgcolor="#e6e6e6" width="60">일</td>
	<td align="center" bgcolor="#e6e6e6" width="60">성별</td>
	<td align="center" bgcolor="#e6e6e6" width="60">이메일</td>
	<td align="center" bgcolor="#e6e6e6" width="150">국가</td>
	<td align="center" bgcolor="#e6e6e6" width="130">전화번호</td>
	<td align="center" bgcolor="#e6e6e6" width="80">인증번호</td>
	<td align="center" bgcolor="#e6e6e6" width="150">수정/삭제</td>
</tr>

<%for(NaverDTO dto : lists) { %>
<tr height="30">
	<td align="center" bgcolor="#ffffff"><%=dto.getId() %></td>
	<td align="center" bgcolor="#ffffff"><%=dto.getPwd() %></td>
	<td align="center" bgcolor="#ffffff"><%=dto.getName() %></td>
	<td align="center" bgcolor="#ffffff"><%=dto.getBirth1() %>년</td>
	<td align="center" bgcolor="#ffffff"><%=dto.getBirth2() %></td>
	<td align="center" bgcolor="#ffffff"><%=dto.getBirth3() %>일</td>
	<td align="center" bgcolor="#ffffff"><%=dto.getGender() %></td>
	<td align="center" bgcolor="#ffffff"><%=dto.getEmail() %></td>
	<td align="center" bgcolor="#ffffff"><%=dto.getChoice() %></td>
	<td align="center" bgcolor="#ffffff"><%=dto.getTel() %></td>
	<td align="center" bgcolor="#ffffff"><%=dto.getPhone() %></td>
	<td align="center" bgcolor="#ffffff">
	
	<a href="<%=cp %>/html1/naver/naverupdate.jsp?id=<%=dto.getId()%>">수정</a>
	<a href="<%=cp %>/html1/naver/naverdelete_ok.jsp?id=<%=dto.getId()%>">삭제</a>
	</td>
</tr>
<%} %>

</table>


</body>
</html>