<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<form action="viewParameter_enumer.jsp" method="post">
		�̸�: <input type="text" name="name" size="10"><br>
		�ּ�: <input type="text" name="address" size="30"><br>
		�����ϴ� ��ȭ: 
		<input type="checkbox" name="movie" value="interstella" checked="checked">���ͽ��ڶ�
		<input type="checkbox" name="movie" value="inception">�μ���
		<input type="checkbox" name="movie" value="martion">����
		<input type="checkbox" name="movie" value="gravity">�׷���Ƽ
		<input type="checkbox" name="movie" value="core">�ھ�
		<br>
		����: 
		<input type="radio" name="major" value="management">�濵
		<input type="radio" name="major" value="machine">������
		<input type="radio" name="major" value="math">����
		<input type="radio" name="major" value="biology">����ȭ��
		<input type="radio" name="major" value="society" checked="checked">��ȸ��
		<br>
		���:
		<select name="hobby">
			<option value="basketball">��</option>
			<option value="ballyball">�豸</option>
			<option value="baseball">�߱�</option>
			<option value="soccer">�౸</option>
			<option value="reading">����</option>
			<option value="fishing" selected="selected">����</option>
		</select>
		<br>
		<input type="submit" value="����">
		
	</form>
</body>
</html>