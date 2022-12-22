<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<style>
	section .content-list {
	  margin-bottom: 3rem;
	  position: relative;
	}
	section .content-list h1 {
	  margin-left: 2rem;
	  margin-bottom: 1rem;
	  margin-top: 0.5rem;
	}
	section .content-list .item {
	  min-width: 250px;
	  height: 150px;
	  background: #262626;
	  background: linear-gradient(#333333 54%);
	  border-radius: 5px;
	}
	section .content-list .item img {
	  width: 100%;
	  height: 100%;
	  object-fit: cover;
	  }
	footer {
	  width: 100%;
	  margin-bottom: 2em;
	}
	footer .wrap {	  
	  width: 80%;
	  margin: 10px 10px;
	  display: flex;
	  flex-direction: column;
	  row-gap: 2em;
	}
	footer .wrap .options {	  
	  grid-template-columns: repeat(4, 1fr);
	  grid-gap: 1em;
	  color: #6f6f6f;	  
	}
</style>


<c:set var="dao" value="${MovieDAO.getInstance() }"/>

<div id="main">
	<c:forEach var="movie1" items="${dao3.selectList(1) }" >
	<div class="Movie">
		<div class="img">
			<iframe width="1900px" height="700px" src="https://www.youtube.com/embed/kihrFxwdMb4" title="[아바타: 물의 길] 메인 예고편" frameborder="0" 
			allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
	</div>
	</c:forEach>
</div>



<section>
		<h1>최신등록 콘텐츠</h1>
	<div id="content-list" style="display:flex;">
		<c:forEach var="movie2" items="${dao3.selectList(2) }" >
		<div class="item2">
			<div class="img" style="margin: 10px;">
				<a href="movie2-detail.jsp?idx=${movie2.idx }" title="상세보기">
				<img src="img/main2_${movie2.idx }.jpg" height="200px" width="200px">
				</a>
			</div>
		</div>
		</c:forEach>
	</div>
	
	
		<h1>오늘의 TOP10</h1>
	<div id="content-list" style="display:flex;">
		<c:forEach var="movie3" items="${dao3.selectList(3) }" >
		<div class="item3">
			<div class="img" style="margin: 10px;">
				<a href="movie3-detail.jsp?idx=${movie3.idx }" title="상세보기">
				<img src="img/main3_${movie3.idx }.jpg" height="200" width="200">
				</a>
			</div>
		</div>
		</c:forEach>
	</div>
</section>
<footer>
    <div class="wrap">
		<div class="options">
			<span>제작자 : 최제석, 한재용</span><br>
			<span>이메일 : dodoro914@gmail.com</span><br>
			<span>Copyright 2022. ITBANK. All Rights Reserved.</span>
		</div>
	</div>
</footer>
</body>
</html>
