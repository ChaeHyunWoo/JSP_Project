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
<title>게 시 판</title>

<link rel="stylesheet" type="text/css" href="<%=cp%>/bbs/css/style.css"/>
<link rel="stylesheet" type="text/css" href="<%=cp%>/bbs/css/list.css"/>

<script type="text/javascript">

	function sendIt() {
		
		var f = document.searchForm;
		f.action = "<%=cp%>/sboard/list.do";
		f.submit();
	}

</script>

</head>
<body>

<div id="bbsList">

	<div id="bbsList_title">
		게 시 판 (Servlet)
	</div>
	<div id="bbsList_header">
		<div id="leftHeader">
		<form action="" method="post" name="searchForm">
			<select name="searchKey" class="selectField">
				<option value="subject">제목</option>
				<option value="name">작성자</option>
				<option value="content">내용</option>
			</select>
			<input type="text" name="searchValue" class="textField"/>
			<input type="button" value=" 검 색 " class="btn2" 
			onclick="sendIt();"/>		
		</form>				
		</div>
		<div id="rightHeader">
			<input type="button" value=" 글올리기 " class="btn2" 
			onclick="javascript:location.href='<%=cp%>/sboard/created.do';"/>			
		</div>	
	</div>
	<div id="bbsList_list">
		<div id="title">
			<dl>
				<dt class="num">번호</dt>
				<dt class="subject">제목</dt>
				<dt class="name">작성자</dt>
				<dt class="created">작성일</dt>
				<dt class="hitCount">조회수</dt>
			</dl>
		</div>
		<div id="lists">
		<c:forEach var="dto" items="${lists }">
			<dl>
				<dd class="num">${dto.num }</dd>
				<dd class="subject">
				<a href="${articleUrl }&num=${dto.num }">
				${dto.subject }</a>
				</dd>
				<dd class="name">${dto.name }</dd>
				<dd class="created">${dto.created }</dd>
				<dd class="hitCount">${dto.hitCount }</dd>
			</dl>
		</c:forEach>
		</div>
		<div id="footer">
			<c:if test="${dataCount != 0 }">
				${pageIndexList }
			</c:if>
			<c:if test="${dataCount == 0 }">
				등록된 게시물이 없습니다.
			</c:if>
		</div>
		
	</div>
	
</div>

</body>
</html>