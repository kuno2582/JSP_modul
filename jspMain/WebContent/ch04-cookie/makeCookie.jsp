<!-- 
��Ű(Cookie)
������������ ������ � �����͸� ��û�ϸ� ������������ �˸��� ������ ������ �� �����͸�
�� �������� ������ �ݴϴ�.
�׸���, ������ ������������ ���踦 �����մϴ�.
�̷���, ���������� ���� �� �� ������ ���� ��(Connectless)�� HTTP���������� Ư¡�Դϴ�.
������ ������ �� � ������ ���������� �����ϱ� ���� �������� ��Ű��� ����� ����մϴ�.

����,ȫ�� ���������� �̿�
���� ���
�������� ����

cookie.setMaxAge(�ʴ���*60)
 - ��Ű�� ��ȿ�ð� ����
 - ��Ű�� ��ȿ�ð��� �����ϸ� Ŭ���̾�Ʈ ������ ������ �����ؼ� ��Ű ������ �����ϰ� �˴ϴ�.
 - �������� �ݾƵ� ������ �ð���ŭ ��Ű������ �����ǰ�, ������ �ð��� ������ ������ �����˴ϴ�.

cookie.setMaxAge(-1)
 - ��Ű������ �������� �ʽ��ϴ�. �޸𸮿� ��Ű������ ����
 - �������� ������ ��Ű������ �Ҹ�˴ϴ�.

 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie cookie = new Cookie("cookieName", "cookieValue");	//��Ű������(��Ű�̸�,��Ű��)
	
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
��Ű��: <%= cookie.getName() %>
��Ű��: <%= cookie.getValue() %>
</body>
</html>