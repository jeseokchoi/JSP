<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*" %>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%--
	idx         number          default Member_seq.nextval primary key,
    memberName  varchar(100)    not null,
    MemberId    varchar(100)    not null,
    MemberPw    varchar(50)     not null,
    birthDate   date            ,
    email       varchar(50)     ,
    joinDate    date            
 --%>

<c:set var="dao" value="${MemberDAO.getInstance() }"/>

<table>
	<thead>
		<tr>
			<th>idx</th>
			<th>memberName</th>
			<th>memberId</th>
			<th>memberPw</th>
			<th>birthDate</th>
			<th>email</th>
			<th>joinDate</th>
		</tr>
	</thead>
	<tbody>
		
		<c:forEach var="dto" items="${dao.selectList() }">
		<tr>
			<td>${dto.idx }</td>
			<td>${dto.memberName }</td>
			<td>${dto.memberId }</td>
			<td>${dto.memberPw }</td>
			<td>${dto.birthDate }</td>
			<td>${dto.email }</td>
			<td>${dto.joinDate }</td>
		</tr>
		</c:forEach>
	</tbody>
</table>

</body>
</html>