<%--
  Created by IntelliJ IDEA.
  User: jimin
  Date: 2022/12/09
  Time: 2:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}"/>

<html>
<head>
    <title>Title</title>
  <link rel="preconnect" href="https://fonts.gstatic.com">
  <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">
  <script>
    function delete_ok(id){
      var a=confirm("정말로 삭제하겠습니까?");
      if(a) location.href='deleteok/'+id;
    }
  </script>

  <style>
    #div,#div2{
      font-family:'Do Hyeon',serif;
    }
    #list {
      /*font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;*/
      font-family:'Do Hyeon',serif;
      border-collapse: collapse;
      width: 100%;
    }
    #list td, #list th {
      border: 1px solid #ddd;
      padding: 8px;
      text-align:center;
    }
    #list tr:nth-child(even){background-color: #f2f2f2;}
    #list tr:hover {background-color: #ddd;}
    #list th {
      padding-top: 12px;
      padding-bottom: 12px;
      text-align: center;
      background-color:black;
      color: white;
    }
  </style>

</head>
<body>
<h1 id="div">한동인을 위한 중고거래 게시판</h1>


<table id="list" width="90%">
  <tr>
    <th>판매자 이름</th>
    <th>판매 물품</th>
    <th>연락처</th>
    <th>구매 시기</th>
    <th>사용감</th>
    <th>원가</th>
    <th>판매가격</th>
    <th>판매완료여부</th>
    <th>등록일</th>

    <th>수정</th>
    <th>삭제</th>
  </tr>

  <c:forEach items="${list}" var="u">
    <tr>

      <td>${u.username}</td>
      <td>${u.category}</td>
      <td>${u.phonenum}</td>
      <td>${u.buydate}</td>
      <td>${u.usefeel}</td>
      <td>${u.originalprice}</td>
      <td>${u.saleprice}</td>
      <td>${u.soldout}</td>
      <td>${u.regdate}</td>

      <td><a href="editform/${u.seq}">글수정</a></td>
      <td><a href="javascript:delete_ok('${u.seq}')">글삭제</a></td>

    </tr>
  </c:forEach>

  <br/>
</table>
<p id="div2">
<button type="button" onclick="location.href='add'">새글쓰기</button>
<a href="login/login"><input type="button" value="로그아웃"></a></p>
<%--<br/><a href="addpostform.jsp">Add New Post</a>--%>

</body>
</html>
