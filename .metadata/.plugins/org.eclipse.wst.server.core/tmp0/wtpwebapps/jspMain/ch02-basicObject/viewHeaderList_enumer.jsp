<!-- 
Enumeration �������̽�
��ü(Vector)���� ���տ��� ������ ��ü���� �Ѽ����� �ϳ��� ó���� �� �ִ� �޼ҵ带 
�����ϴ� �÷��� �����ӿ�ũ

hasMoreElements()
Vector�κ��� ������ Enumeration�� ��Ұ� �ִٸ� true ��ȯ, ���ٸ� false��ȯ
nextElement()
Enumeration�� ���� ��Ҹ� ��ȯ


 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.util.Enumeration" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<% 
	Enumeration<String> headerEnum = request.getHeaderNames();

	while(headerEnum.hasMoreElements()){
		String headerName = (String)headerEnum.nextElement();
		String headerValue = request.getHeader(headerName);
%>
	<%= headerName %>=<%=headerValue %>
	
<%}%>
</body>
</html>