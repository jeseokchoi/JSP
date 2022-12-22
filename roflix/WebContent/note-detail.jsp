<%@ page language="java" contentType="text/html; charset=UTF-8" 
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>

<style>
	button {
			 padding: 0.5rem 1rem;

 			 font-family: "Noto Sans KR", sans-serif;
  			 font-size: 1rem;
  			 font-weight: 400;
 			 text-align: center;
 			 text-decoration: none;
 			 color: black;

  			 display: inline-block;
 			 width: 100px;

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
	
	p {
		padding: 15px;
	}
	
</style>

<section style="color: white; width: 800px; margin: auto">
	${dao2.viewsCount(param.idx) }
	<c:set var="map" value="${dao2.selectOne(param.idx) }"/>
		<p>제목 : ${map.get('noteTitle') }</p>
	<hr>
		<p>작성자 : ${map.get('memberId') }</p>
	<hr>
		<p>작성일 : ${map.get('today') }</p>
	<hr>
		<p>후기 : ${map.get('review') }</p>
	<hr>
		<a href="${cpath }/note.jsp"><button style="margin: 10px">목록으로</button></a>
		<c:if test="${map.get('memberId') == login.memberId }">
			<a href="note-modify.jsp?idx=${param.idx }"><button style="margin: 10px; margin-left: 435px">수정하기</button></a>
			<button class="deleteBtn" idx="${param.idx }" style="margin: 10px">삭제</button>
		</c:if>
</section>

<script>
	function deleteHandler() {
		const idx = this.getAttribute('idx')
		const flag = confirm('정말 삭제하시겠습니까?')
		
		if(flag) {
			location.href = '${cpath}/note-delete.jsp?idx=' + idx
		}
	}
	
	const btnList = document.querySelectorAll('.deleteBtn')
	
	btnList.forEach(btn => btn.addEventListener('click', deleteHandler))
</script>

</body>
</html>