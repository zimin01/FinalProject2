<%--
  Created by IntelliJ IDEA.
  User: jimin
  Date: 2022/12/09
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="com.mycom.myapp.market.MarketVO" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java"  pageEncoding="UTF-8"%>
<html>
<head>

    <title>Title</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
    <style>
        #div{
            font-family:'Do Hyeon',serif;
        }
        #edit{
            font-family:'Do Hyeon',serif;
        }
    </style>
</head>
<body>


<h1 id="div">게시물 수정</h1>

<form:form modelAttribute="u" method="POST" action="../editok" id="div1">
    <form:hidden path="seq"/>

    <table id="edit" >

    <tr><td>판매자 이름</td><td><form:input path="username"/></td></tr>
    <tr><td>판매 물품</td><td><form:input path="category"/></td></tr>
    <tr><td>연락처</td><td><form:input path="phonenum"/></td></tr>
    <tr><td>구매 시기</td><td><form:input path="buydate"/></td></tr>
    <tr><td>사용감</td><td><form:input path="usefeel"/></td></tr>
    <tr><td>원가</td><td><form:input path="originalprice"/></td></tr>
    <tr><td>판매가격</td><td><form:input path="saleprice"/></td></tr>
    <tr><td>판매완료여부</td><td><form:input path="soldout"/></td></tr>

    </table>

    <input type="submit" value="수정하기"/>
    <input type="button" value="취소하기" onclick="history.back()"/>
</form:form>
</div>
</body>
</html>
