<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%@ include file="header.jsp" %>

<style>
	button {
 			 margin: 20px 0;
			 padding: 0.5rem 1rem;

 			 font-family: "Noto Sans KR", sans-serif;
  			 font-size: 1rem;
  			 font-weight: 400;
 			 text-align: center;
 			 text-decoration: none;
 			 color: black;

  			 display: inline-block;
 			 width: 150px;

			 border: none;
 			 border-radius: 4px;
 			 
  			 cursor: pointer;
  			 background-color: white;
	}
		
	button:hover {
			background-color: #141414;
			color: white;
	}
		
	tbody > tr:hover {
		cursor: pointer;
		background-color: black;
	}
</style>

<c:set var="movie3" value="${dao3.selectOne3(param.idx) }"/>
<h2>${movie3.mvTitle} 상세정보</h2>
<hr>

<section style="display: flex">
	<aside class="left">
	<div class="img" style="display: flex; flex-direction: row;">
		<img src="img/main3_${movie3.idx }.jpg" width="400" height="400">
	</div>
	</aside>
	<div style="display: inline-block;">
		<div class="mvTitle">제목 : ${movie3.mvTitle }</div>
		<div class="director">감독 : ${movie3.director }</div>
		<div class="actors">배우 : ${movie3.actors }</div>
		<div class="openDate">개봉일 : ${movie3.openDate }</div>
		<div class="story">줄거리 : ${movie3.story }</div>
		<a href="${cpath }/note-form.jsp"><button>후기 작성하기</button></a>
	</div>
</section>
</body>
</html>