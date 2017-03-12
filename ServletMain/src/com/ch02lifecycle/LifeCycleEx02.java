package com.ch02lifecycle;

import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/LifeCycleEx02")
public class LifeCycleEx02 extends HttpServlet {
	
	int initCnt = 0;
	int serviceCnt = 0;
	int destroyCnt = 0;
	
	@Override
	public void init(){
		System.out.println("init()가 호출되었습니다. " + (++initCnt));
	}
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response){
		System.out.println("service()가 호출되었습니다. " + (++serviceCnt));
		
		try {
			response.setContentType("text/html; charset=EUC-KR");
			request.setCharacterEncoding("EUC-KR");
			
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head><title>라이프사이클</title></head>");
			out.println("<body>");
			out.println("서블릿 init호출수: " + initCnt + "<br>");
			out.println("서블릿 service호출수: " + serviceCnt + "<br>");
			
			Thread th = Thread.currentThread();
			out.println("현재 Thread 이름: " + th.getName() + "<br>");
			
			out.println("서블릿 destroy호출수: " + destroyCnt + "<br>");
			out.println("</body>");
			out.println("</html>");
			
			out.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	public void destroy(){
		System.out.println("destroy()가 호출되었습니다. " + (++destroyCnt));
	}

}
