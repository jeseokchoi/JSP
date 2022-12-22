<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="map" value="${dao2.selectOne(param.idx) }" />

<%-- <form method="POST" action="note-modify-action.jsp">
	<input type="hidden" name="idx" value="${dto.idx }">
	<p><input type="text" name="noteTitle" placeholder="noteTitle" value="${dto.noteTitle }"></p>
	<p><input type="text" name="review" placeholder="review" value="${dto.review }"></p>
	<p><input type="submit" value="수정완료"></p>
</form>--%>

<section>
	<form method="POST" action="note-modify-action.jsp">
		<input type="hidden" name="idx" value="${param.idx }">
		<p><input type="text" name="noteTitle" value="${map.noteTitle }" size="78" 
		style="color: black; height: 30px; margin-top: 200px; margin-left: auto; margin-right: auto; display: block" required></p>
		<p><textarea name="review" rows="5px" cols="80px" 
		style="margin: 50px auto; display: block; color: black">${map.review }</textarea></p>
		<p><input type="submit" value="완료" style="color: black; width: 150px; height:40px; margin:10px auto; display: block"></p>
	</form>
</section>
</body>
</html>