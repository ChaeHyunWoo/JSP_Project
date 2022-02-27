<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	function emailCheck() {
		
		var f = document.myForm;
		var clength = f.emailSel.options.length;
		var cindex = f.emailSel.selectedIndex;
		
		//alert (clength + ":" + cindex);//6 : (0~5)
		
		f.email2.value="";
		
		if(cindex==(clength-1)) {
			f.email2.readOnly=false; //직접입력할때만 false를 써서 풀어준다.
		} else{
			f.email2.value = f.emailSel.options[cindex].value;
			f.email2.readOnly=true;
		}
	}

</script>

</head>
<body>

<form action="" name="myForm">

email 주소
<input type="text" name="email1"/>
@
<input type="text" name="email2" readonly="readonly"/>

<!-- select는 onchange 기억하기!!!! -->
<select name="emailSel" onchange="emailCheck();">
<option value="">선택</option>
<option value="naver.com">네이버</option>
<option value="daum.net">다음</option>
<option value="yahoo.com">야후</option>
<option value="nate.com">네이트</option>
<option value="">직접입력</option>
</select>



</form>




</body>
</html>