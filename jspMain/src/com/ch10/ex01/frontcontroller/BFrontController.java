package com.ch10.ex01.frontcontroller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ch10.ex01.command.BCommand;
import com.ch10.ex01.command.BContentCommand;
import com.ch10.ex01.command.BDeleteCommand;
import com.ch10.ex01.command.BListCommand;
import com.ch10.ex01.command.BModifyCommand;
import com.ch10.ex01.command.BReplyCommand;
import com.ch10.ex01.command.BReplyViewCommand;
import com.ch10.ex01.command.BWriteCommand;


//@WebServlet("/BFrontController")
@WebServlet("*.do")	//.do�� ������ Ȯ���ڴ� ��� �� ��Ʈ�ѷ� ������ ��ģ��.
public class BFrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BFrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		System.out.println("doGet");
		actionDo(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
		System.out.println("doPost");
		actionDo(request,response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		
		System.out.println("actionDo");
		
		request.setCharacterEncoding("EUC-KR");
		
		//��û�� ���� ���� ������ �޶���
		String viewPage = null;
		BCommand command = null;
		
		String uri = request.getRequestURI();	//��û�� ���� ������
		System.out.println("URI: " + uri);
		
		String contextPath = request.getContextPath();
		System.out.println("contextPath: " + contextPath);
		
		String[] arrURI = uri.split("/");		//������ ��ûURI�� ������ ��Ҹ� �߶����
		String comm = arrURI[arrURI.length-1];
		
		System.out.println("arrURI: " + arrURI.length);
		
		for(int i=0; i<arrURI.length; i++ ){
			System.out.format("arrURI[%d] = %s\n", i, arrURI[i]);
		}
		
		System.out.println("command: " + comm);
		
		
		if(comm.equals("list.do")){
			command = new BListCommand();
			command.execute(request,response);
			viewPage = "list.jsp";
		}else if(comm.equals("write_view.do")){
			viewPage = "write_view.jsp";
		}else if(comm.equals("write.do")){
			command = new BWriteCommand();
			command.execute(request, response);
			viewPage = "list.do";
		}else if(comm.equals("content_view.do")){
			command = new BContentCommand();
			command.execute(request, response);
			viewPage = "content_view.jsp";
		}else if(comm.equals("modify.do")){
			command = new BModifyCommand();
			command.execute(request, response);
			viewPage = "list.do";
		}else if(comm.equals("delete.do")){
			command = new BDeleteCommand();
			command.execute(request, response);
			viewPage = "list.do";
		}else if(comm.equals("reply_view.do")){
			command = new BReplyViewCommand();
			command.execute(request, response);
			viewPage = "reply_view.jsp";
		}else if(comm.equals("reply.do")){
			command = new BReplyCommand();
			command.execute(request, response);
			viewPage = "list.do";
		}
		
		
		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
		
	}

}
