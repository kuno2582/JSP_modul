package com.basic;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*

GET방식
 - 전달되는 파라미터가 URL경로상에 보여집니다.
 - html의 form태그에서 method속성을 get으로 지정할 경우 호출
 - 요청URL 라인뒤의 ?와 함께 사용하여 데이터를 전송합니다.
 - URL에 값이 전송되기 때문에 보안에 취약
 - 검색어 전달, 게시판의 페이지번호 등
 - 256byte

*/

@SuppressWarnings("serial")
public class Hello_get extends HttpServlet {

	//전송된 정보는 request에 있다.
	public void doGet(HttpServletRequest request, HttpServletResponse response){
		
		try {
			response.setContentType("text/html; charset=EUC-KR"); 
			
			request.setCharacterEncoding("EUC-KR"); //리퀘스트의 인코딩타입을 바꿔준다.
			
			PrintWriter out = response.getWriter();
			
			String name = request.getParameter("name");
			out.println("<html>");
			out.println("<head><title>get방식으로 전송된 데이터 처리</title></head>");
			out.println("<body>");
			out.println(name + "님의 방문을 환영합니다.");
			out.println("</body>");
			out.println("</html>");
			
			out.close();
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}

}
