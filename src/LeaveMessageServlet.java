/*
import Bean.Student;
import Bean.Teacher;
import Bean.MessBoar;
import Dao.loginSql;
import com.mysql.cj.Session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;

@WebServlet(name = "LeaveMessageServlet", urlPatterns = "/LeaveMessageServlet")
public class LeaveMessageServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置请求编码
        request.setCharacterEncoding("gb2312");
        // 设置响应编码
        response.setContentType("utf-8");
        // 获取title内容
        String title=request.getParameter("title");
        // 获取message内容
        String message=request.getParameter("message");
        HttpSession session = request.getSession();
        String type = (String) session.getAttribute("type");
        if (type.equalsIgnoreCase("学生")) {
            // 从session中取出当前用户对象
            Student leaveMessageBoard=(Student) request.getSession().getAttribute("student");
            // 建立留言表对应JavaBean对象，把数据封装进去
            MessBoar mb=new MessBoar();
            // 参数为获取的当前时间
            mb.setName(leaveMessageBoard.getName());
            mb.setTitle(title);
            mb.setMessage(message);
            // 调DB类中的方法判断是否插入成功
            if(new loginSql().addInfo(mb)){
                response.setHeader("refresh", "2;URL=success.jsp");
            }
            }
        else if(type.equalsIgnoreCase("教师")){
            // 从session中取出当前用户对象
            Teacher leaveMessageBoard=(Teacher) request.getSession().getAttribute("teacher");
            // 建立留言表对应JavaBean对象，把数据封装进去
            MessBoar mb=new MessBoar();
            // 参数为获取的当前时间
            mb.setName(leaveMessageBoard.getName());
            mb.setTitle(title);
            mb.setMessage(message);
            // 调DB类中的方法判断是否插入成功
            if(new loginSql().addInfo(mb)){
                response.setHeader("refresh", "2;URL=success.jsp");
            }
        }
        }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}*/
