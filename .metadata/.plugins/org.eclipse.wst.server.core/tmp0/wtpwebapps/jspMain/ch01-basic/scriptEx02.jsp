<!-- 

스크립트(Script)
 - 스크립트릿, 선언, 표현식 태그를 묶어서 스크립트라고 합니다.
 - 동적으로 출력결과를 생성하기 위해 사용합니다.
 - JSP문서 안에 JAVA언어를 사용하기 위한 방식 

 -->
<%
//java코드 기술
%>

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
		int i = 0;
		while(true){
			i++;
			out.println("3 * " + i + " = " + (3*i) + "<br>");
	%>		
		#####<br>
	<%
			if(i >= 9)
				break;
		}
	%>



</body>
</html>