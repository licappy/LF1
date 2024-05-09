<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>课程资源上传</title>
    <style>
        li{
            list-style: none;
        }
        a{
            text-decoration: none;
            color: #E17326;
        }
        .nav1 a:hover{/*定义鼠标停留在导航项时的样式*/
            color: #E17326;
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
            top:-35px;
            left: 230px;
        }
        .div1{
            position: absolute;
            top:228px;
            left: 400px;
        }
        .div4{
            background-image: url(../img/OIP-C2.jpg);
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
<%
    String sname = String.valueOf(session.getAttribute("name"));
%>
<div style="width:1338px;">
    <div class="div3">
        <div class="div2" style="float:left;">
            <img width="60" height="60" src="../pic/15.jpg">
        </div>
        <div>
            <ul class="nav1">
                <li>
                    <a href="teacher.jsp" target="_self">首页</a>
                </li>
                <li>
                    <a href="uploadkc.jsp" target="_self">课程资源</a>
                </li>
                <li>
                    <a href="uploadzy.jsp" target="_self">作业</a>
                </li>
                <li>
                    <a href="score.jsp" target="_self">成绩</a>
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
        <div class="div1" style=" opacity:80%;background: #c5ec9f;width:300px;height: 100px;padding:  20px 60px;border: 3px #b44e4e dashed">
            <form action="${pageContext.request.contextPath}/UploadHandleServlet" enctype="multipart/form-data" method="post">
                <table width="600px">
                    <tr>
                        <td >上传者</td>
                        <td><input type="text" name="name" value="<%=sname%>" disabled/></td>
                    </tr>
                    <tr>
                        <td>上传资源</td>
                        <td><input type="file" name="file1"></td>
                    </tr>
                    <tr>
                        <td colspan="2"><input type="submit" value="上传" /></td>
                    </tr>
                </table>
            </form>
        </div>
    </div>
</div>
</body>
</html>
