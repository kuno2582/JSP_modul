package com.basic;

import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*

Post 방식
 - 전달되는 파라미터가 URL경로상에 보여지지 않습니다.
 - html내에 있는 폼태그의 method속성이 post로 지정될 경우 호출이 됨
 - HTTP header 를 이용해서 정보가 전송이 됩니다.
 - form에서 submit로 정보를 전송해야만합니다.
 - 전송되는 데이터 사이즈의 제한이 없습니다.


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
			out.println("<head><title>post방식으로 전송된 데이터 처리</title></head>");
			out.println("<body>");
			out.println(name + "님의 방문을 환영합니다.");
			out.println("</body>");
			out.println("</html>");
			
			out.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
}
