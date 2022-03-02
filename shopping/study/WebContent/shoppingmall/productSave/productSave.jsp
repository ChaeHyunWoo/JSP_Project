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
<title>상품 저장</title>
<link rel="stylesheet" type="text/css"
	href="<%=cp%>/shoppingmall/productSave/data/style.css" />
<script type="text/javascript"
	src="<%=cp%>/shoppingmall/productSave/data/productSave.js"></script>
	
<!-- 현우 로그인  -->
<script type="text/javascript">

	function login() {
		
		var f = document.myForm;
		
		f.action = "<%=cp%>/shop/join/login.do";
		f.submit();
	}

</script>

</head>
<body>
	<center>
		<table width="600" border="2" cellpadding="0" cellspacing="0"
			bordercolor="#d6d4a6" align="center">
			<tr height="40">
				<td style="padding-left: 20px"><b>상품 저장</b></td>
			</tr>
		</table>
		<br />
		<form action="" method="post" name="myForm"
			enctype="multipart/form-data">
			<table width="600" border="0" cellpadding="0" cellspacing="0"
				align="center">
				<tr>
					<td colspan="2" height="3" bgcolor="#dbdbdb" align="center"></td>
				</tr>
				<tr>
					<td width="140" height="30" bgcolor="#eeeeee"
						style="padding-left: 20px;">브&nbsp;랜&nbsp;드</td>
					<td width="460" style="padding-left: 10px;"><select
						name="brandNum" class="selectField" style="width: 100px;">
							<option value="">브랜드</option>
							<c:forEach var="dto" items="${brandlists}">
								<option value="${dto.brandNum}">${dto.brandName}</option>
							</c:forEach>
					</select><input type="button" value=" 생성 " class="btn2"
						onclick="javascript:location.href='<%=cp%>/shop/product/brandSave.do?${params }';" /></td>
				</tr>
				<tr>
					<td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td>
				</tr>
				<tr>
					<td width="140" height="30" bgcolor="#eeeeee"
						style="padding-left: 20px;">종&nbsp;&nbsp;&nbsp;류</td>
					<td width="460" style="padding-left: 10px;"><select
						name="typeNum" class="selectField" style="width: 100px;">
							<option value="">종류</option>
							<c:forEach var="dto" items="${typelists}">
								<option value="${dto.typeNum}">${dto.typeName}</option>
							</c:forEach>
					</select><input type="button" value=" 생성 " class="btn2"
						onclick="javascript:location.href='<%=cp%>/shop/product/typeSave.do?${params }';" /></td>
				</tr>
				<tr>
					<td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td>
				</tr>
				<tr>
					<td width="140" height="30" bgcolor="#eeeeee"
						style="padding-left: 20px;">상&nbsp;품&nbsp;명</td>
					<td width="460" style="padding-left: 10px;"><input type="text"
						name="subject" size="33" maxlength="20" class="boxTF" /></td>
				</tr>
				<tr>
					<td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td>
				</tr>
				<tr>
					<td width="140" height="30" bgcolor="#eeeeee"
						style="padding-left: 20px;">가&nbsp;&nbsp;격</td>
					<td width="460" style="padding-left: 10px;"><input type="text"
						name="price" size="33" maxlength="20" class="boxTF" /></td>
				</tr>
				<tr>
					<td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td>
				</tr>
				<tr>
					<td width="140" height="30" bgcolor="#eeeeee"
						style="padding-left: 20px;">일반&nbsp;이미지</td>
					<td width="460" style="padding-left: 10px;"><input type="file"
						name="upload" maxlength="100" size="48" class="boxTF" /></td>
				</tr>
				<tr>
					<td colspan="2" height="1" bgcolor="#dbdbdb" align="center"></td>
				</tr>
				<tr>
					<td width="140" height="30" bgcolor="#eeeeee"
						style="padding-left: 20px;">상세&nbsp;이미지</td>
					<td width="460" style="padding-left: 10px;"><input type="file"
						name="detailImage" maxlength="100" size="48" class="boxTF" /></td>
				</tr>
				<tr>
					<td colspan="2" height="2" bgcolor="#dbdbdb" align="center"></td>
				</tr>
			</table>

			<table width="600" border="0" cellpadding="0" cellspacing="3"
				align="center">
				<tr align="center">
					<td height="40"><input type="button" value=" 등록하기 "
						class="btn2" onclick="sendIt();" /> <input type="reset"
						value=" 다시입력 " class="btn2" />  <input type="button" value=" 작성취소 "
						class="btn2" onclick="login();" /></td>
						<%-- <a href="<%=cp%>/shop/join/login.do">작성취소</a></td> --%>
				</tr>
			</table>
		</form>
	</center>
	<br />&nbsp;
	<br />
	<center>
		<br />
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
			<c:set var="n" value="0" />
			<c:forEach var="dto" items="${lists}">
				<c:if test="${n==0}">
					<tr bgcolor="#FFFFFF">
				</c:if>
				<c:if test="${n!=0&&n%3==0 }">
					</tr>
					<tr bgcolor="#FFFFFF">
				</c:if>
				<td width="200" align="center"><a
					href="${imagePath}/${dto.saveFileName}"> <img
						src="${imagePath}/${dto.saveFileName}" width="180" height="180"
						border="0" />
				</a> <br />${dto.subject}&nbsp;<a
					href="<%=cp%>/shop/product/productDelete.do?num=${dto.num}&pageNum=${pageNum}">삭제</a>
				</td>
				<c:set var="n" value="${n+1}" />
			</c:forEach>
			<c:if test="${n>0||n%3!=0 }">
				<c:forEach var="i" begin="${n%3+1}" end="3" step="1">
					<td>&nbsp;</td>
				</c:forEach>
			</c:if>
			<c:if test="${n!=0 }">
				</tr>
			</c:if>
			<c:if test="${dataCount != 0}">
				<tr bgcolor="#FFFFFF">
					<td align="center" height="30" colspan="3">${pageIndexList}</td>
				</tr>
			</c:if>
			<c:if test="${dataCount == 0}">
				<tr bgcolor="#FFFFFF">
					<td align="center" colspan="3" height="30">등록된 자료가 없습니다.</td>
				</tr>
			</c:if>
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