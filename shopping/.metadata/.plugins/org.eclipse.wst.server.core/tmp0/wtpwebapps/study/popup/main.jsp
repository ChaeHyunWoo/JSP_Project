<%@ page  contentType="text/html; charset=UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>

<%
  Cookie[] ck  = request.getCookies();

  String popUrl = "";
  String strUrl, str;

  strUrl = "popup.jsp";
  str    = "window.open('" + strUrl + "', 'Think', ";
  str    = str + "'left=610, ";
  str    = str + "top=10, ";
  str    = str + "width=372, ";
  str    = str + "height=466, ";
  str    = str + "toolbar=no, ";
  str    = str + "menubar=no, ";
  str    = str + "status=no, ";
  str    = str + "scrollbars=no, ";
  str    = str + "resizable=no')";

  popUrl = str;
  if(ck != null) {
	  for(Cookie c : ck) {
		 if(c.getName().equals("popup") && c.getValue().equals("no")) {
			 popUrl = "";
	         break;
		 }
	}
  }
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>

<body leftmargin="8" onload="<%=popUrl%>">

<table cellSpacing=0 cellPadding=0 border=0 width="700">
<tr>
  <td align="center">쿠키를 이용한 팝업 예제 프로그램</td>
</tr>
</table>

</body>
</html>