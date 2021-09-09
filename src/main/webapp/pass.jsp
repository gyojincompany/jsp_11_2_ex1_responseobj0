<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>pass.jsp</title>
</head>
<body>
	<%! int age; 
	    String agestr, name; 
	%>
	
	<% 
		agestr = request.getParameter("age");
		age = Integer.parseInt(agestr);
		name = request.getParameter("name");
	%>


	<h1><%=name %>님은 <%=age %>세 이므로, 성인입니다. 우리 홈페이지 입장이 가능합니다!</h1>
</body>
</html>