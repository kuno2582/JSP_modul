<%@ page import="java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	request.setCharacterEncoding("EUC-KR"); //���۵� ������ ���ڵ� ����
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<b>request.getParameter() �޼ҵ�</b><br>
	name �Ķ����: <%= request.getParameter("name") %> <br>
	address �Ķ����: <%= request.getParameter("address") %> <br>
	movie �Ķ����: <%= request.getParameter("movie") %> <br>
	major �Ķ����: <%= request.getParameter("major") %> <br>
	hobby �Ķ����: <%= request.getParameter("hobby") %> <br>
	
	<b>request.getParameterValues() �޼ҵ�</b><br>
	<% String[] values = request.getParameterValues("movie"); 
		for(int i=0; i<values.length; i++){
	%>
		<%=values[i] %>
	<%}%>
	<br>
	movie �Ķ����: <%= Arrays.toString(values) %> <br>
	phone �Ķ����: <%= request.getParameter("phone") %> <br>
	
</body>
</html>