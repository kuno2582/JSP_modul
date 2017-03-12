<!-- 

모든 jsp페이지에 사용되는 변수 지정

 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ include file="include.jspf" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	이미지 경로: <%=img_path %><br>
	파일 경로: <%=file_path %><br>
	주소: <%=address_name %><br>
</body>
</html>