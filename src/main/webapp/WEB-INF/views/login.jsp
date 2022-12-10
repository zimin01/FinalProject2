<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" pageEncoding="UTF-8" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap" rel="stylesheet">

    <style>
        img, label { display:inline-block;}
        label { width:130px }
        button { background-color: blue; color:white; font-size:15px}

        #div{
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
<div style='width:100%; text-align:center; padding-top:100px' id="div">
    <%--    <img src="../img/snowman.jsp" height="250">--%>
    <form method="post" action="loginOk">
        <h1>한동인을 위한 중고거래 게시판</h1>
        <div><label>User ID: </label><input type="text" name="userid" /></div>
        <div><label>Password: </label>
            <input type="password" name="password" /></div>
        <button type="submit">login</button>
        <button type="button" onclick="location.href='useradd'">회원가입</button>
    </form>
</div>
</body>
</html>