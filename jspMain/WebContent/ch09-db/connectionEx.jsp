<!-- 
jar파일과 jsp 연동하는 법은
 프로잭트명 우클릭 -> Build Path...클릭 -> configure Builder...클릭 
  -> libraly에서 jar의 경로(C:\coderap\Oracle\product\11.2.0\dbhome_1\jdbc\lib)추가해주면된다.
 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>

<%
   String jdbcURL="jdbc:oracle:thin:@localhost:1521:orcl";
/* @localhost: 지금 현재 컴퓨터의, 1521: 오라클 포트 번호와, orcl:oracle을 설정해준 이름으로 불러온다.*/
   String id="codelab10";
   String pw="oracle_11g";
   
   Connection con = null;
   

   try{
      Class.forName("oracle.jdbc.driver.OracleDriver");//오라클 드라이버가 로드됨
      
      con = DriverManager.getConnection(jdbcURL, id, pw);//드라이버매니저를 통하여 커낵션 객체를 가져온다.
      
      out.println("정상적으로 접속되었습니다.");
      
   }catch(SQLException e){
      e.printStackTrace();
      out.println("예외가 발생되었습니다.");
   }finally{
      if(con != 
    		  null){
         try{
            con.close();
         }catch(SQLException e){
            e.printStackTrace();
         }
      }
   }
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>