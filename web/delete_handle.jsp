<%@ page contentType="text/html;charset=UTF-8"%>
<%@ page import="java.sql.*"%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <style type="text/css" >
/*        *{
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
        }*/
    </style>
    <title>JSP留言板</title>
</head>
<body style="text-align:center;" >
<h1>JSP留言板</h1><hr><br>
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
    String  name = null;
    String title = null;
    String message = null;
    try
    {
        name = (request.getParameter("name"));
        title = new String(request.getParameter("title").getBytes("iso-8859-1"),"utf-8");
        message = new String(request.getParameter("message").getBytes("iso-8859-1"),"utf-8");
    }
    catch(Exception e)
    {}

%>
<%
    String sql = "DELETE FROM messagess WHERE name=? and title=? and message=?";
    boolean flag = false;
    try
    {
        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
        pstmt = conn.prepareStatement(sql);
        // 设置删除条件
        pstmt.setString(1, name);
        pstmt.setString(2,title);
        pstmt.setString(3,message);
        pstmt.executeUpdate();
        pstmt.close();
        conn.close();
        flag = true;
    }
    catch(Exception e)
    {}
%>
<%
    if(flag)
    {
%>
留言删除成功，两秒后跳转到留言列表页！！！<br>
如果没有跳转，请按<a href="lybdisplay.jsp">这里</a>！！！
<%
    response.setHeader("refresh", "2;URL=lybdisplay.jsp");
}
else
{
%>
留言删除失败，两秒后跳转到留言列表页！！！<br>
如果没有跳转，请按<a href="lybdisplay.jsp">这里</a>！！！
<%
        response.setHeader("refresh", "2;URL=lybdisplay.jsp");
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
</html>