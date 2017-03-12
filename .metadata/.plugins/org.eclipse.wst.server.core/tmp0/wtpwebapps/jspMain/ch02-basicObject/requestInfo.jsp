<!-- 
request
웹브라우저가 웹서버에 전송한 요청관련 정보 제공
웹브라우저가 서버에 어떤 정보를 요청하는 것을 request라고 합니다.
이러한 요청 정보는 request객체가 관리합니다.
- 클라이언트와 관련된 정보 제공
- 서버와 관련된 정보 제공
- 클라이언트가 전송한 요청 파라미터 정보 제공
- 클라이언트가 전송한 요청 헤더 정보 제공

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

	<%
	out.println("클라이언트 IP: " + request.getRemoteAddr() + "<br>");
	out.println("요청정보 프로토콜: " + request.getProtocol() + "<br>");
	out.println("요청정보 전송방식: " + request.getMethod() + "<br>");
	out.println("요청 URL정보: " + request.getRequestURL() + "<br>");
	out.println("요청 URI정보: " + request.getRequestURI() + "<br>");
	out.println("컨텍스트 경로: " + request.getContextPath() + "<br>");
	out.println("서버이름: " + request.getServerName() + "<br>");
	out.println("서버포트: " + request.getServerPort() + "<br>");
	%>
	<br>
	서버이름: <%= request.getServerName() %> <br>
	서버포트: <%= request.getServerPort() %> <br>

</body>
</html>