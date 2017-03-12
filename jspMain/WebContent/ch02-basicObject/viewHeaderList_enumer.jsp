<!-- 
Enumeration 인터페이스
객체(Vector)들의 집합에서 각각의 객체들을 한순간에 하나씩 처리할 수 있는 메소드를 
제공하는 컬렉션 프레임워크

hasMoreElements()
Vector로부터 생성된 Enumeration의 요소가 있다면 true 반환, 없다면 false반환
nextElement()
Enumeration의 다음 요소를 반환


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