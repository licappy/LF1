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
    <title>课程介绍</title>
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
        .div1{
            margin-top: 20px;
        }
        .div2{
            position: relative;
            top:-10px;
            left: 190px;
        }
        .div3{
            margin-bottom: 10px;
        }
        .div4 {
            position: relative;/*相对定定位，原位置不会释放*/
            width: 750px;
            height: 500px;
            background: #fff;
            border-radius: 5px;
            border: #0964b6 inset 6px;
            left:190px;
            top:0px;
        }
        .div4 video{
            width:710px;
            height:460px;
            left:18px;
            top:24px;
            position:absolute;
        }
        .div5{
            position: absolute;
            width: 400px;
            height: 460px;
            left: 1000px;
            top:200px;
        }
        .div6{
            position: absolute;
            left: 960px;
            top:380px;
        }
    </style>
</head>
<body>
<div style="width:1338px;">
    <div class="div1">
        <div class="div2" style="float:left;">
            <img width="90" height="70" src="../pic/8.webp">
        </div>
        <div>
            <ul class="nav1">
                <li>
                    <a href="yk.jsp" target="_self">首页</a>
                </li>
                <li>
                    <a href="class.jsp" target="_self">课程介绍</a>
                </li>
                <li>
                    <a href="book.jsp" target="_self">教材介绍</a>
                </li>
                <li>
                    <a href="learn.jsp" target="_self">学习网站</a>
                </li>
            </ul>
        </div>
        <div style="float:right;font-size: 20px">
            请先登录!&nbsp;&nbsp;&nbsp;&nbsp;<input style="font-size: 18px" type="submit" value="登录" onclick="check()">
        </div>
    </div>
    <div class="div3">
        <marquee >欢迎您来到Java课堂！！快扫码或点击链接学习吧！！</marquee>
    </div>
    <div class="div4">
        <video controls="controls" loop="loop" autoplay="autoplay">
            <source src="../video/1.mp4" type="video/mp4" ></source>
        </video>
    </div>
    <div class="div5">
        <span>
           《JavaWeb程序设计任务教程》从初学者的角度出发，深刻且通俗地揭示了JavaWeb开发内幕，共15章。
            详细讲解了网页开发的基础知识和JavaWeb开发的重要知识，其中网页开发基础知识包括HTML技术、
            CSS技术和JavaScript技术，而JavaWeb的进阶知识包括Servlet技术、会话技术、JSP技术，以及
            JDBC和数据库连接池等技术。本书提供免费教学资源，包括15个精美教学PPT、1600道测试题、长达
            50小时的教学视频等;内容定位于JavaWeb的初级和中级内容，好学易懂；
        </span>
    </div>
    <div class="div6">
        <ul>
            <li>
                <a href="https://b23.tv/mp7iI0Y">视频链接</a>
            </li>
            <li>
                <img src="../pic/19.jpg">
            </li>
        </ul>
    </div>
</div>
<script>
    function check() {
        window.location.href = '../login.jsp'
    }
</script>
</body>
</html>
