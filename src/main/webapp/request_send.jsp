<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>request_send.jsp</title>
</head>
<body>
	<%! int age; 
	    String agestr, name;	    
	%>
	
	<% 
		request.setCharacterEncoding("EUC-KR");
		
		agestr = request.getParameter("age");
		name = request.getParameter("name");
		age = Integer.parseInt(agestr);
		
		//String name2 = URLEncoder.encode(name,"EUC-KR");
	
		if(age>=20)
		{			
			response.sendRedirect("pass.jsp?age=" + age + "&name=" + URLEncoder.encode(name,"EUC-KR"));//������� age���� name���� pass.jsp �� ����
		}
		else			
		{		
			response.sendRedirect("ng.jsp?age=" + age + "&name=" + URLEncoder.encode(name,"EUC-KR"));
		}
	%>
</body>
</html>