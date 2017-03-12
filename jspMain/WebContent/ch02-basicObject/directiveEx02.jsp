<!-- 
include 디렉티브
 - 다른 문서(별도의 문서파일)를 포함할 때 사용
 - 저작권 표시와 같은 간단하면서도 모든 페이지에 중복해서 표시되는 문장
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

	<h1>directiveEx02. jsp페이지입니다.</h1>
	<%@ include file = "include01.jsp" %>
	<h1>다시 directiveEx02 페이지입니다.</h1>

</body>
</html>