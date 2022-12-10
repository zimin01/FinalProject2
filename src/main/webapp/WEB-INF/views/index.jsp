<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>한동 중고 마켓</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

    <style>
        #div{
            font-family:'Do Hyeon',serif;
        }
    </style>

</head>
<body>
<img src="../../resources/img/1.jpeg" height="250">
<h2 id="div">한동인을 위한 중고거래 게시판</h2>
<button type="button" onclick="location.href='./login/login'">로그인하기</button>
</body>
</html>