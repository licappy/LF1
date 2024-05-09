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
    <title>教材介绍</title>
    <style>
        li{
            list-style: none;
        }
        a{
            text-decoration: none;
            color: #2DB688;
        }
        .nav1 a:hover{/*定义鼠标停留在导航项时的样式*/
            color: #2DB688;
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
            left: 190px;
        }
        .div3 img{
            position: absolute;
            top:100px;
            left: 200px;
            width: 600px;
            height: 600px;
        }
        .div4{
            position: absolute;
            top:130px;
            left: 800px;
        }
        .div4 a{
            position: absolute;
            top:86px;
            left: 300px;
        }
        .div5{
            position: absolute;
            top:290px;
            left: 840px;
            width: 390px;
        }
        .div6{
            position: absolute;
            top:470px;
            width: 390px;
            left: 840px;
        }
        .nav2 li{
            float: left;
        }

    </style>
</head>
<body>
<div style="width:1338px;">
    <div class="div1">
        <div class="div2" style="float:left;">
            <a href="http://www.ryjiaoyu.com"><img width="168" height="61" src="../pic/10.jpg"></a>
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
        <a href="https://www.daokao.net/isbn/9787115439369"><img src="../pic/7.jpg"></a>
    </div>
    <div class="div4">
        <ul><li><h3 style="color: #2DB688">出版信息</h3></li>
            <a href="https://m.itheima.com"><img src="../pic/9.jpg" width="70px" height="60px"></a>
            <li>
                书　　名：Java Web程序设计任务教程（第2版）
            </li>
            <li>
                出版日期：2021-08-01
            </li>
            <li>
                书　　号：978-7-115-56685-0
            </li>
            <li>
                作　　者：黑马程序员
            </li>
        </ul>
    </div>
    <div class="div5">
        <span>
            <h3 style="color: #086BB4">内容摘要</h3>
            本书共15章，详细讲解了网页开发的基础知识和Java Web开发的核心知识，
            其中网页开发基础知识包括HTML技术、CSS技术、JavaScript技术和Bootstrap技术，而
            Java Web的核心知识包括Servlet技术、会话技术，JSP技术、JDBC技术和数据库连接池技术等。
        </span>
    </div>
    <div class="div6">
        <h3 style="color: #C43C88">作者介绍</h3></li>
        <span>
            黑马程序员,传智播客成立于2006年，它是由中国Java培训第一人张孝祥老师发起,
            联合全球最大的中文IT社区CSDN、中关村软件园共同创办的一家专业教育机构。
        </span>
    </div>
</div>
<script>
    function check() {
        window.location.href = '../login.jsp'
    }
</script>
</body>
</html>
