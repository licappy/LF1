<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
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
    <title>用户删除</title>
</head>
<body style="text-align:center;" >
<h1>用户删除</h1><hr><br>
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
    String  name = null;
    try

    {
        name = (request.getParameter("name"));
    }
    catch(Exception e)
    {}
%>
<%
    HttpSession session1 = request.getSession();
    String type1 = (String) session1.getAttribute("type1");
    if(type1.equalsIgnoreCase("学生")){
        String sql = "DELETE FROM stus WHERE name=?";
        boolean flag = false;
        try
        {
            Class.forName(DBDRIVER);
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
            pstmt = conn.prepareStatement(sql);
            // 设置删除条件
            pstmt.setString(1, name);
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            flag = true;
        }
        catch(Exception e)
        {}
%>
<%
    response.setHeader("refresh", "2;URL=yhdisplay.jsp");
    if(flag)
    {
%>
删除成功，两秒后跳转到用户列表页！！！<br>
如果没有跳转，请按<a href="yhdisplay.jsp">这里</a>！！！
<%
}
else
{
%>
删除失败，两秒后跳转到用户列表页！！！<br>
如果没有跳转，请按<a href="yhdisplay.jsp">这里</a>！！！
<%
    }
%>
<%
}
    else {
        String sql = "DELETE FROM teachers WHERE name=?";
        boolean flag = false;
        try
        {
            Class.forName(DBDRIVER);
            conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
            pstmt = conn.prepareStatement(sql);
            // 设置删除条件
            pstmt.setString(1, name);
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            flag = true;
        }
        catch(Exception e)
        {}
%>
<%
    response.setHeader("refresh", "2;URL=yhdisplay.jsp");
    if(flag)
    {
%>
删除成功，两秒后跳转到用户列表页！！！<br>
如果没有跳转，请按<a href="yhdisplay.jsp">这里</a>！！！
<%
}
else
{
%>
删除失败，两秒后跳转到用户列表页！！！<br>
如果没有跳转，请按<a href="yhdisplay.jsp">这里</a>！！！
<%
    }
%>
<%
}
%>
<%
}
else
{
// 用户未登陆，提示用户登陆，并跳转
    response.setHeader("refresh", "2;URL=../login.jsp");
%>
您还未登陆，请先登陆！！！<br>
两秒后自动跳转到登陆窗口！！！<br>
如果没有跳转，请按<a href="../login.jsp">这里</a>！！！<br>
<%
    }
%>
</body>
</html>