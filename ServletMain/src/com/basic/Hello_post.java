package com.basic;

import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*

Post ���
 - ���޵Ǵ� �Ķ���Ͱ� URL��λ� �������� �ʽ��ϴ�.
 - html���� �ִ� ���±��� method�Ӽ��� post�� ������ ��� ȣ���� ��
 - HTTP header �� �̿��ؼ� ������ ������ �˴ϴ�.
 - form���� submit�� ������ �����ؾ߸��մϴ�.
 - ���۵Ǵ� ������ �������� ������ �����ϴ�.


*/
@SuppressWarnings("serial")
public class Hello_post extends HttpServlet {

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response){
		
		try {
			response.setContentType("text/html; charset=EUC-KR");
			request.setCharacterEncoding("EUC-KR");
			
			PrintWriter out = response.getWriter();
			
			String name = request.getParameter("name");
			out.println("<html>");
			out.println("<head><title>post������� ���۵� ������ ó��</title></head>");
			out.println("<body>");
			out.println(name + "���� �湮�� ȯ���մϴ�.");
			out.println("</body>");
			out.println("</html>");
			
			out.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
