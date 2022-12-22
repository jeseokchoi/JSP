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

        .joinForm h2 {
        text-align: center;
        color: black;
        margin: 30px;
        }

        .textForm {
        border-bottom: 2px solid #adadad;
        margin: 30px;
        padding: 10px 10px;
        }


        .id {
        width: 100%;
        border:none;
        outline:none;
        color: #636e72;
        font-size:16px;
        height:25px;
        background: none;
        }

        .pw {
        width: 100%;
        border:none;
        outline:none;
        color: #636e72;
        font-size:16px;
        height:25px;
        background: none;
        }

        .name {
        width: 100%;
        border:none;
        outline:none;
        color: #636e72;
        font-size:16px;
        height:25px;
        background: none;
        }
        .birthDate{
        width: 100%;
        border:none;
        outline:none;
        color: #636e72;
        font-size:16px;
        height:25px;
        background: none;
        }

        .email {
        width: 100%;
        border:none;
        outline:none;
        color: #636e72;
        font-size:16px;
        height:25px;
        background: none;
        }


        .btn {
        position:relative;
        left:40%;
        transform: translateX(-50%);
        margin-bottom: 40px;
        width:25%;
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
        border-radius: 15px;
        }

        .btn:hover {
        background-position: right;
        }
	
		 p {
        	margin-top: 620px;
        	margin-left: 320px;
        }
        
        td {
        	border: 1px solid white;
        }
        td > input {
        	color: black;
        }
	
</style>


<form method="POST" action="mpModify-action.jsp">
	<input type="hidden" name="memberId" value="${login.memberId }">
	<table cellpadding="10" cellspacing="0" class="joinForm">
		<tr>
			<td>아이디</td>
			<td colspan="2">${login.memberId }</td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td>${login.memberPw }</td>
			<td><input type="password" name="memberPw" required></td>
		</tr>
		<tr>
			<td>이름</td>
			<td>${login.memberName }</td>
			<td><input type="text" name="memberName" value="${login.memberName }"></td>
		</tr>
		<tr>
			<td>생년월일</td>
			<td>${login.birthDate }</td>
			<td><input type="date" name="birthDate" value="${login.birthDate }"></td>
		</tr>
		<tr>
			<td>이메일</td>
			<td>${login.email }</td>
			<td><input type="text" name="email" value="${login.email }"></td>	
		</tr>
	</table>
		<p><input type="submit" value="수정하기" class="btn"></p>
</form>


</body>
</html>