<!-- 
jar���ϰ� jsp �����ϴ� ����
 ������Ʈ�� ��Ŭ�� -> Build Path...Ŭ�� -> configure Builder...Ŭ�� 
  -> libraly���� jar�� ���(C:\coderap\Oracle\product\11.2.0\dbhome_1\jdbc\lib)�߰����ָ�ȴ�.
 -->
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.SQLException" %>

<%
   String jdbcURL="jdbc:oracle:thin:@localhost:1521:orcl";
/* @localhost: ���� ���� ��ǻ����, 1521: ����Ŭ ��Ʈ ��ȣ��, orcl:oracle�� �������� �̸����� �ҷ��´�.*/
   String id="codelab10";
   String pw="oracle_11g";
   
   Connection con = null;
   

   try{
      Class.forName("oracle.jdbc.driver.OracleDriver");//����Ŭ ����̹��� �ε��
      
      con = DriverManager.getConnection(jdbcURL, id, pw);//����̹��Ŵ����� ���Ͽ� Ŀ���� ��ü�� �����´�.
      
      out.println("���������� ���ӵǾ����ϴ�.");
      
   }catch(SQLException e){
      e.printStackTrace();
      out.println("���ܰ� �߻��Ǿ����ϴ�.");
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