<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>
<style>
	button {
 			 margin: 0;
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
<section style="width: 800px; margin: auto">
	<table border="1" cellpadding="10" cellspacing="0" border-collapse="collapse" width="800px" 
	style="margin:auto; text-align: center; color:white; margin-top:100px">
		<thead>
			<tr>
				<th width="100px">글번호</th>
				<th width="400px">제목</th>
				<th width="100px">작성자</th>
				<th width="100px">등록일</th>
				<th width="100px">조회수</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="map" items="${dao2.selectNotice() }" varStatus="status"> 
				<tr onclick="location.href='note-detail.jsp?idx=${map.get('idx') }'" class="items">
					<td>${map.get('idx') }</td>
					<td>${map.get('noteTitle') }</td>
					<td>${map.get('memberId') }</td>
					<td>${map.get('today') }</td>
					<td>${map.get('views') }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="${cpath }/note-form.jsp"><button style="margin: 20px; margin-left: 645px">후기 작성하기</button></a>
</section>