import Bean.Admin;
import Bean.Student;
import Bean.Teacher;
import Dao.AdminDao;
import Dao.StudentSql;
import Dao.TeacherSql;
import Dao.loginSql;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.swing.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "loginServlet", urlPatterns = "/loginServlet")
public class loginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8"); //设置用户提交信息的编码
        response.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String name = request.getParameter("name");
        String pwd = request.getParameter("pwd");
        String type = request.getParameter("type");
        if(name != null && pwd != null && type != null) {
            if (type.equalsIgnoreCase("学生")) {
                StudentSql studentSql = new StudentSql();
                boolean b = studentSql.isStudent(name, pwd);
                boolean c = studentSql.isName(name);
                if(c){
                    if (b) {
                        Student student = new Student(name, pwd, type);
                        HttpSession session = request.getSession();
                        session.setAttribute("student", student);
                        session.setAttribute("type","学生");
                        session.setAttribute("name",name);
                        response.sendRedirect("stu/stu.jsp");
                    }
                    else {
                        JOptionPane.showMessageDialog(null, "账号或密码错误,请重新登录!!");
                        response.setHeader("refresh", "2;URL=login.jsp");
                    }
                }
                else {
                    JOptionPane.showMessageDialog(null, "未注册,请先注册!!");
                    response.getWriter().print("正在前往注册界面...");
                    response.setHeader("refresh", "1;URL=register.jsp");
                }
            }
            else if (type.equalsIgnoreCase("教师")) {
                TeacherSql teacherSql = new TeacherSql();
                boolean b = teacherSql.isTeacher(name, pwd);
                boolean c = teacherSql.isName(name);
                if(c) {
                    if (b) {
                        Teacher teacher = new Teacher(name, pwd, type);
                        HttpSession session = request.getSession();
                        session.setAttribute("teacher", teacher);
                        session.setAttribute("type","教师");
                        session.setAttribute("name", name);
                        response.sendRedirect("teacher/teacher.jsp");
                    } else {
                        JOptionPane.showMessageDialog(null, "账号或密码错误,请重新登录!!");
                        response.setHeader("refresh", "2;URL=login.jsp");
                    }
                }
                else {
                    JOptionPane.showMessageDialog(null, "未注册,请先注册!!");
                    response.getWriter().print("正在前往注册界面...");
                    response.setHeader("refresh", "1;URL=register.jsp");
                    }
            }
            else if (type.equalsIgnoreCase("管理员")) {
                AdminDao admindao = new AdminDao();
                boolean b = admindao.isAdmin(name, pwd);
                boolean c = admindao.isName(name);
                if(c){
                    if (b) {
                        Admin admin = new Admin(name, pwd, type);
                        HttpSession session = request.getSession();
                        session.setAttribute("admin", admin);
                        session.setAttribute("type","管理员");
                        session.setAttribute("name",name);
                        response.sendRedirect("admin/admin.jsp");
                    } else {
                        JOptionPane.showMessageDialog(null, "账号或密码错误,请重新登录!!");
                        response.setHeader("refresh", "2;URL=login.jsp");
                    }
                }
                else {
                    JOptionPane.showMessageDialog(null, "未注册,请先注册!!");
                    response.getWriter().print("正在前往注册界面...");
                    response.setHeader("refresh", "1;URL=register.jsp");
                }
            }
            }
        else{
            JOptionPane.showMessageDialog(null, "请补全信息！！");
            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            rd.forward(request, response);
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
