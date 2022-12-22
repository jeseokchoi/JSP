<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<%--<form method="POST" action="note-action.jsp">
	<p><input type="text" name="noteTitle" placeholder="noteTitle"></p>
	<p><input type="text" name="review" placeholder="review"></p>
	<p><input type="submit" value="작성완료"></p>
</form>--%>
 
<section>
	<form method="POST" action="note-action.jsp">
		<input type="hidden" name="member_idx" value="${login.idx }">
		<p><input type="text" name="noteTitle" placeholder="제목 입력" 
		size="78" style="color: black; height: 30px; margin-top: 200px; margin-left: auto; margin-right: auto; display: block" required></p>
		<p><textarea name="review" placeholder="리뷰 입력" rows="5px" cols="80px" 
		style="margin: 50px auto; display: block; color: black"></textarea></p>
		<p><input type="submit" value="작성 완료" 
		style="color: black; width: 150px; height:40px; margin:10px auto; display: block"></p>
	</form>

</section>



</body>
</html>