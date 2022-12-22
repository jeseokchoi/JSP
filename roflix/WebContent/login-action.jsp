<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  %>
<%@ include file="header.jsp" %>


<jsp:useBean id="user" class="member.MemberDTO" />
<jsp:setProperty property="*" name="user"/>


<c:if test="${dao.login(user) != null}">
	<c:if test="${param.autologin != null }">
	<% 
	Cookie cookie = new Cookie("userid", user.getMemberId());
	cookie.setMaxAge(60);
	response.addCookie(cookie);	
	%>
	</c:if>
	<c:set var="login" value="${dao.login(user) }" scope="session" />
	<c:redirect url="index.jsp" />
</c:if>

<c:if test="${dao.login(user) == null}">
	<c:redirect url="login.jsp" />
</c:if>

</body>
</html>