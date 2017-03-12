<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%!
	String[] str = {"JSP가","정말","재미","있다."};
	%>
	<table border="1" width="250">
		<tr>
			<td>배열의 index</td>
			<td>배열의 내용</td>
		</tr>
	<%
		for(int i=0; i<str.length; i++){
			out.println("<tr>");
				out.println("<td>");
					out.println(i);
				out.println("</td>");
				out.println("<td>");
					out.println(str[i]);
				out.println("</td>");
			out.println("</tr>");
		}
	%>
	</table>
	
	<br>
	스크립트릿과 표현식을 사용해서 위와 똑같이 출력해보기
	
	<%
	String[] str2 = {"JSP는","정말","재미","있을 것 같다."};
	%>
	<table border="1" width="250">
		<tr>
			<td>배열의 index</td>
			<td>배열의 내용</td>
		</tr>
		<%for(int i=0; i<str2.length; i++){%>
		<tr>
			<td><%=i %></td>
			<td><%=str2[i] %></td>
		<tr>
		<%}%>
	</table>
	
	<br>
	확장 for문 사용해서 배열의 내용
	<table border="1" width="250">
		<tr>
			<td>배열의 내용</td>
		</tr>
		<%for(String s: str){ %>
		<tr>
			<td><%=s %></td>
		</tr>
		<%}%>
	</table>
	
</body>
</html>