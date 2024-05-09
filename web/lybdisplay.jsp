<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page import="Bean.MessBoar" %>
<%@ page import="Dao.loginSql" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<%!
    String str;
    public String subStr(String str)
    {
        return str;
    }
%>
<html>
<head>
    <title>留言板界面</title>
    <script type="text/javascript">
        //弹窗提示
        function Msg(canshu)
        {
            alert(canshu);
        }
    </script>
</head>
<style>
    body{
        width: 980px;
        height: 700px;
        border: 2px solid salmon;
        border-radius:30px;
        padding-left: 40px;
        padding-top: 20px;
        margin: 0 auto;
        background-color: azure;
    }
    table{
        border-collapse:collapse;
    }
    .ly{
        position: absolute;
        top:50px;
        border: #99a0a0 solid 4px;
    }
    a{
        text-decoration: none;
        color: #b38f00;
    }
    a:hover{
        color:salmon;
        text-decoration:none;
    }
</style>
<body>
    <h2 align="center">所有留言信息</h2>
<%
    // 编码转换
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
    if(session.getAttribute("name") != null)
    {
        // 用户已登陆
%>
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
    String sql = "SELECT * FROM messagess";
    try
    {
        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
%>
<h3>
    <a style="margin-left:800px" class="ly" target="_self" href="lybsubmit.jsp">添加新留言</a>　　　　　　　　
</h3>
<%
    String type = String.valueOf(session.getAttribute("type"));
    if(type.equals("学生")||type.equals("教师"))
    {
%>
<table>
    <tr>
        <td width="180px">留言人姓名</td>
        <td width="180px">留言标题</td>
        <td width="360px">留言内容</td>
    </tr>
    <tr><td height="10"></td></tr>
    <%
        while (rs.next())
        {
            i++;
            // 进行循环打印，打印出所有的内容，以表格形式
            // 从数据库中取出内容
            String name = rs.getString(1);
            String title = rs.getString(2);
            String message = rs.getString(3);
    %>
    <tr>
        <td><%=name%></td>
        <td><%=title%></td>
        <td><%=subStr(message)%></td>
        <td><a href="#" onclick="Msg('管理员才可以进行删除操作')" >删除&nbsp;&nbsp;&nbsp;</a><td>
    </tr>
    <tr><td height="5"></td></tr>
    <%
        }
        // 判断i的值是否改变，如果改变，则表示有内容，反之，无内容
        if(i == 0)
        {
            // 进行提示
    %>
    <tr>
        <td colspan="5">没有任何内容！！！</td>
    </tr>
    <%
        }
    %>
</table>
<%
}
else
{
%>
<table>
    <tr>
        <td width="180px">留言人姓名</td>
        <td width="180px">留言标题</td>
        <td width="360px">留言内容</td>
    </tr>
    <%
        while(rs.next())
        {
            i++;
            // 进行循环打印，打印出所有的内容，以表格形式
            // 从数据库中取出内容
            String name = rs.getString(1);
            String title = rs.getString(2);
            String message = rs.getString(3);
    %>
    <tr>
        <td><%=name%></td>
        <td><%=title%></td>
        <td><%=subStr(message)%></td>
        <td><a href="delete_handle.jsp?name=<%=name%>&title=<%=title%>&message=<%=message%>">删除</a></td>
    </tr>

    <%
        }
        // 判断i的值是否改变，如果改变，则表示有内容，反之，无内容
        if(i == 0)
        {
            // 进行提示
    %>
    <tr>
        <td>没有任何内容！！！</td>
    </tr>
    <%
        }
    %>
</table>

<%
        //判断用户的类型结束标志
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
<%
}
else
{
    // 用户未登陆，提示用户登陆，并跳转
    response.setHeader("refresh", "2;URL=login.jsp");
%>
您还未登陆，请先登陆！！！<br>
两秒后自动跳转到登陆窗口！！！<br>
如果没有跳转，请按<a href="login.jsp">这里</a>！！！<br>
<hr>
<%
    }
%>
</body>
</html>