package com.tistory.kunoo;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorld
 */

/*
���� ���� ���
 - @WebServlet������̼� �̶�� ������̼��� �̿��ؼ� ������ ���� (Step 1)
 - web.xml ���Ͽ� ������ ���� (Step 2)	(�켱����)
*/
//HttpServlet -> GenericServlet(abstract) -> Servlet

@WebServlet("/HelloWorld")
public class HelloWorld extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloWorld() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    //GET������� ��û�� ���۵� �� ó��
    //HttpServletRequest request : ��û�� ó���ϴ� ��ü
    //								Ŭ���̾�Ʈ���� ���� ������ �����ϰų� ó��
    //HttpServletResponse response : ������ ó���ϴ� ��ü, ���� ����� ó��
    /*
    			request
    Client	------------------>	Server(WAS)
    			response
    
    */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
		//doGet ��� - GET���
		// - URL������ ������ ���۵Ǵ� ���
		//?id=codedragon&password=1234
		//html�� form�±� method�Ӽ��� get�� �� ȣ��Ǵ� �޼ҵ�
		
		/*System.out.println("Hello World~~~!!!");*/
		
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h2>Hello World!!!</h2>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
    //POST������� ��û�� ���۵� �� ȣ��Ǵ� �޼ҵ�
	/*html�� form�±� method�Ӽ��� post�� �� ȣ��Ǵ� �޼ҵ�
	
	
	*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
