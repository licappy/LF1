<%--
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*"%>

<%!
    String str;
    public String subStr(String str)
    {
            return str;
        }
%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css" >
        *{
            font-size:20px;
            color:#a6a6a6;
        }
        body{
            background:url(images/back.png);
            text-align:center;
        }
        table{
            text-align:center;
            margin:0px auto;
        }
        a:link{
            color:#b38f00;
            text-decoration:none;

        }
        a:hover{
            color:red;
            text-decoration:none;
        }
    </style>
    <title >JSP留言板</title>
    <script type="text/javascript">
        //弹窗提示
        function Msg(canshu)
        {
            alert(canshu);
        }
    </script>
</head>
<body  background="images/back.png" style="text-align:center;" >
<h1>JSP留言板</h1><hr><br>
<%
    // 编码转换
    request.setCharacterEncoding("UTF-8");
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
    <a href="lybsubmit.jsp">添加新留言</a>　　　　　　　　
    <a href="lybsubmit.jsp">退出留言操作</a>
</h3>
<%
    String type = String.valueOf(session.getAttribute("type"));
    System.out.println(type);
    if(type.equals("学生")||type.equals("教师"))
    {
%>
<table >
    <tr>
        <td>留言名</td>
        <td>标题</td>
        <td>内容</td>
        <td></td>
        <td></td>
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
        <td><a href="#" onclick="Msg('管理员才可以进行删除操作')" >删除</a></td>
        <td><a href="#" onclick="Msg('管理员才可以进行编辑操作')" >编辑</a></td>
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
        <td>用户</td>
        <td>标题</td>
        <td>内容</td>
        <td></td>
        <td></td>
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
        <td><a href="delete_handle.jsp?name=<%=name%>">删除</a></td>
        <td><a href="chgMessage.jsp?name=<%=name%>">编辑</a></td>
    </tr>

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
</html>--%>
