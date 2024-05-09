<%@ page import="Bean.Teacher" %><%--
  Created by IntelliJ IDEA.
  User: 86133
  Date: 2023/5/27
  Time: 16:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>管理员网站</title>
    <style>
        li{
            list-style: none;
        }
        .nav1 a:hover{/*定义鼠标停留在导航项时的样式*/
            color: #75d74b;
        }
        .div1{
            position: relative;
            top:-23px;
            left: 180px;
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
        #box {
            position: relative;/*相对定定位，原位置不会释放*/
            width: 1100px;
            height: 620px;
            background: #fff;
            border-radius: 5px;
            border: #75d74b inset 6px;
            left:230px;
        }
        #box .list {
            position: relative;
            width:880px;
            height:550px;
            left:10px;
            top: 20px;
            background:#000;
        }
        #box .list li img{
            width: 1080px;
            height:550px;
            left:0px;
            position:absolute;/*绝对定位，原位置会释放出来*/
        }
        .div2{
            margin-bottom: 10px;
        }
        .div3{
            margin-top: 20px;
        }
    </style>
</head>
<body>
<div style="width:1338px;">
    <div class="div3">
        <div class="div1" style="float:left;">
            <img width="120" height="70" src="../pic/1.jpg">
        </div>
        <div>
            <ul class="nav1">
                <li>
                    <a href="yh.jsp" target="_self">用户管理</a>
                </li>
                <li>
                    <a href="../lybdisplay.jsp" target="_self">留言板管理</a>
                </li>
                <li>
                    <a href="../yk/yk.jsp" target="_self">退出登录</a>
                </li>
            </ul>
        </div>
    </div>
    <div class="div2">
        <marquee>
            <%
                String name = String.valueOf(session.getAttribute("name"));
                out.write("欢迎您"+name +"管理员，访问Java网站！！");
            %>
        </marquee>
    </div>
    <div>
        <div id="box">
            <ul id="imagesUI" class="list">
                <li class="current" style="opacity: 1;"><img src="../img/OIP-C7.jpg"></li>
                <li style="opacity: 0;"><img src="../img/5.png" ></li>
                <li style="opacity: 0;"><img src="../img/3.jpg" ></li>
                <li style="opacity: 0;"><img src="../img/OIP-C6.jpg" ></li>
                <li style="opacity: 0;"><img src="../img/OIP-C5.jpg" ></li>
            </ul>
        </div>
    </div>
<script>
    var imageUI=document.getElementById('imagesUI');//获取指定ul
    var lis = imageUI.getElementsByTagName('li');//获取ul中的所有li
    var index = 0;//下标
    var t = 0;
    /*自动播放*/
    function autoPlay()
    {
        lis[t].style.opacity = 0;
        if(t>=4) t = 0;
        else t = t+1;
        lis[t].style.opacity = 1;
    }
    var box = document.getElementById('box');
    var play1 = setInterval(autoPlay,1000);
    box.onload = play1;
    box.onmouseover = function () {/*鼠标移动到之后停止跳转*/
        clearInterval(play1);
    }
    box.onmouseout = function() {
        play1 = setInterval(autoPlay, 1000);
    }
</script>
</body>
</html>
