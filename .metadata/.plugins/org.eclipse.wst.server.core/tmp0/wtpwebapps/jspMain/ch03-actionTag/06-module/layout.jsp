<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	request.setCharacterEncoding("EUC-KR");
	String company = "모음 주식";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title><%=company %></title>
</head>
<body>
	<table width="500" border="1" cellpadding="0" cellspacing="0">
		<tr>
			<td colspan="2">
				<jsp:include page="module/top.jsp">
					<jsp:param value="<%=company %>" name="company"/>
				</jsp:include>
			</td>
		</tr>
		<tr height="300">
			<td width="100" valign="top"><jsp:include page="module/left.jsp"/></td>
			<td width="400" valign="top">
				레이아웃
			</td>
		</tr>
		<tr>
			<td colspan="2"><jsp:include page="module/bottom.jsp"></jsp:include></td>
		</tr>
	</table>
</body>
</html>