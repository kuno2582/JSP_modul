<%@ page import="java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR"); //전송된 정보의 인코딩 설정
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<b>request.getParameter() 메소드</b><br>
	name 파라미터: <%= request.getParameter("name") %> <br>
	address 파라미터: <%= request.getParameter("address") %> <br>
	movie 파라미터: <%= request.getParameter("movie") %> <br>
	major 파라미터: <%= request.getParameter("major") %> <br>
	hobby 파라미터: <%= request.getParameter("hobby") %> <br>
	
	<b>request.getParameterValues() 메소드</b><br>
	<% String[] values = request.getParameterValues("movie"); 
		for(int i=0; i<values.length; i++){
	%>
		<%=values[i] %>
	<%}%>
	<br>
	movie 파라미터: <%= Arrays.toString(values) %> <br>
	phone 파라미터: <%= request.getParameter("phone") %> <br>
	
</body>
</html>