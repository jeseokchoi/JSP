<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="user" class="member.MemberDTO"/>
<jsp:setProperty name="user" property="*"/>

<c:set var="flag" value="${dao.modify(user) }" />

<c:if test="${flag }" >
	<c:set var="login" value="${dao.login(user) }" scope="session" />
	<c:redirect url="index.jsp" />
</c:if>

<c:if test="${flag == false }" >
	<h3>수정 실패</h3>
	<a href="index.jsp"><button>홈으로</button></a>
</c:if>
</body>
</html>