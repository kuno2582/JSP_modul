<!-- 
request
���������� �������� ������ ��û���� ���� ����
���������� ������ � ������ ��û�ϴ� ���� request��� �մϴ�.
�̷��� ��û ������ request��ü�� �����մϴ�.
- Ŭ���̾�Ʈ�� ���õ� ���� ����
- ������ ���õ� ���� ����
- Ŭ���̾�Ʈ�� ������ ��û �Ķ���� ���� ����
- Ŭ���̾�Ʈ�� ������ ��û ��� ���� ����

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
	out.println("Ŭ���̾�Ʈ IP: " + request.getRemoteAddr() + "<br>");
	out.println("��û���� ��������: " + request.getProtocol() + "<br>");
	out.println("��û���� ���۹��: " + request.getMethod() + "<br>");
	out.println("��û URL����: " + request.getRequestURL() + "<br>");
	out.println("��û URI����: " + request.getRequestURI() + "<br>");
	out.println("���ؽ�Ʈ ���: " + request.getContextPath() + "<br>");
	out.println("�����̸�: " + request.getServerName() + "<br>");
	out.println("������Ʈ: " + request.getServerPort() + "<br>");
	%>
	<br>
	�����̸�: <%= request.getServerName() %> <br>
	������Ʈ: <%= request.getServerPort() %> <br>

</body>
</html>