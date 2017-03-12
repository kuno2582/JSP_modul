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
서블링 매핑 방법
 - @WebServlet어노테이션 이라는 어노테이션을 이용해서 서블릿을 맵핑 (Step 1)
 - web.xml 파일에 서블릿을 맵핑 (Step 2)	(우선적용)
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
    //GET방식으로 요청이 전송될 때 처리
    //HttpServletRequest request : 요청을 처리하는 객체
    //								클라이언트에서 오는 정보를 저장하거나 처리
    //HttpServletResponse response : 응답을 처리하는 객체, 응답 결과를 처리
    /*
    			request
    Client	------------------>	Server(WAS)
    			response
    
    */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*response.getWriter().append("Served at: ").append(request.getContextPath());*/
		//doGet 방식 - GET방식
		// - URL값으로 정보가 전송되는 방식
		//?id=codedragon&password=1234
		//html내 form태그 method속성이 get일 때 호출되는 메소드
		
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
    //POST방식으로 요청이 전송될 때 호출되는 메소드
	/*html내 form태그 method속성이 post일 때 호출되는 메소드
	
	
	*/
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
