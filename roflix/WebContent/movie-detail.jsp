<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<c:set var="movie1" value="${dao3.selectOne(param.idx) }"/>
<h2>${movie1.mvTitle} 상세정보</h2>
<hr>

<section style="display: flex">
	<aside class="left">
	<div class="img" style="display: flex; flex-direction: row;">
		<img src="img/main${movie1.idx }.jpg" width="400" height="400">
	</div>
	</aside>
	<div style="display: inline-block;">
		<div class="mvTitle">제목 : ${movie1.mvTitle }</div>
		<div class="director">감독 : ${movie1.director }</div>
		<div class="actors">배우 : ${movie1.actors }</div>
		<div class="openDate">개봉일 : ${movie1.openDate }</div>
		<div class="story">줄거리 : ${movie1.story }</div>
		<a href="${cpath }/note-form.jsp"><button>후기 작성하기</button></a>
	</div>
</section>
</body>
</html>