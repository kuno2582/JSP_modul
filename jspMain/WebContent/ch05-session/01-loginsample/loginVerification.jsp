<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%!
	String id,pw;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	id = request.getParameter("id");
	pw = request.getParameter("pw");
	
	if(id.equals("kuno") && pw.equals("12345")){
		session.setAttribute("id",id);
		
		response.sendRedirect("welcome.jsp");
	}else{
		response.sendRedirect("login.html");
	}
	
%>
</body>
</html>