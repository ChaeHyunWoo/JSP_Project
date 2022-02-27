<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">


	//testFunc();
	document.write("함수 외부...<br/>");

	function testFunc() {
		
		alert("함수 내부...<br/>");
		
	}


</script>

</head>
<body onload="testFunc();"> <!-- body에서 함수 호출 가능!!! -->
이부분은 HTML입니다.
</body>
</html>