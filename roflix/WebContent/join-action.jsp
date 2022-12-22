<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="header.jsp" %>

 <jsp:useBean id="user" class="member.MemberDTO" />
 <jsp:setProperty name="user" property="*" />
 

 <c:set var="row" value="${dao.join(user) }"/>
 
 <c:if test="${row != 0 }">
 	<c:redirect url="index.jsp" />
</c:if>

<c:if test="${row == 0 }">
	<c:redirect url="join.jsp" />
</c:if>
</body>
</html>