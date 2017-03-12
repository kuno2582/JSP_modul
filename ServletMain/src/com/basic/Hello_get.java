package com.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*

GET���
 - ���޵Ǵ� �Ķ���Ͱ� URL��λ� �������ϴ�.
 - html�� form�±׿��� method�Ӽ��� get���� ������ ��� ȣ��
 - ��ûURL ���ε��� ?�� �Բ� ����Ͽ� �����͸� �����մϴ�.
 - URL�� ���� ���۵Ǳ� ������ ���ȿ� ���
 - �˻��� ����, �Խ����� ��������ȣ ��
 - 256byte

*/

@SuppressWarnings("serial")
public class Hello_get extends HttpServlet {

	//���۵� ������ request�� �ִ�.
	public void doGet(HttpServletRequest request, HttpServletResponse response){
		
		try {
			response.setContentType("text/html; charset=EUC-KR"); 
			
			request.setCharacterEncoding("EUC-KR"); //������Ʈ�� ���ڵ�Ÿ���� �ٲ��ش�.
			
			PrintWriter out = response.getWriter();
			
			String name = request.getParameter("name");
			out.println("<html>");
			out.println("<head><title>get������� ���۵� ������ ó��</title></head>");
			out.println("<body>");
			out.println(name + "���� �湮�� ȯ���մϴ�.");
			out.println("</body>");
			out.println("</html>");
			
			out.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

}
