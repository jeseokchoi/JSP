<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="header.jsp" %>


<style>
	 * {
        margin: 0px;
        padding: 0px;
        text-decoration: none;
        font-family:sans-serif;

        }

        body {
        background-image:#34495e;
        }

        .joinForm {
        position:absolute;
        width:400px;
        height:580px;
        padding: 30px, 20px;
        background-color:#141414;
        text-align:center;
        top:40%;
        left:50%;
        transform: translate(-50%,-50%);
        border-radius: 15px;
        }
        
        p {
        	margin-top: 620px;
        	margin-left: 170px;
        }
        
        td {
        	border: 1px solid white;
        }

        .btn {
        position:relative;
        left:40%;
        transform: translateX(-50%);
        margin-bottom: 40px;
        width:10%;
        height:40px;
        background: #fb0;
        background-position: left;
        background-size: 200%;
        color:black;
        font-weight: bold;
        border:none;
        cursor:pointer;
        transition: 0.4s;
        display:inline;
        }

        .btn:hover {
        background-position: right;
        }
        
	
</style>


<table cellpadding="10" cellspacing="0" class="joinForm">
	<tr>
		<td>아이디</td>
		<td>${login.memberId }</td>
	</tr>
	<tr>
		<td>비밀번호</td>
		<td>${login.memberPw }</td>
	</tr>
	<tr>
		<td>이름</td>
		<td>${login.memberName }</td>
	</tr>
	<tr>
		<td>생년월일</td>
		<td>${login.birthDate }</td>
	</tr>
	<tr>
		<td>이메일</td>
		<td>${login.email }</td>
	</tr>
</table>

<p>
	<a href="${cpath }/mpModify.jsp"><button class="btn">정보 수정</button></a>
	<a href="${cpath }/mpDelete.jsp"><button class="btn">회원 탈퇴</button></a>
</p>

</body>
</html>