package com.ch03parameter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
public class TodayMenu extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try{
			
			response.setContentType("text/html; charset=EUC-KR");
			request.setCharacterEncoding("EUC-KR");
			
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head><title>���� ���� ����</title></head>");
			out.println("<body>");
				out.println("<div align=\"center\">");
				out.println("<h3>���� ������ </h3>");
				
				String[] values = request.getParameterValues("dinner");	//�������� ���ڰ��� ���ÿ� �ޱ�
				for(int i=0; i<values.length; i++){
					out.println(values[i]);
				}
				out.println("<br>");
				out.println("�̳� ����");
			
			
			out.println("</body>");
			out.println("</html>");
			
			out.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
}
