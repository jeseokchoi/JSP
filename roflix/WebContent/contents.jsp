<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="header.jsp" %>

<style>

div#main3 {
      width: 2000px;
      display: flex;
      flex-flow: wrap;
   }

</style>

<h1>해외 콘텐츠</h1>
	<div id="main2" style="display: flex;">
		<c:forEach var="movie2" items="${dao3.selectList(2) }" >
		<div class="Movie" style="display: flex;">
			<div class="img" style="margin: 10px;">
				<a href="movie2-detail.jsp?idx=${movie2.idx }" title="상세보기">
				<img src="img/main2_${movie2.idx }.jpg" width="250" height="250">
				</a>
			</div>
		</div>
		</c:forEach>
	</div>
<h1>국내 콘텐츠</h1>
	<div id="main3" style="display: flex;">
		<c:forEach var="movie3" items="${dao3.selectList(3) }" >
		<div class="Movie" style="display: flex;">
			<div class="img" style="margin: 10px;">
				<a href="movie3-detail.jsp?idx=${movie3.idx }" title="상세보기">
				<img src="img/main3_${movie3.idx }.jpg" width="250" height="250">
				</a>
			</div>
		</div>
		</c:forEach>
	</div>

</body>
</html>