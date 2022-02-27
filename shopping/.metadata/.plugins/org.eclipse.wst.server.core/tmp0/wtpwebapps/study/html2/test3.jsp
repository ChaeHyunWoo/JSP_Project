<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">


	function testFunc(color) {
		
		document.bgColor=color; // document 컬러값 변경하기
		
	}


</script>

</head>
<body>

<input type="radio" name="r1" value="white" checked="checked" onclick="testFunc('white')"/>while<br>
<input type="radio" name="r1" value="red" checked="checked" onclick="testFunc('red')"/>red<br>
<input type="radio" name="r1" value="blue" checked="checked" onclick="testFunc('blue')"/>blue<br>
<input type="radio" name="r1" value="yellow" checked="checked" onclick="testFunc('yellow')"/>yellow<br>




</body>
</html>