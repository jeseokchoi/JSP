<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="row" value="${dao2.delete(param.idx) }" />

<c:if test="${row != 0 }">
	<h3>삭제 성공</h3>
	<c:redirect url="/note.jsp" />
</c:if>

<c:if test="${row == 0 }">
	<h3>삭제 실패</h3>
</c:if>

</body>
</html>l>