<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<!-- 
표현식
 - JSP페이지내에서 변수의 값이나 메소드호출후 결과값을 출력하기 위한 용도 사용
 - String타입
 - ; 을 사용할 수 없습니다.
 -->
<body>
	<%!
		int number = 10;
		String str = "힘들어도 웃어라(누구나 웃는 사람을 좋아한다.)";
		
		private int multiple(int a, int b){
			return a*b;
		}
	%>
	
	<%= number %><br>
	<%= str %><br>
	<%= multiple(10,100) %><br>

</body>
</html>