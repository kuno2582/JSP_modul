package com.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
SampleServlet 서블릿 작성
doGet()메소드가 되면 
"두번째 작성한 Servlet입니다."

서블릿 매핑

컨텍스트 패스(Context Path)
WAS에서 웹어플리케이션을 구분하기 위한 path
이클립스에서 프로젝트를 생성하면 자동으로 만들어집니다.
server.xml 추가

*/
@SuppressWarnings("serial")
public class SampleServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html;charset=EUC-KR");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>Hello Servlet</title></head>");
		out.println("<body>");
		out.println("두번째 작성하는 Servlet입니다.");
		out.println("</body>");
		out.close();
	}

}
