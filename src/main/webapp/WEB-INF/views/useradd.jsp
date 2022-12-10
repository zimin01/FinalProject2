<%--
  Created by IntelliJ IDEA.
  User: jimin
  Date: 2022/12/10
  Time: 3:31 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<html>
<head>
  <meta charset="UTF-8">
  <title>Insert User</title>
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
  <style>
    #div,#edit{
      font-family:'Do Hyeon',serif;
    }
  </style>
</head>
<body>

<h1 id="div">회원가입</h1>
<form action="useraddok" method="post"  id="div1" >

  <table id="edit">

    <tr><td>아이디</td><td><input type="text" name="userid"/></td></tr>
    <tr><td>이름</td><td><input type="text" name="username"/></td></tr>
    <tr><td>비밀번호</td><td><input type="text" name="password"/></td></tr>


  </table>
  <button type="button" onclick="location.href='login'">가입 취소</button>
  <button type="submit">가입하기</button>
  <input type="reset" value="리셋하기">

</form>


</body>
</html>