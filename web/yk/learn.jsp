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
    <title>学习网站</title>
    <style>
        li{
            list-style: none;
        }
        a{
            text-decoration: none;
            color: #54559E;
        }
        .nav1 a:hover{/*定义鼠标停留在导航项时的样式*/
            color: #B6262F;
        }
        .nav1{
            padding-left: 340px;
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
            top:-18px;
            left: 263px;
        }
        .div3{
            position: absolute;
            top:100px;
            left: 283px;
        }
        .div4{
            position: absolute;
            top:880px;
            left: 283px;
        }
        .div5{
            position: absolute;
            top:1680px;
            left: 283px;
        }

    </style>
</head>
<body>
<div style="width:1338px;">
    <div class="div1">
        <div class="div2" style="float:left;">
            <img width="100" height="71" src="../pic/14.jpg">
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
        <a href="https://www.runoob.com"><h2>1.菜鸟教程</h2></a>
        <span>
            菜鸟教程提供了基础编程技术教程。菜鸟教程的 Slogan 为：学的不仅是技术，更是梦想！
            这是一个非常适合自学且非常全面的编程自学网站，本站包括了<br>HTML、CSS、Javascript、
            PHP、C、Python等各种基础编程教程。同时本站中也提供了大量的在线实例，通过实例，
            您可以更好地学习如何建站。<br>
        </span>
        <img width="1100px" src="../img/7.jpg">
    </div>
    <div class="div4">
        <a href="https://www.csdn.net"><h2>2.CSDN</h2></a>
        <span>
            CSDN是全球知名中文IT技术交流平台,创建于1999年,包含原创博客、精品问答、职业培训、技术论坛、资源下载等产品服务,提供原创、优质、完整
            <br>内容的专业IT技术开发社区。<br>
        </span>
        <img width="1100px"src="../img/8.jpg">
    </div>
    <div class="div5">
        <a href="https://edu.51cto.com"><h2>3.51CTO学堂</h2></a>
        <span>
            51CTO是中国领先的IT技术在线学习平台和中国最大的
            IT技术社区之一，以服务IT技术人员职业成长为己任，
            对中国数千万IT技术人员拥有强大的影响力和<br>服务能力。<br>
        </span>
        <img width="1100px"src="../img/9.jpg">
    </div>
</div>
<script>
    function check() {
        window.location.href = '../login.jsp'
    }
</script>
</body>
</html>
