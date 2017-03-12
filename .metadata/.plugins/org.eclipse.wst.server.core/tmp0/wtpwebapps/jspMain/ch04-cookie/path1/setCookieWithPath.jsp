<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.net.URLEncoder" %><!-- 쿠키값 한글값이 가능하게 해주는 클래스 -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	

	Cookie cookie1 = new Cookie("path1", URLEncoder.encode("경로: /jspMain/WebContent/ch04-cookie/path1", "EUC-KR"));
	cookie1.setPath("/jspMain/ch04-cookie/path1");
	response.addCookie(cookie1);
	
	Cookie cookie2 = new Cookie("path2", URLEncoder.encode("경로: /jspMain/WebContent/ch04-cookie/path2", "EUC-KR"));
	cookie2.setPath("/jspMain/ch04-cookie/path2");
	response.addCookie(cookie2);
	
	Cookie cookie3 = new Cookie("path3", URLEncoder.encode("경로: /", "EUC-KR"));
	cookie3.setPath("/");
	response.addCookie(cookie3);
	
	Cookie cookie4 = new Cookie("path4", URLEncoder.encode("경로: ", "EUC-KR"));
	response.addCookie(cookie4);
%>
	
	다음과 같이 쿠키를 생성했습니다.<br>
	<%=cookie1.getName() %> = <%=cookie1.getValue() %> [ <%=cookie1.getPath() %>]<br>
	<%=cookie2.getName() %> = <%=cookie2.getValue() %> [ <%=cookie2.getPath() %>]<br>
	<%=cookie3.getName() %> = <%=cookie3.getValue() %> [ <%=cookie3.getPath() %>]<br>
	<%=cookie4.getName() %> = <%=cookie4.getValue() %> [ <%=cookie4.getPath() %>]<br>
</body>
</html>