<!-- 
include 액션 태그
다른 jsp 페이지의 실행 결과를 현재위치에 삽입합니다.
즉, 현재페이지에 다른 페이지를 삽입할 때 사용을 합니다.



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

	<h1>main.jsp 페이지 입니다.</h1>
	<jsp:include page="include.jsp" flush="true"/>
	<h1>다시 main.jsp 페이지 입니다.</h1>

</body>
</html>