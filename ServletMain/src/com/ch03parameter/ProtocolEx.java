package com.ch03parameter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/ProtocolEx")
public class ProtocolEx extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=EUC-KR");
		request.setCharacterEncoding("EUC-KR");
		
		String protocol = request.getParameter("protocol");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title></title></head>");
		out.println("<body>");
			out.println("프로토콜: " + protocol);
			
			
		out.println("</body>");
		out.println("</html>");
		
		out.close();
	}
	
	
	
}
