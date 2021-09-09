<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ng.jsp</title>
</head>
<body>
	<%! int age; 
	    String agestr,name; 
	%>
	
	<% 
		agestr = request.getParameter("age");
		age = Integer.parseInt(agestr);
		name = request.getParameter("name");
	%>
	
	
	<h1><%=name %>님은 <%=age %>세 이므로 미성년자입니다. 미성년자는 우리 홈페이지에 들어오실 수 없습니다.</h1>
	<a href = "requestage.html">나이 입력페이지로 이동</a>
</body>
</html>