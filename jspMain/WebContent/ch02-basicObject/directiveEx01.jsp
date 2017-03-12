<%@ page import = "java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<!-- 
page 디렉티브
 - 페이지 속성을 지정할 때 사용
 - 주로 사용되는 언어 지정이나 import문에 사용합니다.
 -->
<body>
	<%
	int[] iArr = {10, 20, 30, 40, 50};
	out.println(Arrays.toString(iArr));
	%>
	

</body>
</html>