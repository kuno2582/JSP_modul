package com.ch04object;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
ServletConfig (서블릿 초기화 파라미터)
 - 특정 서블릿이 생성될 때 초기에 필요한 데이터들이 있습니다.
 - 이런 데이터를 초기화 파라미터라고 합니다.
 - web.xml에 기술하고 Servlet파일에서 사용합니다.
 
 web.xml 파일을 통한 초기화 마라미터 설정 단계
 1	Servlet클래스 작성
 2	web.sml 초기화 파라미터 설정
 3	서블릿 파일에서 호출해서 사용한다.

*/
@WebServlet("/ServletInitParamEx01")
public class ServletInitParamEx01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ServletInitParamEx01() {

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
		writer.println("기본경로: " + path + "<br>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
