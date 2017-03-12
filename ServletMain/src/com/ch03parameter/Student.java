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
			int korean = Integer.parseInt(req.getParameter("korean"));	//숫자로된 문자열을 int형으로 바꿔주는 클래스메서드
			int english = Integer.parseInt(req.getParameter("english"));
			int math = Integer.parseInt(req.getParameter("math"));
			
			PrintWriter out = resp.getWriter();
			out.println("<html>");
			out.println("<head><title>학사정보</title></head>");
			out.println("<body>");
			out.println(name + "님의 점수" + "<br>");
			out.println("국어점수: " + korean + "<br>");
			out.println("영어점수: " + english + "<br>");
			out.println("수학점수: " + math + "<br>");
			out.println("</body>");
			out.println("</html>");
			
			out.close();
			
		}catch(Exception e){
			e.printStackTrace();
		}
	}
	
	

}
