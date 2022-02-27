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
<title>이미지 등록</title>

<link rel="stylesheet" href="<%=cp %>/imageTest/css/style.css" type="text/css" />
<script type="text/javascript" src="<%=cp%>/imageTest/data/image.js"></script>
<script type="text/javascript">
	function sendIt() {
		
	    f = document.myForm;
	    
	    str = f.subject.value;
	    str = str.trim();
	    if(!str) {
	        alert("제목을 입력하세요 !!!");
	        f.subject.focus();
	        return;
	    }
	    f.subject.value = str;
	
	    str = f.uploadFile.value;
	    if(!str) {
	        alert("이미지 파일을 선택 하세요 !!!");
	        f.uploadFile.focus();
	        return;
	    }
	    
	    f.action="/study/image/write_ok.do";
	    f.submit();
	}
</script>
</head>
<body>
<br/><br/>
<table width="600" border="2" cellpadding="0" cellspacing="0"
bordercolor="#d6d4a6" align="center">

<tr height="40">
   <td style="padding-left: 20px;">
   <b>이미지 게시판</b>
   </td>
</tr>   
</table>

<form action="<%=cp%>/image/write_ok.do" method="post" enctype="multipart/form-data">
<table width="600" border="0" cellspacing="0" align="center">
<tr><td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td></tr>   
   <tr>
      <td width="140" height="30" bgcolor="#eeeeee" style="padding-left: 20px;">
      제&nbsp;&nbsp;&nbsp;목
      </td>
      <td width="460" style="padding-left: 10px;">
      <input type="text" name="subject" size="35" maxlength="20" class="boxTF"/>
      </td>
   </tr>
   
   <tr><td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td></tr>   
   
   <tr>
      <td width="140" height="30" bgcolor="#eeeeee" style="padding-left: 20px;">
      파&nbsp;&nbsp;&nbsp;일
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
      <!-- mailSend(); -> mail.js에 있다. -->
      <input type="submit" value="등록하기" class="btn2"/>   
      <input type="reset" value="다시입력" class="btn2"
      onclick="document.myForm.senderName.focus();"/>
      <input type="reset" value="작성취소" class="btn2"
      onclick="javascript:location.href='<%=cp%>/image/list.do';">

</table>
</form>

</body>
</html>