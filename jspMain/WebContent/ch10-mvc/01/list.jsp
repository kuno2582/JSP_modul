<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	<!-- jstl����ϰڴٴ� ���� -->
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<script type="text/javascript" src="board.js"></script>
<style type="text/css">
body{
	text-align:center;
}
</style>
<body>
	<table width="500" cellpadding="0" cellspacing="0" border="1" align="center">
	<% 
	int count=0; 
	int pageNum;
	int nowPage;
	
		if(request.getParameter("nowPage") == null){
			nowPage = 1;
			System.out.println(nowPage);
		}else{
			nowPage = Integer.parseInt(request.getParameter("nowPage"));
			System.out.println(nowPage);
		}
		System.out.println(request.getAttribute("list"));
	%>
	<c:forEach items="${list}" var="dto">
		<% count++; %>
	</c:forEach>
		<% pageNum = (count/5); %>
		<tr align="center">
			<td>��ȣ</td>
			<td>�̸�</td>
			<td>����</td>
			<td>��¥</td>
			<td>��ȸ��</td>
		</tr>
	
		<c:forEach items="${list}" var="dto" begin="<%=(nowPage*5)-5 %>" end="<%=nowPage*5-1 %>" step="1">
			<tr align="center">
				<td>${dto.bId}</td>
				<td>${dto.bName}</td>
				<td>	<!-- ��ۼ���ŭ �ݺ� -->
					<c:forEach begin="1" end="${dto.bIndent}">-</c:forEach>
					<a href="content_view.do?bId=${dto.bId}">${dto.bTitle}</a>
				</td>
				<td>${dto.bDate}</td>
				<td>${dto.bHit}</td>
			</tr>	
			
		</c:forEach>
		
		<tr>
			<td colspan="5"><a href="write_view.do">�� �ۼ�</a></td>
		</tr>
	</table>
		<%for(int i=1; i<=pageNum+1; i++){%>
			<a href="list.do?nowPage=<%=i%>"><%=i%></a>
		<%}%>
<script type="text/javascript">
	/* window.onload = function(){
		alert('a');
	} */
</script>
</body>
</html>