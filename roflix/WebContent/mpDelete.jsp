<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="delete" value="${dao.delete(login.idx) }" />

<c:if test="${delete != 0 }">
<h1>삭제 성공</h1>
<h3><a href="index.jsp"><button>홈으로</button></a> </h3>
<c:remove var="login"/>
</c:if>

<c:if test="${delete == 0 }">
<h1>삭제 실패</h1>
<h3><a href="index.jsp"><botton>홈으로</botton></a></h3>
</c:if>

</body>
</html>