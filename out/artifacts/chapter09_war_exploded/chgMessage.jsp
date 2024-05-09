<%--
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
            background:url(images/back.png);
            text-align:center;
        }
        .mybtn{
            color:black;
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
        a:visted{
            color:#ffcc00;
        }
    </style>
    <title>JSP留言板</title>
</head>
<body style="text-align:center;" >
<h1>JSP留言板</h1><hr><br>
<%// 进行乱码处理
    request.setCharacterEncoding("UTF-8");
%>
<%
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
    // 声明一个boolean变量
    boolean flag = false;

    // 接收参数
    String name = request.getParameter("name");
    String title = request.getParameter("title");
    String message = request.getParameter("message");
    int id = 0;
    try
    {
        name = request.getParameter("name");
    }
    catch(Exception e)
    {}
%>
<%
    // 更新note表中的数据
    String sql = "UPDATE messagess set name=?,title=?,message=? WHERE name=?";
    try
    {
        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, name);
        pstmt.setString(2, title);
        pstmt.setString(3, message);
        pstmt.executeUpdate();
        pstmt.close();
        conn.close();
        // 如果修改成功，则肯定能执行到此段代码
        flag = true;
    }catch (Exception e)
    {}
%>
<%
    response.setHeader("refresh", "2;URL=messageList.jsp");
    if(flag)
    {
%>
留言修改成功，两秒后跳转到留言列表页！！！<br>
如果没有跳转，请按<a href="messageList.jsp">这里</a>！！！
<%
}
else
{
%>
留言修改失败，两秒后跳转到留言列表页！！！<br>
如果没有跳转，请按<a href="messageList.jsp">这里</a>！！！
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
<%
    }
%>
</body>
</html>--%>
