<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
    <style>
        body{
            background-image: url(img/3.jpg);
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
        <div style=" opacity:80%;background: #f5bfbf;width:400px;height: 240px;padding:  20px 60px;border: 3px #efee91 dashed">
            <form action="<%=request.getContextPath()%>/registerServlet" method="post">
                <h2>用户注册</h2>
                账&nbsp;&nbsp;&nbsp;&nbsp;号：<input type="text" name="name"  size=30><br><br>
                密&nbsp;&nbsp;&nbsp;&nbsp;码：<input type="password" name="pwd" size=30><br><br>
                身&nbsp;&nbsp;&nbsp;&nbsp;份：<input type="radio" name="type" value="学生">学生
                <input type="radio" name="type" value="教师">教师<input type="radio" name="type" value="管理员">管理员<br><br>
                <input type="submit" value="注册">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="reset" value="清空">
            </form>
        </div>
    </div>
</div>
</body>
</html>
