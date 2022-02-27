<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	function textCopy() {
		
		var cvalue;
		
		cvalue = window.document.myForm.chk.checked;
		
		if(cvalue==true) {
			document.myForm.client2.value=
				document.myForm.client1.value;
		}else{
			document.myForm.client2.value=""; // value를 null로 초기화
		}
		
		
	}

</script>

</head>
<body>

<form action="" name="myForm">

주문고객 정보 - 주소
<input type="text" size="40" name="client1"/>
<input type="checkbox" name="chk" onclick="textCopy();"/>
배송장소가 위와 동일<br/>

배달장소 정보 - 주소
<input type="text" size="40" name="client2"/>


</form>

</body>
</html>