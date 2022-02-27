<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
get을 쓰면 get방식 / post를 쓰면 post 방식 @@중요@@
<form>을 쓰는 이유:사용자(클라이언트)에게 값을 받기 위해
get방식/post방식으로 나눈 이유 : 값을 받을때 중요한 정보를 서버에 넘기면(get방식은 중요한 데이터가 주소에보임)
@@form은 post방식이다.
GET방식으로 주로 개발자가 쓴다.
 -->
<form action="hap_ok.jsp" method="post"><!-- action는 ""에 있는 주소로 찾아간다. -->

수1:<input type="text" name="su1"/><br/>
수2:<input type="text" name="su2"/><br/>
이름: <input type="text" name="name"/><br/>
<input type="submit" value="결과"/><br/> <!-- 스크립트를 쓰면 button으로 안쓰면 submit으로(
											submit는 무조건 action을 찾아간다. -->

</form>
<!-- post방식은 버튼 -->
<a href="hap_ok.jsp?su1=100&su2=200&name=%EC%88%98%EC%A7%80">Get방식</a>
<!-- %EC%88%98%EC%A7%80 이거는 한글'수지'의 인코딩 값이다. -->
</body>
</html>