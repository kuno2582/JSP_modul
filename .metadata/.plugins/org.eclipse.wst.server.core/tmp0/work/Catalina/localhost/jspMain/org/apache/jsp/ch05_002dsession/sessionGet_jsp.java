/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.72
 * Generated at: 2017-01-12 00:44:08 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.ch05_002dsession;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.Enumeration;

public final class sessionGet_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
        throws java.io.IOException, javax.servlet.ServletException {

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=EUC-KR");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=EUC-KR\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");

	Object obj1 = session.getAttribute("mySessionName");
	String mySessionName = (String)obj1;
	out.println( mySessionName + "<br>");
	
	Object obj2 = session.getAttribute("myNumber");
	Integer myNumber = (Integer)obj2;
	out.println( myNumber + "<br>");
	
	Object obj3 = session.getAttribute("myNickName");
	String myNickName = (String)obj3;
	out.println( myNickName + "<br>");
	
	String strName;
	String strValue;
	Enumeration<String> enumeration = session.getAttributeNames();
	
	//enumeration객체가 가지고 있는 메서드 이용하여 반복
	while(enumeration.hasMoreElements()){
		strName = enumeration.nextElement().toString();
		strValue = session.getAttribute(strName).toString();
		out.println("strName: " + strName + "<br>");
		out.println("strValue: " + strValue + "<br>");
	}
	
	String sessionID = session.getId();
	out.println("sessionID: " + sessionID + "<br>");
	
	//세션 기본 유효시간 출력
	int sessionInterval = session.getMaxInactiveInterval();
	out.println("sessionInterval: " + sessionInterval + "<br>");
	
	//세션정보삭제
	session.removeAttribute("mySessionName");
	Enumeration<String> enumeration1 = session.getAttributeNames();
	while(enumeration1.hasMoreElements()){
		strName = enumeration1.nextElement().toString();
		strValue = session.getAttribute(strName).toString();
		out.println("strName: " + strName + "<br>");
		out.println("strValue: " + strValue + "<br>");
	}
	
	//세션의 모든 데이터 삭제
	session.invalidate();
	out.println("세션삭제---------------\n");
	while(enumeration1.hasMoreElements()){
		strName = enumeration1.nextElement().toString();
		strValue = session.getAttribute(strName).toString();
		out.println("strName: " + strName + "<br>");
		out.println("strValue: " + strValue + "<br>");
	}
	//클라이언트에 포함된 요청아이디가 유효한지 아닌지 판단하는 메서드
	if(request.isRequestedSessionIdValid()){
		out.println("session valid" + "<br>");
	}else{
		out.println("session invalid" + "<br>");
	}

      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
