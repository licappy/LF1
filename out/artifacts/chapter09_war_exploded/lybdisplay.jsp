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
    <title>���԰����</title>
    <script type="text/javascript">
        //������ʾ
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
    <h2 align="center">����������Ϣ</h2>
<%
    // ����ת��
    request.setCharacterEncoding("UTF-8");
    response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
    if(session.getAttribute("name") != null)
    {
        // �û��ѵ�½
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
    <a style="margin-left:800px" class="ly" target="_self" href="lybsubmit.jsp">���������</a>����������������
</h3>
<%
    String type = String.valueOf(session.getAttribute("type"));
    if(type.equals("ѧ��")||type.equals("��ʦ"))
    {
%>
<table>
    <tr>
        <td width="180px">����������</td>
        <td width="180px">���Ա���</td>
        <td width="360px">��������</td>
    </tr>
    <tr><td height="10"></td></tr>
    <%
        while (rs.next())
        {
            i++;
            // ����ѭ����ӡ����ӡ�����е����ݣ��Ա����ʽ
            // �����ݿ���ȡ������
            String name = rs.getString(1);
            String title = rs.getString(2);
            String message = rs.getString(3);
    %>
    <tr>
        <td><%=name%></td>
        <td><%=title%></td>
        <td><%=subStr(message)%></td>
        <td><a href="#" onclick="Msg('����Ա�ſ��Խ���ɾ������')" >ɾ��&nbsp;&nbsp;&nbsp;</a><td>
    </tr>
    <tr><td height="5"></td></tr>
    <%
        }
        // �ж�i��ֵ�Ƿ�ı䣬����ı䣬���ʾ�����ݣ���֮��������
        if(i == 0)
        {
            // ������ʾ
    %>
    <tr>
        <td colspan="5">û���κ����ݣ�����</td>
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
        <td width="180px">����������</td>
        <td width="180px">���Ա���</td>
        <td width="360px">��������</td>
    </tr>
    <%
        while(rs.next())
        {
            i++;
            // ����ѭ����ӡ����ӡ�����е����ݣ��Ա����ʽ
            // �����ݿ���ȡ������
            String name = rs.getString(1);
            String title = rs.getString(2);
            String message = rs.getString(3);
    %>
    <tr>
        <td><%=name%></td>
        <td><%=title%></td>
        <td><%=subStr(message)%></td>
        <td><a href="delete_handle.jsp?name=<%=name%>&title=<%=title%>&message=<%=message%>">ɾ��</a></td>
    </tr>

    <%
        }
        // �ж�i��ֵ�Ƿ�ı䣬����ı䣬���ʾ�����ݣ���֮��������
        if(i == 0)
        {
            // ������ʾ
    %>
    <tr>
        <td>û���κ����ݣ�����</td>
    </tr>
    <%
        }
    %>
</table>

<%
        //�ж��û������ͽ�����־
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
    // �û�δ��½����ʾ�û���½������ת
    response.setHeader("refresh", "2;URL=login.jsp");
%>
����δ��½�����ȵ�½������<br>
������Զ���ת����½���ڣ�����<br>
���û����ת���밴<a href="login.jsp">����</a>������<br>
<hr>
<%
    }
%>
</body>
</html>