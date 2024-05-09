<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*"%>

<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css" >
        *{
            font-size:20px;
            color:#a6a6a6;
        }
        body{
            text-align:center;
        }
        a:link{
            color:#b38f00;
            text-decoration:none;

        }
        a:hover{
            color:red;
            text-decoration:none;
        }
        a:active{
            color:#ffcc00;
        }
    </style>
    <title>JSP留言板</title>
</head>
<body style="text-align:center;" >
<h1>JSP留言板</h1><hr><br>
<%
    // 进行乱码处理
    request.setCharacterEncoding("UTF-8");
%>
<%
    String name = String.valueOf(session.getAttribute("name"));
    if(name != null)
    {// 用户已登陆
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
    // 声明一个boolean变量
    boolean flag = false;

    // 接收参数
    String name1 = name;
    String title1 = request.getParameter("title");
    String message1 = request.getParameter("message");
%>
<%
    // 现在note表中的主键是id自动递增生成
    String sql = "INSERT INTO messagess(name,title,message)"
            + " VALUES ('" + name1 + "','"
            + title1 + "','"
            + message1 + "')";
    try
    {
        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
        Statement stmt = (Statement) conn.createStatement();
        stmt.executeUpdate(sql);
        stmt.close();
        conn.close();
        // 如果插入成功，则肯定能执行到此段代码
        flag = true;

    }
    catch(Exception e)
    {
        System.out.println("数据库连接失败：" + e.getMessage());
    }
%>
<%
    response.setHeader("refresh", "2;URL=lybsubmit.jsp");
    if(flag)
    {
%>
留言添加成功，两秒后跳转到留言列表页！！！<br>
如果没有跳转，请按<a href="lybsubmit.jsp">这里</a>！！！
<hr>
<%
}
else
{
%>
留言添加失败，两秒后跳转到留言列表页！！！<br>
如果没有跳转，请按<a href="lybsubmit.jsp">这里</a>！！！
<hr>
<%
    }
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