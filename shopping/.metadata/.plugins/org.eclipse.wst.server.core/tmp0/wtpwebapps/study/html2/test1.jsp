<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	//변수
	var str; // 변수 선언 자바스크립트는 자료형이 없다.
	str = "변수 선언 후 값 대입";
	
	document.write(str + "<br/>"); // JS에서 출력하는 방법 / 자바의 system.out.print랑 같은 뜻
	
	document.write("-------------<br/>");
	
	var str1;
	
	str = '문자열';
	document.write(str + ":" + typeof(str) + "<br/>");
	str = 123;
	document.write(str + ":" + typeof(str) + "<br/>");
	str = true;
	document.write(str + ":" + typeof(str) + "<br/>");
	
	document.write("-------------<br/>");
	
	//alert("바보");
	var hello = "hello1 전역변수"; // 변수 앞에 var를 붙이면 전역변수(멤버변수)
	
	//js에서는 메서드라 하지 않고 함수라 한다.
	function thisFunc() {
		
		//지역 변수
		var hello = "hello2 지역변수";
		global = "global전역변수"; //함수 안에 전역변수를 만들때는 var를 안쓴다.
		var local = "local 지역변수"; 
		
		document.write(hello + "<br/>");
		document.write(global + "<br/>");
		document.write(local + "<br/>");
		document.write("<br/><br/>");
		
	}
	
	//함수는 호출을 해야 실행 가능
	thisFunc();
	
	document.write(hello + "<br/>");
	document.write(global + "<br/>");
	//document.write(local + "<br/>"); //애는 출력안됌. / local은 지역변수이기때문
	document.write("<br/><br/>");
	
	
	document.write("<br/>-------------<br/>");
	
	var num1=10, num2=3;
	
	document.write("num1+num2=" + (num1+num2) + "<br/>");
	document.write("num1-num2=" + (num1-num2) + "<br/>");
	document.write("num1*num2=" + (num1*num2) + "<br/>");
	document.write("num1/num2=" + (num1/num2) + "<br/>");
	document.write("num1%num2=" + (num1%num2) + "<br/>");
	document.write("num1>num2=" + (num1>num2) + "<br/>");
	document.write("num1>num2=" + (num1>num2) + "<br/>");
	document.write("num1==um2=" + (num1==num2) + "<br/>");
	document.write("num1!=num2=" + (num1!=num2) + "<br/>");
	
	document.write("<br/>-------------<br/>");
	
	var ans;
	ans = 10;
	if(ans>0){
		document.write(ans+": 양수입니다.");
	} else if {
		document.write(ans + ": 음수입니다.");
	} else {
		document.write(ans + ": 0 입니다.");
	}
	
	document.write("<br/>-------------<br/>");
	
	for(var i=1; i<=10; i++) {
		document.write(i + "<br/>");
	}
	
	
	document.write("<br/>-------------<br/>");
	
	var j=1;
	while(j<=10){
		document.write(j + "\t");
		j++;
	}
	


</script>

</head>
<body>

</body>
</html>