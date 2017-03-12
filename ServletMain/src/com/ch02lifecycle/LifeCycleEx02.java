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
		System.out.println("init()�� ȣ��Ǿ����ϴ�. " + (++initCnt));
	}
	
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response){
		System.out.println("service()�� ȣ��Ǿ����ϴ�. " + (++serviceCnt));
		
		try {
			response.setContentType("text/html; charset=EUC-KR");
			request.setCharacterEncoding("EUC-KR");
			
			PrintWriter out = response.getWriter();
			out.println("<html>");
			out.println("<head><title>����������Ŭ</title></head>");
			out.println("<body>");
			out.println("���� initȣ���: " + initCnt + "<br>");
			out.println("���� serviceȣ���: " + serviceCnt + "<br>");
			
			Thread th = Thread.currentThread();
			out.println("���� Thread �̸�: " + th.getName() + "<br>");
			
			out.println("���� destroyȣ���: " + destroyCnt + "<br>");
			out.println("</body>");
			out.println("</html>");
			
			out.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}
	
	@Override
	public void destroy(){
		System.out.println("destroy()�� ȣ��Ǿ����ϴ�. " + (++destroyCnt));
	}

}
