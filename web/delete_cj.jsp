<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %><%--
  Created by IntelliJ IDEA.
  User: 86133
  Date: 2023/6/14
  Time: 21:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>删除成绩</title>
</head>
<body>
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
    String score = null;
    try
    {
        name = (request.getParameter("name"));
        score = (request.getParameter("score"));
    }
    catch(Exception e)
    {}

%>
    <%
    String sql = "DELETE FROM cj WHERE name=? and score=?";
    boolean flag = false;
    try
    {
        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
        pstmt = conn.prepareStatement(sql);
        // 设置删除条件
        pstmt.setString(1, name);
        pstmt.setString(2,score);
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
成绩删除成功，两秒后跳转到成绩列表页！！！<br>
如果没有跳转，请按<a href="teacher/score.jsp">这里</a>！！！
    <%
    response.setHeader("refresh", "2;URL=teacher/score.jsp");
}
else
{
%>
成绩删除失败，两秒后跳转到成绩列表页！！！<br>
如果没有跳转，请按<a href="teacher/score.jsp">这里</a>！！！
    <%
        response.setHeader("refresh", "2;URL=teacher/score.jsp");
    }
%>
</body>
</html>
