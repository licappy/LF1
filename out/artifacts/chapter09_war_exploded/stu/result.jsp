<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2023/5/11
  Time: 11:28
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
    String result = String.valueOf(session.getAttribute("result"));
    HttpSession session1 = request.getSession();
    session1.setAttribute("score",result);
    out.write(sname+"的考试成绩:"+result);
%>
<a href="stu.jsp" ><input type="button" value="返回"></a>
</body>
</html>
