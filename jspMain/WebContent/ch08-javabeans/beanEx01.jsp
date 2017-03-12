<!-- 
자바빈 사용
----------------------------------------------------------------
jsp:useBean 액션 태그
	->특정 Bean을 사용한다고 명시할 때 사용
	JSP에서 자바빈 객체를 생성

jsp:useBean id="자바빈이름" class="자바클래스이름" scope="범위"

id: jsp페이지에서 자바빈 객체에 접근할 때 사용할 이름
class: 패키지이름을 포함한 클래스의 완전한 이름을 지정
scope: 자바빈 객체가 저장될 영역을 지정
	page		기본값, 생성한 페이지 내에서만 사용 가능
	request		요청된 페이지 내에서만 사용 가능
	session		웹브라우저의 생명주기와 동일하게 사용 가능
	application	웹어플리케이션 생명주기와 동일하게 사용 가능
	
----------------------------------------------------------------

jsp:getProperty 액션 태그
	->프로퍼티의 값(데이터값)을 출력하거나 가져올 때 사용

jsp:getProperty name="자바빈이름" property="속성이름"

name:		jsp:useBean 액션 태그의 id속성으로 지정한 자바빈 객체의 이름
property:	출력할 프로퍼티 명


----------------------------------------------------------------

jsp:setProperty 액션 태그
	->자바빈 객체의 프로퍼티 값을 설정할 때 사용
	
jsp:setProperty name="자바빈이름" property="속성이름" value="속성값"

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

	<jsp:setProperty name="student" property="name" value="김윤호"/>
	<jsp:setProperty name="student" property="age" value="27"/>
	<jsp:setProperty name="student" property="grade" value="4"/>
	<jsp:setProperty name="student" property="studentNumber" value="2010312009"/>
	
	이름: <jsp:getProperty name="student" property="name"/><br>
	나이: <jsp:getProperty name="student" property="age"/><br>
	학년: <jsp:getProperty name="student" property="grade"/><br>
	학번: <jsp:getProperty name="student" property="studentNumber"/><br>

</body>
</html>


