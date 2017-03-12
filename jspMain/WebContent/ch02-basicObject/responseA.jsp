<!-- 
response
웹 브라우저에 전송하는 응답 정보 설정
웹 브라우저의 요청에 응답하는 것을 response라고 하며
이러한 응답정보를 가지고 있는 객체를 response객체라고 합니다.
JSP의 실행 결과를 응답브라우저로 전송하고자 할 때 사용합니다.

 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	A 페이지입니다.<br>
	이 페이지는 보여지지 않습니다.<br>
	<%
	response.sendRedirect("responseB.jsp");
	%>
</body>
</html>