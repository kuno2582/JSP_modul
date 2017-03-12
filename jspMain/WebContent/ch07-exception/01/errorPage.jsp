<!-- 

exception 내장 객체
JSP페이지에서 예외가 발생할 경우 그 예외를 처리할 페이지를 
사용자가 지정한 경우에 해당 에러 페이지에 전달하는 예외 객체

getMessage()		에러 메시지를 문자열로 리턴
			
toString()			발생된 예외 클래스명과 에러메시지를 리턴

printStackTrace()	해당 에러의 StackTrace정보를 출력합니다.


 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page isErrorPage="true" %>	<!-- 에러페이지라고 명시해주어야 한다. 그래야 exception내장객체 접근 가능 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	에러 발생<br>
	<%= exception.getMessage() %>
	
	
</body>
</html>