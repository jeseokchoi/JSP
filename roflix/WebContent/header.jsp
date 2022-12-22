<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="member.*" import="movie.*" import="note.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<c:set var="dao" value="${MemberDAO.getInstance() }"/>
<c:set var="dao2" value="${NoteDAO.getInstance() }"/>
<c:set var="dao3" value="${MovieDAO.getInstance() }" />
<%
	request.setCharacterEncoding("UTF-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ROFLIX</title>

<link type="text/css" rel="stylesheet" href="${cpath }/css/header.css">

<style>
	body {
  background-color: #141414;
}
</style>

</head>
<body>
	         <nav>
            <div class="left">
                <div class="logo">
                    <a href="index.jsp">ROFLIX</a>
                </div>
                <ul class="menu-list">
                    <li style="margin-left: 2em;">
                        <a href="contents.jsp">영화</a>
                    </li>
                    <li>
                        <a href="contents.jsp">NEW! 요즘 대세 콘텐츠</a>
                    </li>
                    <li>
                        <a href="note.jsp">후기작성</a>
                    </li>
                </ul>
            </div>
            <div class="right">
                <div class="icon log">
                    <a href="${login != null ? 'logout.jsp' : 'login.jsp' }">
                    ${login != null ? '로그아웃' : '로그인' }</a>
                </div>
                <div class="icon log">
                    <a href="${login != null ? 'myPage.jsp' : 'join.jsp' }">
        			${login != null ? '마이페이지' : '회원가입' }</a>
                </div>
            </div>
        </nav>
		
		    		       
        
    
        
    </div>
</div>
    
