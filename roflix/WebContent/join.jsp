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
        width:80%;
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

<form action="join-action.jsp" method="POST" class="joinForm">
	
	<h2>회원가입</h2>
        <div class="textForm">
          <input name="memberId" type="text" class="id" placeholder="아이디" required autofocus>
        </div>
        <div class="textForm">
          <input name="memberPw" type="password" class="pw" placeholder="비밀번호" required>
        </div>
        <div class="textForm">
          <input name="memberName" type="text" class="name" placeholder="이름">
        </div>
        <div class="textForm">
            <input name="birthDate" type="date" class="birthDate">
        </div>
        <div class="textForm">
         <input name="email" type="email" class="email" placeholder="이메일" required>
       </div>
        <input type="submit" class="btn" value="J O I N"/>
      </form>
</body>
</html>