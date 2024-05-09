<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.DriverManager" %>
<html>
<head>
    <title>用户显示</title>
</head>
<style>
    body{
        background-image: url(../img/5.png);
        background-size: cover;
    }
    .div1{
        position: absolute;
        top:260px;
        left: 600px;
    }
    a{
        text-decoration: none;
    }
</style>
<body>
<%
    HttpSession session1 = request.getSession();
    String type1 = String.valueOf(session1.getAttribute("type1"));
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
    try
    {
        Class.forName(DBDRIVER);
        conn = DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
%>
<div style="width: 1338px">
    <div class="div1">
        <div style=" opacity:80%;background: #ecab9f;width:400px;height: 240px;padding:  20px 60px;border: 3px #d1fd8a dashed">
            <h2><%=type1%>用户显示</h2>
            <h3>
                <a href="yh.jsp">返回</a>　　　　　　　　
            </h3>
            <%
                if(type1.equals("学生"))
                {
                    String sql = "select * from stus";
                    pstmt = conn.prepareStatement(sql);
                    rs = pstmt.executeQuery();
            %>
            <table>
                <tr>
                    <td width="180px">用户</td>
                </tr>
                <tr><td height="10"></td></tr>
                <%
                    while (rs.next())
                    {
                        i++;
                        // 进行循环打印，打印出所有的内容，以表格形式
                        // 从数据库中取出内容
                        String name = rs.getString(1);
                %>
                <tr>
                    <td><%=name%></td>
                    <td><a href="yhdelete_handle.jsp?name=<%=name%>">删除&nbsp;&nbsp;&nbsp;</a><td>
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
                    { String sql = "select * from teachers";
                        pstmt = conn.prepareStatement(sql);
                        rs = pstmt.executeQuery();
                %>
            <table>
                <tr>
                    <td width="180px">用户</td>
                </tr>
                <tr><td height="10"></td></tr>
                <%
                    while(rs.next())
                    {
                        i++;
                        // 进行循环打印，打印出所有的内容，以表格形式
                        // 从数据库中取出内容
                        String name = rs.getString(1);
                %>
                <tr>
                    <td><%=name%></td>
                    <td><a href="yhdelete_handle.jsp?name=<%=name%>">删除</a></td>
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
        </div>
    </div>
</div>
</body>
</html>