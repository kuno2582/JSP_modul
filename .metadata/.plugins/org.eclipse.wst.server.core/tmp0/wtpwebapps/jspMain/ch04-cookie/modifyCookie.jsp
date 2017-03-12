<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	Cookie[] cookies = request.getCookies();
	
	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().equals("cookieName")){
				Cookie cookie = new Cookie("cookieName", "cookie_modified");
				
				cookie.setMaxAge(30*60);
				
				response.addCookie(cookie);
			}else if(cookies[i].getName().equals("iscookieName")){
				Cookie cookie = new Cookie("iscookieName","cookie_modified");
				
				cookie.setMaxAge(30*60);
				response.addCookie(cookie);
						
			}
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

</head>
<body>
쿠키값이 변경되었습니다.
</body>
</html>