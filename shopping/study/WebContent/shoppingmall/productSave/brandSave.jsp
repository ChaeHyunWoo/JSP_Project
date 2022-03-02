<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>브랜드 저장</title>
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/productSave/data/style.css" />
<script type="text/javascript"
	src="<%=cp%>/shoppingmall/productSave/data/productSave.js"></script>
</head>
<body>
	<center>
		<table width="600" border="2" cellpadding="0" cellspacing="0"
			bordercolor="#d6d4a6" align="center">
			<tr height="40">
				<td style="padding-left: 20px"><b>브랜드 저장</b></td>
			</tr>
		</table>
		<br />
		<form action="" method="post" name="myForm">
			<table width="600" border="0" cellpadding="0" cellspacing="0"
				align="center">
				<tr>
					<td colspan="2" height="3" bgcolor="#dbdbdb" align="center"></td>
				</tr>
				<tr>
					<td width="140" height="30" bgcolor="#eeeeee"
						style="padding-left: 20px;">브&nbsp;랜&nbsp;드</td>
					<td width="460" style="padding-left: 10px;"><input type="text"
						name="brandName" size="35" maxlength="20" class="boxTF" /></td>
				</tr>
				<tr>
					<td colspan="2" height="2" bgcolor="#dbdbdb" align="center"></td>
				</tr>
			</table>
			<table width="600" border="0" cellpadding="0" cellspacing="3"
				align="center">
				<tr align="center">
					<td height="40"><input type="button" value=" 등록하기 "
						class="btn2" onclick="sendBrand();" /> <input type="reset"
						value=" 다시입력 " class="btn2" /> <input type="button"
						value=" 작성취소 " class="btn2"
						onclick="javascript:location.href='<%=cp%>/shop/product/productSave.do';" />
					</td>
				</tr>
			</table>
		</form>

		<br />&nbsp; <br /> <br />
		<table width="600" border="0" cellpadding="0" cellspacing="0"
			align="center">
			<tr height="30">
				<td align="left" width="50%">Total ${dataCount} articles,
					${totalPage} pages / Now page is ${pageNum}</td>
			</tr>
		</table>
		<table width="600" border="0" cellpadding="0" cellspacing="0"
			align="center">
			<tr>
				<td height="3" bgcolor="#DBDBDB" align="center"></td>
			</tr>
		</table>
		<table width="600" border="0" cellspacing="1" cellpadding="3"
			bgColor="#FFFFFF" align="center">
			<tr>
				<td width="30%" align="center">순서</td>
				<td width="30%" align="center">브랜드명</td>
				<td width="30%" align="center">삭제</td>
			</tr>
			<c:forEach var="dto" items="${lists}" varStatus="status">
				<tr>
					<td width="30%" align="center">${status.index +1 }</td>
					<td width="30%" align="center">${dto.brandName}</td>
					<td width="30%" align="center"><a
						href="<%=cp%>/shop/product/brandDelete.do?num=${dto.num}&pageNum=${pageNum}">삭제</a></td>
				</tr>
			</c:forEach>
			<c:choose>
				<c:when test="${empty lists }">
					<tr bgcolor="#FFFFFF">
						<td align="center" colspan="3" height="30">등록된 자료가 없습니다.</td>
					</tr>					
				</c:when>
				<c:otherwise>
					<tr bgcolor="#FFFFFF">
						<td align="center" height="30" colspan="3">${pageIndexList}</td>
					</tr>
				</c:otherwise>
			</c:choose>
		</table>
		<table width="600" border="0" cellpadding="0" cellspacing="0"
			align="center">
			<tr>
				<td height="3" bgcolor="#DBDBDB" align="center"></td>
			</tr>
		</table>
	</center>
</body>
</html>