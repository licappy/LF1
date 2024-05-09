<%--
  Created by IntelliJ IDEA.
  User: 86133
  Date: 2023/6/9
  Time: 23:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>用户身份选择</title>
    <style>
        body{
            background-image: url(../img/5.png);
            background-size: cover;
        }
        .div1{
            position: absolute;
            top:260px;
            left: 600px;
        }
    </style>
</head>
<body>
<div style="width: 1338px">
    <div class="div1">
        <div style=" opacity:80%;background: #ecab9f;width:400px;height: 80px;padding:  20px 60px;border: 3px #d1fd8a dashed">
            <form action=<%=request.getContextPath()%>/yhServlet method="post">
                请选择你要查看的身份：<input type="radio" name="type1" value="学生">学生
                <input type="radio" name="type1" value="教师">教师<br><br>
                <input type="submit" value="查看" onclick="xianshi()">
                <input type="button" value="返回" onclick="back()">
            </form>
        </div>
    </div>
    <script>
        function xianshi() {
            window.location="yhdisplay.jsp";
        }
        function back() {
            window.location="admin.jsp";
        }
    </script>
</div>
</body>
</html>
