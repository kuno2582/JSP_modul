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
		이름: <input type="text" name="name" size="10"><br>
		주소: <input type="text" name="address" size="30"><br>
		좋아하는 영화: 
		<input type="checkbox" name="movie" value="interstella" checked="checked">인터스텔라
		<input type="checkbox" name="movie" value="inception">인셉션
		<input type="checkbox" name="movie" value="martion">마션
		<input type="checkbox" name="movie" value="gravity">그래비티
		<input type="checkbox" name="movie" value="core">코어
		<br>
		전공: 
		<input type="radio" name="major" value="management">경영
		<input type="radio" name="major" value="machine">기계공학
		<input type="radio" name="major" value="math">수학
		<input type="radio" name="major" value="biology">생명화학
		<input type="radio" name="major" value="society" checked="checked">사회학
		<br>
		취미:
		<select name="hobby">
			<option value="basketball">농구</option>
			<option value="ballyball">배구</option>
			<option value="baseball">야구</option>
			<option value="soccer">축구</option>
			<option value="reading">독서</option>
			<option value="fishing" selected="selected">낚시</option>
		</select>
		<br>
		<input type="submit" value="전송">
		
	</form>
</body>
</html>