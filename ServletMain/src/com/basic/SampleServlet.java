package com.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
SampleServlet ���� �ۼ�
doGet()�޼ҵ尡 �Ǹ� 
"�ι�° �ۼ��� Servlet�Դϴ�."

���� ����

���ؽ�Ʈ �н�(Context Path)
WAS���� �����ø����̼��� �����ϱ� ���� path
��Ŭ�������� ������Ʈ�� �����ϸ� �ڵ����� ��������ϴ�.
server.xml �߰�

*/
@SuppressWarnings("serial")
public class SampleServlet extends HttpServlet {
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
		response.setContentType("text/html;charset=EUC-KR");
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("<head><title>Hello Servlet</title></head>");
		out.println("<body>");
		out.println("�ι�° �ۼ��ϴ� Servlet�Դϴ�.");
		out.println("</body>");
		out.close();
	}

}
