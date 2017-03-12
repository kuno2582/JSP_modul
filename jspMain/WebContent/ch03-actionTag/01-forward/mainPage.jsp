<!-- 
jsp:foward 액션 태그
하나의 JSP페이지에서 다른 JSP페이지로 요청 처리를 전달할 때 사용
즉, 현재의 페이지에서 다른 특정 페이지로 전환할 때 사용합니다.




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
	<h1>mainPage.jsp</h1>
	
	<jsp:forward page="subPage.jsp"/>
</body>
</html>