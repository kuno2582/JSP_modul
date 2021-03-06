/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/7.0.72
 * Generated at: 2017-01-09 03:38:56 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.ch08_002djavabeans;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class beanEx01_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!-- \r\n");
      out.write("자바빈 사용\r\n");
      out.write("----------------------------------------------------------------\r\n");
      out.write("jsp:useBean 액션 태그\r\n");
      out.write("\t->특정 Bean을 사용한다고 명시할 때 사용\r\n");
      out.write("\tJSP에서 자바빈 객체를 생성\r\n");
      out.write("\r\n");
      out.write("jsp:useBean id=\"자바빈이름\" class=\"자바클래스이름\" scope=\"범위\"\r\n");
      out.write("\r\n");
      out.write("id: jsp페이지에서 자바빈 객체에 접근할 때 사용할 이름\r\n");
      out.write("class: 패키지이름을 포함한 클래스의 완전한 이름을 지정\r\n");
      out.write("scope: 자바빈 객체가 저장될 영역을 지정\r\n");
      out.write("\tpage\t\t기본값, 생성한 페이지 내에서만 사용 가능\r\n");
      out.write("\trequest\t\t요청된 페이지 내에서만 사용 가능\r\n");
      out.write("\tsession\t\t웹브라우저의 생명주기와 동일하게 사용 가능\r\n");
      out.write("\tapplication\t웹어플리케이션 생명주기와 동일하게 사용 가능\r\n");
      out.write("\t\r\n");
      out.write("----------------------------------------------------------------\r\n");
      out.write("\r\n");
      out.write("jsp:getProperty 액션 태그\r\n");
      out.write("\t->프로퍼티의 값(데이터값)을 출력하거나 가져올 때 사용\r\n");
      out.write("\r\n");
      out.write("jsp:getProperty name=\"자바빈이름\" property=\"속성이름\"\r\n");
      out.write("\r\n");
      out.write("name:\t\tjsp:useBean 액션 태그의 id속성으로 지정한 자바빈 객체의 이름\r\n");
      out.write("property:\t출력할 프로퍼티 명\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("----------------------------------------------------------------\r\n");
      out.write("\r\n");
      out.write("jsp:setProperty 액션 태그\r\n");
      out.write("\t->자바빈 객체의 프로퍼티 값을 설정할 때 사용\r\n");
      out.write("\t\r\n");
      out.write("jsp:setProperty name=\"자바빈이름\" property=\"속성이름\" value=\"속성값\"\r\n");
      out.write("\r\n");
      out.write(" -->\r\n");
      out.write("\r\n");
      com.ch0801.Student student = null;
      student = (com.ch0801.Student) _jspx_page_context.getAttribute("student", javax.servlet.jsp.PageContext.PAGE_SCOPE);
      if (student == null){
        student = new com.ch0801.Student();
        _jspx_page_context.setAttribute("student", student, javax.servlet.jsp.PageContext.PAGE_SCOPE);
      }
      out.write("\r\n");
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=EUC-KR\">\r\n");
      out.write("<title>Insert title here</title>\r\n");
      out.write("</head>\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\t");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("student"), "name", "김윤호", null, null, false);
      out.write('\r');
      out.write('\n');
      out.write('	');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("student"), "age", "27", null, null, false);
      out.write('\r');
      out.write('\n');
      out.write('	');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("student"), "grade", "4", null, null, false);
      out.write('\r');
      out.write('\n');
      out.write('	');
      org.apache.jasper.runtime.JspRuntimeLibrary.introspecthelper(_jspx_page_context.findAttribute("student"), "studentNumber", "2010312009", null, null, false);
      out.write("\r\n");
      out.write("\t\r\n");
      out.write("\t이름: ");
      out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((com.ch0801.Student)_jspx_page_context.findAttribute("student")).getName())));
      out.write("<br>\r\n");
      out.write("\t나이: ");
      out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((com.ch0801.Student)_jspx_page_context.findAttribute("student")).getAge())));
      out.write("<br>\r\n");
      out.write("\t학년: ");
      out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((com.ch0801.Student)_jspx_page_context.findAttribute("student")).getGrade())));
      out.write("<br>\r\n");
      out.write("\t학번: ");
      out.write(org.apache.jasper.runtime.JspRuntimeLibrary.toString((((com.ch0801.Student)_jspx_page_context.findAttribute("student")).getStudentNumber())));
      out.write("<br>\r\n");
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
