<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<!-- 
ǥ����
 - JSP������������ ������ ���̳� �޼ҵ�ȣ���� ������� ����ϱ� ���� �뵵 ���
 - StringŸ��
 - ; �� ����� �� �����ϴ�.
 -->
<body>
	<%!
		int number = 10;
		String str = "���� �����(������ ���� ����� �����Ѵ�.)";
		
		private int multiple(int a, int b){
			return a*b;
		}
	%>
	
	<%= number %><br>
	<%= str %><br>
	<%= multiple(10,100) %><br>

</body>
</html>