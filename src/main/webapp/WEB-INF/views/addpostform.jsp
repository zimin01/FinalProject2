<%--
  Created by IntelliJ IDEA.
  User: jimin
  Date: 2022/12/09
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
    <style>

        #div,#edit,#div2{
            font-family:'Do Hyeon',serif;
        }
    </style>
</head>
<body>

<h1 id="div">중고 판매글 올리기</h1>
<form action="addok" method="post"  id="div1" >

    <table id="edit">

        <tr><td>판매자 이름</td><td><input type="text" name="username"/></td></tr>
        <tr><td>판매 물품</td><td><input type="text" name="category"/></td></tr>
        <tr><td>연락처</td><td><input type="text" name="phonenum"/></td></tr>
        <tr><td>구매 시기</td><td><input type="text" name="buydate"/></td></tr>
        <tr><td>사용감</td><td><input type="text" name="usefeel"/></td></tr>
        <tr><td>원가</td><td><input type="text" name="originalprice"/></td></tr>
        <tr><td>판매가격</td><td><input type="text" name="saleprice"/></td></tr>
        <tr><td>판매완료여부</td><td><input type="text" name="soldout"/></td></tr>

    </table>
    <button type="button" onclick="location.href='list'">목록보기</button>
    <button type="submit">등록하기</button>
    <input type="reset" value="리셋하기">

</form>
<br>
<hr>
<form id="div2">
    <tr><td>관리자에게 문의사항을 남겨주세요. </td></tr>
    <br>
    <tr><td><textarea rows="4" cols="50"></textarea></td></tr>
</form>

</body>
</html>
