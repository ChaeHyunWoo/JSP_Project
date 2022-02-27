<%@ page contentType="text/html; charset=UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");

String cp = request.getContextPath(); //cp는 ContextPath의 약자
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>회원가입</title>

<style>

.text_box {

  width:500px;
  height:50px;
  font-size:20px;
}

.birth {
  width:160px;
  height:50px;
  font-size:20px;

}
.birth2 {
  width:160px;
  height:55px;
  font-size:20px;

}
.button {
 width: 510px;
 height: 50px;
 font-size: 15px;
 color:white;
 background-color: #01C707
}
.checkbox {
 width: 510px;
 height: 50px;
 font-size: 15px;
}
.checkbox2 {
 width: 255px;
 height: 50px;
 font-size: 15px;
}
.button2 {
 width: 245px;
 height: 55px;
 font-size: 15px;
 color:white;
 background-color: #01C707
}
</style>

<script type="text/javascript">

	function idpwCheck() {
		
		var f = document.myForm;
	
		if(!f.id.value) {

			alert("아이디입력!");
			document.myForm.id.focous();
			return;
			}
		if(!f.pwd.value) {
		
			alert("비밀번호입력!");
			f.pwd.focous();
			return;
		}
		if(!f.pwd2.value) {
		
			alert("비밀번호재확인!");
			document.myForm.pwd2.focous();
			return;
		}
		if(f.pwd.value != f.pwd2.value) {
		
			alert("비밀번호가 다릅니다!");
			document.myForm.pwd1.focous();
			return;
		}
		if(!f.name.value) {
		
			alert("이름을 입력!");
			document.myForm.name.focous();
			return;
		}
		
		
		if(!f.birth1.value) {
			
			alert("년도 입력!");
			document.myForm.birth1.focous();
			return;
		}
		
		if(f.birth2.value == "월") {
			
			alert("월입력!");
			document.myForm.birth2.focous();
			return;
		}
		if(!f.birth3.value) {
			
			alert("일 입력!");
			document.myForm.birth3.focous();
			return;
		}
		
		
		if(f.gender.value =="성별") {
			
			alert("성별 선택해라!");
			document.myForm.gender.focous();
			return;
		}
		if(!f.email.value) {
			
			alert("이메일 입력!");
			document.myForm.email.focous();
			return;
		}
		
		if(!f.choice.value) {
			
			alert("국가 선택!");
			document.myForm.choice.focous();
			return;
		}
		if(!f.tel.value) {
			
			alert("전화번호 입력!");
			document.myForm.tel.focous();
			return;
		}
		if(!f.phone.value) {
			
			alert("인증번호 입력");
			document.myForm.phone.focous();
			return;
		}
		
		
		alert("회원가입 성공!!!!!")
		
		f.action="<%=cp%>/html1/naver/naver_ok.jsp";
		f.submit();
		
	}

		

</script>


</head>
<body bgcolor="#f5f6f7">

<form action="" method="post" name="myForm">

<div align="center" >
<img src="nana.PNG"/>

<table style="font-size: 15pt; font-family: 돋움" cellpadding="3">


<tr>                      
	<td><b>아이디</b></td>
</tr>
<tr>
	<td><input type="text" class="text_box"  name="id" size="40" placeholder="아이디입력"></td>
</tr>

<tr>
	<td><b>비밀번호</b></td>
</tr>
<tr>
	<td>
		<input type="password" class="text_box"  placeholder="비밀번호 입력"
		style="background : url('잠금이미지.PNG') no-repeat;  background-position: 95%"; name="pwd" ;>
	</td>
</tr>

<tr>
	<td><b>비밀번호 재확인</b></td>
</tr>
<tr>
	<td><input type="password" name="pwd2" class="text_box"  placeholder="비밀번호 재확인"
	style="background : url('잠금이미지.PNG') no-repeat;  background-position: 95%";></td>
</tr>

<tr>
	<td><strong>이름</strong></td>
</tr>
<tr>
	<td><input type="text" name="name" class="text_box"></td>
</tr>

<tr>
	<td><strong>생년월일</strong></td>
</tr>
<tr>
	<td><input type="text" name="birth1"  class="birth" placeholder="년도"> 
	<select name="birth2" class="birth2">
	<option>월</option>
	<option>1월</option>
	<option>2월</option>
	<option>3월</option>
	<option>4월</option>
	<option>5월</option>
	<option>6월</option>
	<option>7월</option>
	<option>8월</option>
	<option>9월</option>
	<option>10월</option>
	<option>11월</option>
	<option>12월</option>
	
	</select>
 <input type="text" name="birth3" class="birth  placeholder="이름입력"></td>
</tr>


<tr>
	<td><strong>성별</strong></td>
</tr>
<tr>
	<td>
	<select name="gender" class="checkbox" >
	<option>성별</option>
	<option>남성</option>
	<option>여성</option>
	</select>
	</td>
</tr>

<tr>
	<td><strong>이메일</strong></td>
</tr>
<tr>
	<td><input type="text" name="email" class="text_box"></td>
</tr>

<tr>
	<td><strong>휴대전화</strong></td>
</tr>
<tr>
	<td>
	<select name="choice" class="checkbox">
	<option>선택</option>
	<option>대한민국</option>
	<option>영국</option>
	<option>캐나다</option>
	</select>
	</td>
</tr>
<tr>
	<td>
	<input type="text" name="tel" class="checkbox2" placeholder="전화번호 입력">
	<button class="button2">인증번호받기</button>
	<!-- <input type="button" style="width: 100px; height: 25px;"> -->
	</td>
</tr>
<tr>
	<td>
	<input type="text" name="phone" class="text_box"  placeholder="인증번호 입력하세요" ></td>
</tr>

<tr>
	<td>
	<button type="button" onclick="idpwCheck()" class="button">가입하기</button>
	</td>
</tr>

</table>

</div>

</form>

</body>
</html>