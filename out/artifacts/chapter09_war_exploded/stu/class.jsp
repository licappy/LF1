<%--
  Created by IntelliJ IDEA.
  User: 86133
  Date: 2023/5/27
  Time: 16:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课程资源</title>
    <style>
        li{
            list-style: none;
        }
        a{
            text-decoration: none;
            color: #0964b6;
        }
        .nav1 a:hover{/*定义鼠标停留在导航项时的样式*/
            color: #0964b6;
        }
        .nav1{
            padding-left: 280px;
        }
        .nav1 li{
            margin-left: 30px;
            text-align: center;
            list-style: none;
            float: left;
        }
        .nav1 a{
            text-decoration: none;
            color: black;
            font-size: 20px;
        }
        .div2{
            margin-top: 20px;
        }
        .div2{
            position: relative;
            top:-40px;
            left: 200px;
        }
        .div1{
            position: absolute;
            top:68px;
            left: 400px;
        }
        .div4{
            background-image: url(../img/OIP-C.jpg);
            background-size: cover;
            position: absolute;
            top: 70px;
            left: 250px;
        }
        .div3{
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div style="width:1338px;">
    <div class="div3">
        <div class="div2" style="float:left;">
            <img width="90" height="70" src="../pic/8.webp">
        </div>
        <div>
            <ul class="nav1">
                <li>
                    <a href="stu.jsp" target="_self">首页</a>
                </li>
                <li>
                    <a href="class.jsp" target="_self">课程资源</a>
                </li>
                <li>
                    <a href="uploadzy.jsp" target="_self">作业</a>
                </li>
                <li>
                    <a href="../lybsubmit.jsp" target="_self">留言板</a>
                </li>
                <li>
                    <a href="../yk/yk.jsp" target="_self">退出登录</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="div4" style="opacity: 90%;width: 1200px;height: 700px">
        <div class="div1" style=" opacity:80%;background: #efe2b1;width:300px;height: 400px;padding:  20px 60px;border: 3px #e756c8 dashed">
            <ul>
                <li>
                    <h2><a style="color: #dc7979" target="_blank" href="../ListFileServlet">查看老师上传资源</a></h2>
                </li>
                <li>
                    <a href="../ppt/1.ppt">第1章　网页开发基础</a>
                </li>
                <li>
                    <a href="../ppt/2.pptx">第2章　Java Web概述 38</a>
                </li>
                <li>
                    <a href="../ppt/3.pptx">第3章　HTTP协议</a>
                </li>
                <li>
                    <a href="../ppt/4.pptx">第4章　Servlet技术</a>
                </li>
                <li>
                    <a href="../ppt/5.pptx">第5章　会话及会话技术</a>
                </li>
                <li>
                    <a href="../ppt/6.pptx">第6章　JSP技术</a>
                </li>
                <li>
                    <a href="../ppt/7.pptx">第7章　EL和JSTL</a>
                </li>
                <li>
                    <a href="../ppt/8.pptx">第8章　JavaBean技术与JSP开发</a>
                </li>
                <li>
                    <a href="../ppt/9.pptx">第9章　Servlet的高级特性</a>
                </li>
                <li>
                    <a href="example.jsp">期末考试</a>
                </li>
            </ul>
        </div>
    </div>
</div>
</body>
</html>
