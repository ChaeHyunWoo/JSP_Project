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
<title>이미지 게시판</title>
<link rel="stylesheet" href="<%=cp %>/imageTest/css/style.css" type="text/css" />
<link rel="stylesheet" href="<%=cp %>/imageTest/css/list.css" type="text/css" />

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
<br/><br/>

<table width="600" align="center" style="font-family: 돋움; font-size: 10pt;" cellspacing="2" cellpadding="1" >

<tr>
	<td align="left" colspan="2" width="400">
	Total ${totalArticle } articles, ${totalPage } pages / Now Page is ${currentPage }
	</td>
	<td align="right" colspan="1" width="200">
	<input type="button" value="게시물등록" onclick="javascript:location='<%=cp%>/image/write.do';"/>
	</td>
</tr>
<tr><td style="border-bottom:2px solid #DBDBDB;" colspan="3"></td></tr>
<% 
	int newLine = 0; 
	int articleCount=0;
	int cnt = 0;
%>
	<c:forEach var="dto"
	
	+ items="${lists }">
<% 
	if(newLine==0){
		out.print("<tr>");
	}
	newLine++;
	articleCount++;
%>
	<td align="center" width="190">
		<input type="hidden" value="${dto.num }" name="num" />
		<a href="${imagePath }/${dto.saveFileName }">
			<img alt="" src="${imagePath }/${dto.saveFileName }" width="190" height="190">
			<br>${dto.subject }
		</a><a href="${deletePath}?num=${dto.num }&pageNum=${pageNum }">삭제</a>
	</td>
<% 
	if(newLine==3){	
		out.print("</tr>");
		newLine = 0;
	}
%>
	</c:forEach>
<%
	while(newLine>0&&newLine<2){
		out.print("<td width='180'></td>");
		newLine++;
	}
	out.print("</tr>");
%>

<tr><td style="border-bottom:2px solid #DBDBDB;" colspan="3"></td></tr>	
<tr>
	<td align="center" colspan="3">
	<c:if test="${dataCount!=0 }">
		${pageIndexList }
	</c:if>
	<c:if test="${dataCount==0 }">
		등록된 파일이 없습니다
	</c:if>
	</td>
</tr>

</table>
<br/><br/>

</body>
</html>