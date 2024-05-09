import Dao.AdminSql;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name = "SearchServlet",urlPatterns = "/SearchServlet")
public class SearchServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        response.setCharacterEncoding("utf-8");
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
        String name = request.getParameter("name");
        String type= String.valueOf(session.getAttribute("type"));
        if (type.equalsIgnoreCase("教师")) {
            boolean b = AdminSql.queryTeacher(name);
            if (b) {
                out.write("查询成功");
                response.setHeader("refresh", "1;URL=yhdisplay.jsp?pages=1");
            } else {
                out.write("查询失败");
                response.setHeader("refresh", "1;URL=yh.jsp?pages=1");
            }
        }
        if (type.equalsIgnoreCase("学生")) {
            boolean c = AdminSql.queryStudent(name);
            if (c) {
                out.write("查询成功");
                response.setHeader("refresh", "1;URL=yhdisplay.jsp?pages=1");
            } else {
                out.write("查询失败");
                response.setHeader("refresh", "1;URL=yh.jsp?pages=1");
            }
        }
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
