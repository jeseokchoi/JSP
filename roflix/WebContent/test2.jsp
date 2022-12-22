<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "movie.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<c:set var="dao" value="${MovieDAO.getInstance() }" />

<table>
	<thead>
		<tr>
			<th>idx</th>
			<th>mvTitle</th>
			<th>director</th>
			<th>actors</th>
			<th>openDate</th>
			<th>story</th>
		</tr>
	</thead>
	<tbody>
		
		<c:forEach var="dto" items="${dao.selectList() }">
		<tr>
			<td>${dto.idx }</td>
			<td>${dto.mvTitle }</td>
			<td>${dto.director }</td>
			<td>${dto.actors }</td>
			<td>${dto.openDate }</td>
			<td>${dto.story }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>