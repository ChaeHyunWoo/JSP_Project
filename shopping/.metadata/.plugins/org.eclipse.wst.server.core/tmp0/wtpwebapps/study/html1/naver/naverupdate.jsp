<%@page import="com.naver.NaverDTO"%>
<%@page import="com.naver.NaverDAO"%>
<%@page import="com.util.DBConn"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String id = request.getParameter("id"); //request로 넘어오는 getParameter id을 id에 넣음
	
	Connection conn = DBConn.getConnection();
	NaverDAO dao = new NaverDAO(conn);
	
	NaverDTO dto = dao.getReadData(id);
	
	DBConn.close();
	
	if(dto==null)
		response.sendRedirect("naverList.jsp");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>마이페이지 수정</title>

<script type="text/javascript">

	function sendIt() {
		
		var f = document.myForm;
		
		f.action = "<%=cp%>/html1/naver/naverupdate_ok.jsp";
		f.submit();
		
	}


</script>

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

</style>


</head>
<body>

<br/><br/>

<table width="500" cellpadding="0" cellspacing="3" align="center" bgcolor="#e4e4e4">
<tr height="50">
	<td bgcolor="#ffffff" style="padding-left:  10px;">
	<b>회원정보 수정화면</b>
	</td>
</tr>
</table>

<br/>

<form action="" method="post" name="myForm">

<table width="500" cellpadding="0" cellspacing="0" align="center">

<tr height="2"><td colspan="2" bgcolor="#cccccc"></td></tr>

<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">아이디</td>
	<td style="padding-left: 5px;">
	<%=dto.getId() %>
	</td>
</tr>

<tr height="2"><td colspan="2" bgcolor="#cccccc"></td></tr>

<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">비밀번호</td>
	<td style="padding-left: 5px;">
	<input type="text" name="pwd" value="<%=dto.getPwd() %>" size="20" maxlength="10" class="txtField"/>
	</td>
</tr>

<tr height="2"><td colspan="2" bgcolor="#cccccc"></td></tr>

<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">이름</td>
	<td style="padding-left: 5px;">
	<input type="text" name="name" value="<%=dto.getName() %>" size="20" maxlength="10" class="txtField"/>
	</td>
</tr>

<tr height="2"><td colspan="2" bgcolor="#cccccc"></td></tr>

<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">년도</td>
	<td style="padding-left: 5px;">
	<input type="text" name="birth1" value="<%=dto.getBirth1() %>" size="20" maxlength="10" class="txtField"/>
	</td>
</tr>

<tr height="2"><td colspan="2" bgcolor="#cccccc"></td></tr>

<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">월</td>
	<td style="padding-left: 5px;">
	<input type="text" name="birth2" value="<%=dto.getBirth2() %>" size="20" maxlength="10" class="txtField"/>
	</td>
</tr>

<tr height="2"><td colspan="2" bgcolor="#cccccc"></td></tr>

<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">일</td>
	<td style="padding-left: 5px;">
	<input type="text" name="birth3" value="<%=dto.getBirth3() %>" size="20" maxlength="10" class="txtField"/>
	</td>
</tr>

<tr height="2"><td colspan="2" bgcolor="#cccccc"></td></tr>

<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">성별</td>
	<td style="padding-left: 5px;">
	<input type="text" name="gender" value="<%=dto.getGender() %>" size="20" maxlength="10" class="txtField"/>
	</td>
</tr>

<tr height="2"><td colspan="2" bgcolor="#cccccc"></td></tr>

<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">이메일</td>
	<td style="padding-left: 5px;">
	<input type="text" name="email" value="<%=dto.getEmail() %>" size="20" maxlength="10" class="txtField"/>
	</td>
</tr>

<tr height="2"><td colspan="2" bgcolor="#cccccc"></td></tr>

<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">국가</td>
	<td style="padding-left: 5px;">
	<input type="text" name="choice" value="<%=dto.getChoice() %>" size="20" maxlength="10" class="txtField"/>
	</td>
</tr>

<tr height="2"><td colspan="2" bgcolor="#cccccc"></td></tr>

<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">전화번호</td>
	<td style="padding-left: 5px;">
	<input type="text" name="tel" value="<%=dto.getTel() %>" size="20" maxlength="10" class="txtField"/>
	</td>
</tr>

<tr height="2"><td colspan="2" bgcolor="#cccccc"></td></tr>

<tr height="30">
	<td align="center" width="100" bgcolor="#e6e6e6">인증번호</td>
	<td style="padding-left: 5px;">
	<input type="text" name="phone" value="<%=dto.getPhone() %>" size="20" maxlength="10" class="txtField"/>
	</td>
</tr>

<tr height="2"><td colspan="2" bgcolor="#cccccc"></td></tr>


<tr height="35">

	<td align="center" colspan="2">
	
	<!--이걸 써줘야지 학번을 넘길 수 있다.  -->
	<input type="hidden" name="id" value="<%=dto.getId()%>"/> 
	
	<input type="button" class="btn" value="수정완료"  onclick="sendIt();">
	
	<input type="button" class="btn" value="수정취소" 
	onclick="javascript:location.href='<%=cp%>/html1/naver/naverList.jsp';"/>
	</td>
</tr>

</table>

</form>


</body>
</html>