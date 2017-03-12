package com.ch03parameter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class Student extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		/*super.doPost(req, resp);*/
		
		try{
			
			resp.setContentType("text/html; charset=EUC-KR");
			req.setCharacterEncoding("EUC-KR");
			
			String name = req.getParameter("name");
			int korean = Integer.parseInt(req.getParameter("korean"));	//���ڷε� ���ڿ��� int������ �ٲ��ִ� Ŭ�����޼���
			int english = Integer.parseInt(req.getParameter("english"));
			int math = Integer.parseInt(req.getParameter("math"));
			
			PrintWriter out = resp.getWriter();
			out.println("<html>");
			out.println("<head><title>�л�����</title></head>");
			out.println("<body>");
			out.println(name + "���� ����" + "<br>");
			out.println("��������: " + korean + "<br>");
			out.println("��������: " + english + "<br>");
			out.println("��������: " + math + "<br>");
			out.println("</body>");
			out.println("</html>");
			
			out.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	

}
