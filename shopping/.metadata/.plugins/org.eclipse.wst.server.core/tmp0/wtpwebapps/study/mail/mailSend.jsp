<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>메일보내기</title>
<link rev="stylesheet" type="text/css" href="<%=cp%>/mail/data/sytle.css">
<script type="text/javascript" src="<%=cp%>/mail/data/mail.js"></script>
</head>
<body onload="document.myForm.senderName.focus();">

<br/><br/>

<table width="600" border="2" cellpadding="0" cellspacing="0"
bordercolor="#d6d4a6" align="center">
<tr height="40">
	<td style="padding-left: 20px;">
	<b>E-Mail 전송</b>
	</td>
</tr>
</table>

<br/><br/>

<form action="mailSend_ok.jsp" method="post"
	name="myForm" enctype="multipart/form-data">

<table width="650" border="0" cellpadding="0" cellspacing="0" align="center">

<tr><td colspan="2" height="3" bgcolor="#dbdbdb" align="center"></td></tr>
	
<tr>
	<td width="140" height="30" bgcolor="#eeeeee" style="padding-left: 20px;">
	보내는 사람 이름
	</td>
	<td width="460" style="padding-left: 10px;">
	<input type="text" name="senderName" size="35" maxlength="20" class="boxTF"/>
	</td>
</tr>

<tr><td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td></tr>
	
<tr>
	<td width="140" height="30" bgcolor="#eeeeee" style="padding-left: 20px;">
	보내는 사람 E-Mail
	</td>
	<td width="460" style="padding-left: 10px;">
	<input type="text" name="senderEmail" size="35" maxlength="50" class="boxTF"/>
	</td>
</tr>

<tr><td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td></tr>

<tr>
	<td width="140" height="30" bgcolor="#eeeeee" style="padding-left: 20px;">
	받는 사람 E-Mail
	</td>
	<td width="460" style="padding-left: 10px;">
	<input type="text" name="receiverEmail" size="35" maxlength="50" class="boxTF"/>
	</td>
</tr>

<tr><td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td></tr>

<tr>
	<td width="140" height="30" bgcolor="#eeeeee" style="padding-left: 20px;">
	제&nbsp;&nbsp;&nbsp;&nbsp;목
	</td>
	<td width="460" style="padding-left: 10px;">
	<input type="text" name="subject" size="64" maxlength="100" class="boxTF"/>
	</td>
</tr>

<tr><td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td></tr>

<tr>
	<td width="140" height="30" bgcolor="#eeeeee" style="padding-left: 20px;">
	내&nbsp;&nbsp;&nbsp;&nbsp;용
	</td>
	<td width="460" style="padding-left: 10px;">
	<textarea rows="12" cols="62" name="content" class="boxTA"></textarea>
	</td>
</tr>

<tr><td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td></tr>

<tr><td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td></tr>

<tr><td colspan="2" height="10"  align="center"></td></tr>

<tr><td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td></tr>


<tr>
	<td width="140" height="30" bgcolor="#eeeeee" style="padding-left: 20px;">
	첨부파일
	</td>
	<td width="460" style="padding-left: 10px;">
	<input type="file" name="upload" maxlength="100" size="48" class="boxTF"/> 
	</td>
</tr>

<tr><td colspan="2" height="3" bgcolor="#dbdbdb" align="center"></td></tr>
	
</table>

<table width="600" border="0" cellpadding="0" cellspacing="3" align="center">
<tr align="center">
	<td height="40">
	<input type="button" value=" 전송하기 " class="btn2" onclick="mailSend();">
	<input type="reset" value=" 다시입력 " class="btn2"
	onclick="document.myForm.senderName.focus();"/>
	</td>
</tr>
	
</table>
	
</form>


</body>
</html>