<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="header.jsp" %>

<%
	session.invalidate();
	
	Cookie cookie = new Cookie("autologin", session.getId());
	cookie.setMaxAge(0);
	response.addCookie(cookie);
	response.sendRedirect("login.jsp");
%>

</body>
</html>