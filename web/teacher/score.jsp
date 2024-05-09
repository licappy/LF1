<%@ page import="Conn.Conn" %>
<%@ page import="java.beans.Statement" %>
<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>成绩查询</title>
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
        .div3{
            margin-top: 20px;
        }
        .div1{
            position: absolute;
            top:100px;
            left: 450px;
        }
        .div4{
            background-image: url(../img/OIP-C2.jpg);
            background-size: cover;
            position: absolute;
            top: 70px;
            left: 250px;
        }
    </style>
</head>
<body>
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
    <%!
        String DBDRIVER = "com.mysql.jdbc.Driver";
        String DBURL = "jdbc:mysql://localhost:3306/jdbc1?serverTimezone=UTC";
        String DBUSER = "root";
        String DBPASSWORD = "a13322743857";
        Connection conn = null;
        PreparedStatement pstmt = null;
        ResultSet rs = null;
    %>
    <%
        int i = 0;
        String sql = "SELECT * FROM cj";
        try {
            Class.forName(DBDRIVER);
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
            pstmt = conn.prepareStatement(sql);
            rs = pstmt.executeQuery();
    %>
    <div class="div1" style=" opacity:80%;background: #f5bfbf;width:220px;height: 430px;padding:  20px 60px;border: 3px #aa6ee0 dashed">
        <table style="margin: auto">
            <tr>
                <td width="80px">姓名</td>
                <td width="80px">成绩</td>
            </tr>
            <tr>
                <td height="10"></td>
            </tr>
            <%
                while (rs.next()) {
                    i++;
                    // 进行循环打印，打印出所有的内容，以表格形式
                    // 从数据库中取出内容
                    String name = rs.getString(1);
                    String score = rs.getString(2);
            %>
            <tr>
                <td><%=name%>
                </td>
                <td><%=score%>
                </td>
                <td><a href="../delete_cj.jsp?name=<%=name%>&score=<%=score%>">删除</a></td>
            </tr>
            <tr>
                <td height="5"></td>
            </tr>
            <%
                }
                // 判断i的值是否改变，如果改变，则表示有内容，反之，无内容
                if (i == 0) {
                    // 进行提示
            %>
            <tr>
                <td colspan="5">没有任何内容！！！</td>
            </tr>
            <%
                }
            %>
            <%
                    rs.close();
                    pstmt.close();
                    conn.close();
                }
                catch (Exception e)
                {}
            %>
        </table>
    </div>
    </div>
</div>
</body>
</html>