package com.ch04object;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/ServletInitParamEx02"},
	initParams={@WebInitParam(name="id", value="starwars"),
			@WebInitParam(name="pw", value="MaytheForcebewithYou"),
			@WebInitParam(name="path", value="c:\\codelab\\workspace")
})
public class ServletInitParamEx02 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletInitParamEx02() {

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = getInitParameter("id");
		String pw = getInitParameter("pw");
		String path = getInitParameter("path");
		
		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter writer = response.getWriter();
		writer.println("<html><head></head><body>");
		writer.println("아이디: " + id + "<br>");
		writer.println("비밀번호: " + pw + "<br>");
		writer.println("경로: " + path + "<br>");
		writer.println("</html>");
		
		writer.close();
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
