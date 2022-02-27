<%@ page  contentType="text/html; charset=UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>

<%
  String win, popup;

  win = request.getParameter("win");
  if (win == null || win.equals(""))
     win = "no";
  popup = request.getParameter("popup");
  if(popup == null || popup.equals(""))
     popup = "yes";

  Cookie c = new Cookie("popup", popup);
  c.setMaxAge(20);
  //c.setMaxAge(86400);//하루
  c.setPath("/");
  response.addCookie(c);

  if(win.equals("yes")){
      out.println("<script type=\"text/javascript\">");
      out.println("window.close();");
      out.println("</script>");
  }
  else {
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="style.css"/>

<script type="text/javascript">

    function sendIt() {
       document.myForm.submit();
    }
    
</script>

</head>

<body>

<form name="myForm" method="post" action="popup.jsp">
<table width="372" border="0" cellspacing="0" cellpadding="0">
  <tr> 
    <td width="372" colspan="2" height="437" valign="top" align="center">
          <br/>팝업 예제<br/>
     </td>
  </tr>
  <tr>
    <td align="center" height="28" width="332" bgcolor="#f5f5f5">
        <input type="checkbox" name="popup" value="no"/><font color="#555555"> 오늘 하루동안 이 창을 열지 않음</font>
        <input type="hidden" name="win" value="yes"/>
    </td>
    <td height="28" align="right" width="40" bgcolor="#f5f5f5">
        <img src="hor.gif"/><a href="#" onclick="sendIt();">Close</a>&nbsp;&nbsp;
    </td>
  </tr>
</table>
</form>

</body>
</html>

<%
  }
%>
