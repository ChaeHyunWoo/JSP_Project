<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	function idpwCheck() {
		
		//단축 아이콘 만들기
		var f = document.myForm; // 오른쪽 단어를 f로 함축시켜 놓은 것
		
		//if(!f.id.value)이렇게 단순하게 바꿀 수 있다.
		if(document.myForm.id.value == ""){
			
			alert("아이디를 입력하세요!");
			document.myForm.id.focus(); //아이디에 커서를 갖다놔라.
			return; // 아이디입력을 안했는데 비밀번호로 넘어가면 안되니 return씀
		}
		
		if(f.pwd.value == ""){
			
			alert("패스워드를 입력하세요!");
			f.pwd.focus(); //아이디에 커서를 갖다놔라.
			return; 
		}
		
		alert("로그인 성공!!");
		
	}


</script>

</head>
<body>

<!-- form 양식/form은 고유 이름이 있어야 한다. -->
<form action="" name="myForm">

<table style="font-size: 10pt; font-family: 돋움;" cellpadding="3">

<tr>
	<td><b>아이디</b></td>
	<td><input type="text" style="width: 100px; height: 22px;" name="id"/>
	</td>
	<td></td>
</tr>

<tr>
	<td><b>비밀번호</b></td>
	<td><input type="password" style="width: 100px; height: 22px;" name="pwd"/>
	</td>
	<td>
	<a href="javascript:idpwCheck();">
	<img src="../html1/image/btn_login.gif"></a></td>
</tr>

<tr>
	<td colspan="3" align="center">
	<input type="checkbox">아이디 저장
	<input type="checkbox" checked="checked">보안 접속
	</td>
</tr>
<tr height="1">
	<td colspan="3" bgcolor="#dad6d7"></td>
</tr>


</table>

<a href="javascript:idpwCheck();">로그인</a>
<input type="button" value="로그인" onclick="idpwCheck();"/>
<button onclick="idpwCheck();">로그인</button>

</form>






</body>
</html>