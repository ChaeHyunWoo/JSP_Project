<%@ page contentType="text/html; charset=UTF-8"%>

<%!

	int a=0;
	int sum(int x) {
		
		int s=0;
		for(int i=1; i<=x; i++) {
			s+=i;
		}
		
		return s;
	}
	

%>

<%

	int b=0;
	a++;
	b++;

%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

a:<%=a %><br/>
b:<%=b %><br/>
합:<%= %>

</body>
</html>