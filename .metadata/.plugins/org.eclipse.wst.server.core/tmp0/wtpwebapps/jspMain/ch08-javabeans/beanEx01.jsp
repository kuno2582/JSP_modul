<!-- 
�ڹٺ� ���
----------------------------------------------------------------
jsp:useBean �׼� �±�
	->Ư�� Bean�� ����Ѵٰ� ����� �� ���
	JSP���� �ڹٺ� ��ü�� ����

jsp:useBean id="�ڹٺ��̸�" class="�ڹ�Ŭ�����̸�" scope="����"

id: jsp���������� �ڹٺ� ��ü�� ������ �� ����� �̸�
class: ��Ű���̸��� ������ Ŭ������ ������ �̸��� ����
scope: �ڹٺ� ��ü�� ����� ������ ����
	page		�⺻��, ������ ������ �������� ��� ����
	request		��û�� ������ �������� ��� ����
	session		���������� �����ֱ�� �����ϰ� ��� ����
	application	�����ø����̼� �����ֱ�� �����ϰ� ��� ����
	
----------------------------------------------------------------

jsp:getProperty �׼� �±�
	->������Ƽ�� ��(�����Ͱ�)�� ����ϰų� ������ �� ���

jsp:getProperty name="�ڹٺ��̸�" property="�Ӽ��̸�"

name:		jsp:useBean �׼� �±��� id�Ӽ����� ������ �ڹٺ� ��ü�� �̸�
property:	����� ������Ƽ ��


----------------------------------------------------------------

jsp:setProperty �׼� �±�
	->�ڹٺ� ��ü�� ������Ƽ ���� ������ �� ���
	
jsp:setProperty name="�ڹٺ��̸�" property="�Ӽ��̸�" value="�Ӽ���"

 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<jsp:useBean id="student" class="com.ch0801.Student" scope="page" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<jsp:setProperty name="student" property="name" value="����ȣ"/>
	<jsp:setProperty name="student" property="age" value="27"/>
	<jsp:setProperty name="student" property="grade" value="4"/>
	<jsp:setProperty name="student" property="studentNumber" value="2010312009"/>
	
	�̸�: <jsp:getProperty name="student" property="name"/><br>
	����: <jsp:getProperty name="student" property="age"/><br>
	�г�: <jsp:getProperty name="student" property="grade"/><br>
	�й�: <jsp:getProperty name="student" property="studentNumber"/><br>

</body>
</html>


