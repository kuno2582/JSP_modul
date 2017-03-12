package com.ch04object;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*

ServletContext (������ ����)
���� Servlet���� Ư�� �����͸� �����ؾ��� ��� context parameter�� �̿��մϴ�.
web.xml�� ����ϰ� Servlet���� �����ؼ� ����ϸ� �˴ϴ�.

ServletConfig
�ϳ��� Servlet�� ���õ� �ʱ�ȭ �Ķ���͵�


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
