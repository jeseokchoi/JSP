<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<jsp:useBean id="user" class="note.NoteDTO" />
<jsp:setProperty name="user" property="*" />
 

<c:set var="row" value="${dao2.add(user) }"/>
<c:redirect url="note.jsp"/>
 

</body>
</html>