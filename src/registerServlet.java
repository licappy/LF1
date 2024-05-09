import Bean.Admin;
import Bean.Student;
import Bean.Teacher;
import Dao.AdminDao;
import Dao.StudentSql;
import Dao.TeacherSql;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;

@WebServlet(name = "registerServlet",urlPatterns = "/registerServlet")
public class registerServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8"); //设置用户提交信息的编码
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd");
        String type = request.getParameter("type");
        System.out.println(type);
        if (type.equalsIgnoreCase("学生")) {
            StudentSql studentSql = new StudentSql();
            boolean b = studentSql.isStudent(name, pwd);
            if (b == false) {
                Student student = new Student(name,pwd,type);
                studentSql.insertStudent(name,pwd,type);
                HttpSession session = request.getSession();
                session.setAttribute("student", student);
                response.getWriter().print("恭喜你注册成功，2秒钟自动跳转登录界面");
                response.setHeader("refresh","2;url=login.jsp");
            }
            else {
                response.getWriter().print("您已注册，请直接登录!!");
                response.setHeader("refresh","1;url=login.jsp");
            }
            }
        else if (type.equalsIgnoreCase("教师")) {
            TeacherSql teacherSql = new TeacherSql();
            boolean b = teacherSql.isTeacher(name, pwd);
            if (b == false) {
                Teacher teacher = new Teacher(name,pwd,type);
                teacherSql.insertTeacher(name,pwd,type);
                HttpSession session = request.getSession();
                session.setAttribute("teacher", teacher);
                response.getWriter().print("恭喜你注册成功，2秒钟自动跳转登录界面");
                response.setHeader("refresh", "2;url=login.jsp");
            }
            else {
                response.getWriter().print("您已注册，请直接登录!!");
                response.setHeader("refresh","1;url=login.jsp");
            }
        }
        else if (type.equalsIgnoreCase("管理员")) {
            AdminDao adminDao = new AdminDao();
            boolean b = adminDao.isAdmin(name, pwd);
            if (b == false) {
                Admin admin = new Admin(name,pwd,type);
                adminDao.insertAdmin(name,pwd,type);
                HttpSession session = request.getSession();
                session.setAttribute("admin", admin);
                response.getWriter().print("恭喜你注册成功，2秒钟自动跳转登录界面");
                response.setHeader("refresh", "2;url=login.jsp");
            }
            else {
                response.getWriter().print("您已注册，请直接登录!!");
                response.setHeader("refresh","1;url=login.jsp");
            }
        }
        else {
            JOptionPane.showMessageDialog(null, "请补全信息！！");
            RequestDispatcher rd = request.getRequestDispatcher("../register.jsp");
            rd.forward(request, response);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
