<%@ page import="javax.swing.*" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/5/11
  Time: 11:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String sname = String.valueOf(session.getAttribute("name"));
    out.write("欢迎你"+sname +"同学，进入javaweb考试！！");
%>
<form action=<%=request.getContextPath()%>/exampleServlet method="post">
    <table>
        <tr>
            <td>1.servlet的扩展名是:</td>
        </tr>
        <tr>
            <td><input type="radio" name="1" value="1">A.java</td>
        </tr>
        <tr>
            <td><input type="radio" name="1" value="2">B.class</td>
        </tr>
        <tr>
            <td><input type="radio" name="1" value="3">C.jsp</td>
        </tr>
        <tr>
            <td><input type="radio" name="1" value="4">D.html</td>
        </tr>
        <tr>
            <td>2.下面不是动态网页技术的是:</td>
        </tr>
        <tr>
            <td><input type="radio" name="2" value="1">A.ASP</td>
        </tr>
        <tr>
            <td><input type="radio" name="2" value="2">B.PHP</td>
        </tr>
        <tr>
            <td><input type="radio" name="2" value="3">C.HTML</td>
        </tr>
        <tr>
            <td><input type="radio" name="2" value="4">D.JSP</td>
        </tr>
        <tr>
            <td>3.如果做动态网站,以下可以作为服务器端脚本语言的是:</td>
        </tr>
        <tr>
            <td><input type="radio" name="3" value="1">A.HTML</td>
        </tr>
        <tr>
            <td><input type="radio" name="3" value="2">B.JSP</td>
        </tr>
        <tr>
            <td><input type="radio" name="3" value="3">C.JavaScript</td>
        </tr>
        <tr>
            <td><input type="radio" name="3" value="4">D.Java</td>
        </tr>
        <tr>
            <td>4.JSP页面经过编译之后，将创建的是:</td>
        </tr>
        <tr>
            <td><input type="radio" name="4" value="1">A.applet</td>
        </tr>
        <tr>
            <td><input type="radio" name="4" value="2">B.servlet</td>
        </tr>
        <tr>
            <td><input type="radio" name="4" value="3">C.application</td>
        </tr>
        <tr>
            <td><input type="radio" name="4" value="4">D.exe</td>
        </tr>
        <tr>
            <td><input type="submit" value="考试完成"><input type="reset" value="重考"></td>
        </tr>
    </table>
</form>
</body>
</html>
