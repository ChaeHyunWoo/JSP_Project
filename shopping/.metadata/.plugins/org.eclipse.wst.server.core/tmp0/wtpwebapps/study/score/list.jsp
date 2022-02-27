<%@page import="com.score.ScoreDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.score.ScoreDAO"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	Connection conn = DBConn.getConnection();

	ScoreDAO dao = new ScoreDAO(conn);
	
	List<ScoreDTO> lists = dao.getLists();
	
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
	<td bgcolor="#ffffff" style="padding-left: 10px;">
	<b>성적처리 리스트 화면</b>
	</td>
</tr>
</table>

<br/>

<table width="650" cellpadding="0" cellspacing="3" align="center">
<tr height="35">
	<td align="right">
	<input type="button" class="btn" value="등록하기" 
	onclick="javascript:location.href='<%=cp%>/score/write.jsp'"/>
	</td>
</tr>
</table>

<table width="650" cellpadding="0" cellspacing="1" align="center" bgcolor="#cccccc">
<tr height="30">
	<td align="center" bgcolor="#e6e6e6" width="80">학번</td>
	<td align="center" bgcolor="#e6e6e6" width="80">이름</td>
	<td align="center" bgcolor="#e6e6e6" width="60">국어</td>
	<td align="center" bgcolor="#e6e6e6" width="60">영어</td>
	<td align="center" bgcolor="#e6e6e6" width="60">수학</td>
	<td align="center" bgcolor="#e6e6e6" width="60">총점</td>
	<td align="center" bgcolor="#e6e6e6" width="60">평균</td>
	<td align="center" bgcolor="#e6e6e6" width="60">석차</td>
	<td align="center" bgcolor="#e6e6e6" width="130">수정</td>
</tr>

<%for(ScoreDTO dto : lists) { %>
<tr height="30">
	<td align="center" bgcolor="#ffffff"><%=dto.getHak() %></td>
	<td align="center" bgcolor="#ffffff"><%=dto.getName() %></td>
	<td align="center" bgcolor="#ffffff"><%=dto.getKor() %></td>
	<td align="center" bgcolor="#ffffff"><%=dto.getEng() %></td>
	<td align="center" bgcolor="#ffffff"><%=dto.getMat() %></td>
	<td align="center" bgcolor="#ffffff"><%=dto.getTot() %></td>
	<td align="center" bgcolor="#ffffff"><%=dto.getAve() %></td>
	<td align="center" bgcolor="#ffffff"><%=dto.getRank() %></td>
	<td align="center" bgcolor="#ffffff">
	
	<a href="<%=cp %>/score/update.jsp?hak=<%=dto.getHak()%>">수정</a>
	<a href="<%=cp %>/score/delete_ok.jsp?hak=<%=dto.getHak()%>">삭제</a>
	</td>
</tr>
<%} %>

</table>




</body>
</html>