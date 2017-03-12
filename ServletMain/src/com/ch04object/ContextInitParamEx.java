package com.ch04object;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*

ServletContext (데이터 공유)
여러 Servlet에서 특정 데이터를 공유해야할 경우 context parameter를 이용합니다.
web.xml에 기술하고 Servlet에서 공유해서 사용하면 됩니다.

ServletConfig
하나의 Servlet에 관련된 초기화 파라미터들


*/
@WebServlet("/ContextInitParamEx")
public class ContextInitParamEx extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ContextInitParamEx() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String hobby = getServletContext().getInitParameter("hobby");
		String color = getServletContext().getInitParameter("color");
		String favoritessong = getServletContext().getInitParameter("favoritessong");
		
		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter writer = response.getWriter();
		writer.println("<html><head></head><body>");
		writer.println("hobby: " + hobby + "<br>");
		writer.println("color: " + color + "<br>");
		writer.println("favoritessong: " + favoritessong + "<br>");
		writer.println("</html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
