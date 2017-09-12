<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<nav class="navbar fixed-top navbar-toggleable-md navbar-inverse bg-inverse">
	<button class="navbar-toggler navbar-toggler-right" type="button"
		data-toggle="collapse" data-target="#navbarExample"
		aria-controls="navbarExample" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	<div class="container">
		<a class="navbar-brand" href="index.jsp"><b>신명정밀</b></a>
		<div class="collapse navbar-collapse" id="navbarExample">
			<ul class="navbar-nav ml-auto">
			
<%
String servletPath=request.getServletPath();
String isActive = servletPath.substring(servletPath.lastIndexOf("/")+1, servletPath.length());

String indexActive = "";
String sectionActive = "";
String portfolioActive = "";
String landingActive = "";

if(isActive.equals("index.jsp")){
	indexActive = "active";
}else if(isActive.equals("sectionHeding.jsp")){
	sectionActive = "active";
}else if(isActive.equals("portfolio.jsp")){
	portfolioActive = "active";
}else if(isActive.equals("LandingPage.jsp")){
	landingActive = "active";
}
%>		
			
				<li class="nav-item <%=indexActive%>"><a class="nav-link" href="index.jsp">Home</a></li>
				<li class="nav-item <%=sectionActive%>"><a class="nav-link" href="sectionHeding.jsp">About</a></li>
				<li class="nav-item <%=portfolioActive%>"><a class="nav-link" href="portfolio.jsp">Product</a></li>
				<li class="nav-item <%=landingActive%>"><a class="nav-link" href="LandingPage.jsp">Certifications</a></li>
			</ul>
		</div>
	</div>
</nav>