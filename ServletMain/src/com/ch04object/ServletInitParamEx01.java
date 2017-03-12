package com.ch04object;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/*
ServletConfig (���� �ʱ�ȭ �Ķ����)
 - Ư�� ������ ������ �� �ʱ⿡ �ʿ��� �����͵��� �ֽ��ϴ�.
 - �̷� �����͸� �ʱ�ȭ �Ķ���Ͷ�� �մϴ�.
 - web.xml�� ����ϰ� Servlet���Ͽ��� ����մϴ�.
 
 web.xml ������ ���� �ʱ�ȭ ������� ���� �ܰ�
 1	ServletŬ���� �ۼ�
 2	web.sml �ʱ�ȭ �Ķ���� ����
 3	���� ���Ͽ��� ȣ���ؼ� ����Ѵ�.

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
		writer.println("���̵�: " + id + "<br>");
		writer.println("��й�ȣ: " + pw + "<br>");
		writer.println("�⺻���: " + path + "<br>");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	}

}
