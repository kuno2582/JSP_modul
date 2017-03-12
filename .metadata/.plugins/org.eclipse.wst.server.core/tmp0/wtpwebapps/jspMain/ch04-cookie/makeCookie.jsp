<!-- 
쿠키(Cookie)
웹브라우저에서 서버로 어떤 데이터를 요청하면 서버측에서는 알맞은 로직을 수행한 후 데이터를
웹 브라우저로 응답해 줍니다.
그리고, 서버는 웹브라우저와의 관계를 종료합니다.
이렇게, 웹브라우저에 응답 한 후 연결을 끊는 것(Connectless)은 HTTP프로토콜의 특징입니다.
연결이 끊겼을 때 어떤 정보를 지속적으로 유지하기 위한 수단으로 쿠키라는 방식을 사용합니다.

광고,홍보 마케팅으로 이용
접속 통계
맞춤정보 제공

cookie.setMaxAge(초단위*60)
 - 쿠키의 유효시간 설정
 - 쿠키의 유효시간을 지정하면 클라이언트 영역에 파일을 생성해서 쿠키 정보를 보관하게 됩니다.
 - 브라우저를 닫아도 지정된 시간만큼 쿠키파일은 유지되고, 설정한 시간이 지나야 파일이 삭제됩니다.

cookie.setMaxAge(-1)
 - 쿠키파일을 생성하지 않습니다. 메모리에 쿠키정보를 보관
 - 브라우저를 닫으면 쿠키정보가 소멸됩니다.

 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie cookie = new Cookie("cookieName", "cookieValue");	//쿠키생성자(쿠키이름,쿠키값)
	
	cookie.setMaxAge(30*60);
	
	response.addCookie(cookie);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
쿠키명: <%= cookie.getName() %>
쿠키값: <%= cookie.getValue() %>
</body>
</html>