<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="javax.swing.*" %>
<!DOCTYPE HTML >
<html>
<head>
    <meta charset="UTF-8" >
    <style>
        .div1{
            width: 540px;
            height: 540px;
            border: 2px solid salmon;
            border-radius:30px;
            padding-left: 40px;
            padding-top: 20px;
            margin: 0 auto;
            background-color: azure;
        }
        .bt{
            width: 100px;
            height: 40px;
            border: orangered 2px solid;
            background-color: #999999;
        }
    </style>
</head>
<body>
<div>
    <%
        String sname = String.valueOf(session.getAttribute("name"));
    %>
</div>
<div class="div1">
    <h3 align="center">欢迎来到留言板块！</h3>
    <form action="addmessage_handle.jsp" method="post">
        请输入你的姓名：<input type="text" name="name" size="50" value="<%=sname%>" disabled><br><br>
        请输入你的标题：<input type="text" name="title" size="50"><br><br>
        留言内容：<br><br><textarea rows="15" cols="60" name="message"></textarea><br><br>
        <input class=bt type="submit" value="提交信息" style="margin-left: 120px;">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input type="button" class=bt value="查看留言板" onclick="showmsg()">
    </form>
</div>
    <script>
        function showmsg(){
            window.open("lybdisplay.jsp");
        }
    </script>
</body>
</html>
