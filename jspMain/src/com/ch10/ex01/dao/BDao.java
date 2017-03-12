package com.ch10.ex01.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;

/*import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;*/

import com.ch10.ex01.dto.BDto;
/*

DAO(Data Access Object)
�����Ϳ� �����ϱ� ���� ��ü

�����ͺ��̽��� �����ؼ� �����͸� �߰�, ����, ���� ���� �۾��� �ϴ� Ŭ����
JSP, Servlet���������� �����͸� ó���ϴ� ������ �Բ� ����ص� ������ ���������� 
�ڵ��� ���Ȱ���� ���ؼ� ������ DAOŬ������ ����� ���

*/
public class BDao {
	
	/*DataSource dataSource;
	
	public BDao(){
		
		try {
			@SuppressWarnings("unused")
			Context context = new InitialContext();
		} catch (NamingException e) {
			e.printStackTrace();
		}
		
	}*/
	
	//��� �Խñ��� dto��ü�� �޾ƿü� �ִ� list�޼���
	public ArrayList<BDto> list(){
		
		ArrayList<BDto> dtos = new ArrayList<BDto>();
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","codelab10","oracle_11g");
			
			String query="SELECT bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent FROM mvcboard ORDER BY bGroup DESC, bStep ASC";
			preparedStatement = connection.prepareStatement(query);	// �������� �̸��� �ٸ� prepare, prepared
			resultSet = preparedStatement.executeQuery();	//������ ����
			
			while(resultSet.next()){	//������� ������ �� �����ö����� ����

				int bId = resultSet.getInt("bId");
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				int bHit = resultSet.getInt("bHit");
				int bGroup = resultSet.getInt("bGroup");
				int bStep = resultSet.getInt("bStep");
				int bIndent = resultSet.getInt("bIndent");
				
				BDto dto = new BDto(bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent);
				
				dtos.add(dto);
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(resultSet!=null)resultSet.close();
				if(preparedStatement!=null)preparedStatement.close();
				if(connection!=null)connection.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return dtos;
	}
	
	public void write(String bName, String bTitle, String bContent){
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","codelab10","oracle_11g");
			
			String query = "INSERT INTO mvcboard(bId, bName, bTitle, bContent, bHit, bGroup, bStep, bIndent) VALUES (mvcboard_seq.nextval, ?, ?, ?, 0, mvcboard_seq.currval, 0, 0)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, bName);	//������ ? ����
			preparedStatement.setString(2, bTitle);
			preparedStatement.setString(3, bContent);
			
			preparedStatement.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(preparedStatement != null)preparedStatement.close();
				if(connection != null)connection.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
	}
	
	public BDto contentView(String strID){
		
		upHit(strID);
		
		BDto dto = null;
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;	//������ �����ö� ���
		
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","codelab10","oracle_11g");
			
			String query = "SELECT * FROM mvcboard WHERE bId = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(strID));
			
			resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()){
				int bId = resultSet.getInt("bId");
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				int bHit = resultSet.getInt("bHit");
				int bGroup = resultSet.getInt("bGroup");
				int bStep = resultSet.getInt("bStep");
				int bIndent = resultSet.getInt("bIndent");
				
				dto = new BDto(bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent);
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(resultSet != null)resultSet.close();
				if(preparedStatement != null)preparedStatement.close();
				if(connection != null)connection.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return dto;
		
	}
	
	private void upHit(String bId){
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","codelab10","oracle_11g");
			
			String query = "UPDATE mvcboard SET bHIT = bHIT +1 WHERE bId = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, bId);
			preparedStatement.executeUpdate();

		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(preparedStatement != null)preparedStatement.close();
				if(connection != null)connection.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
	} //upHit()
	
	public void modify(String bId, String bName, String bTitle, String bContent){
		
		Connection connection = null;
		PreparedStatement preparedStatement = null; 
		
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","codelab10","oracle_11g");
			
			String query = "UPDATE mvcboard SET bName = ?, bTitle=?, bContent=? WHERE bId=?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, bName);
			preparedStatement.setString(2, bTitle);
			preparedStatement.setString(3, bContent);
			preparedStatement.setInt(4, Integer.parseInt(bId));
			preparedStatement.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();;
		}finally{
			try{
				if(preparedStatement!=null)preparedStatement.close();
				if(connection!=null)connection.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
	}
	
	public void delete(String bId){
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","codelab10","oracle_11g");
			
			String query = "DELETE FROM mvcboard WHERE bId = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(bId));
			preparedStatement.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(preparedStatement!=null)preparedStatement.close();
				if(connection!=null)connection.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
	} //delete()
	
	public BDto reply_view(String strID){
		
		BDto dto = null;
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;
		
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","codelab10","oracle_11g");
			
			String query = "SELECT * FROM mvcboard WHERE bId = ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(strID));
			resultSet = preparedStatement.executeQuery();
			
			if(resultSet.next()){
				int bId = resultSet.getInt("bId");
				String bName = resultSet.getString("bName");
				String bTitle = resultSet.getString("bTitle");
				String bContent = resultSet.getString("bContent");
				Timestamp bDate = resultSet.getTimestamp("bDate");
				int bHit = resultSet.getInt("bHit");
				int bGroup = resultSet.getInt("bGroup");
				int bStep = resultSet.getInt("bStep");
				int bIndent = resultSet.getInt("bIndent");
				
				System.out.println("bHit: " + bHit);
				System.out.println("bGroup: " + bGroup);
				System.out.println("bIndent: " + bIndent);
				
				dto = new BDto(bId, bName, bTitle, bContent, bDate, bHit, bGroup, bStep, bIndent);
				
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(resultSet!=null)resultSet.close();
				if(preparedStatement!=null)preparedStatement.close();
				if(connection!=null)connection.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		return dto;
		
	} //reply_view
	
	public void reply(String bId, String bName, String bTitle, String bContent, String bGroup, String bStep, String bIndent){
		
		replyShape(bGroup, bStep);
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","codelab10","oracle_11g");
			
			String query = "INSERT INTO mvcboard (bId, bName, bTitle, bContent, bGroup, bStep, bIndent) VALUES (mvcboard_seq.nextval, ?, ?, ?, ?, ?, ?)";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setString(1, bName);
			preparedStatement.setString(2, bTitle);
			preparedStatement.setString(3, bContent);
			preparedStatement.setInt(4, Integer.parseInt(bGroup));
			preparedStatement.setInt(5, Integer.parseInt(bStep)+1);
			preparedStatement.setInt(6, Integer.parseInt(bIndent)+1);
			
			preparedStatement.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(preparedStatement!=null)preparedStatement.close();
				if(connection!=null)connection.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
		
	} //reply()
	
	private void replyShape(String bGroup, String bStep){
		
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			connection = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl","codelab10","oracle_11g");
			
			String query = "UPDATE mvcboard SET bStep = bStep + 1 WHERE bGroup = ? and bStep > ?";
			preparedStatement = connection.prepareStatement(query);
			preparedStatement.setInt(1, Integer.parseInt(bGroup));
			preparedStatement.setInt(2, Integer.parseInt(bStep));
			preparedStatement.executeUpdate();
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(preparedStatement!=null)preparedStatement.close();
				if(connection!=null)connection.close();
			}catch(Exception e){
				e.printStackTrace();
			}
		}
		
	}
	
}



