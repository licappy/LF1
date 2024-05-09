import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "yhServlet",urlPatterns = "/yhServlet")
public class yhServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 设置请求编码
        request.setCharacterEncoding("utf-8");
        // 设置响应编码
        response.setContentType("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String type1 = request.getParameter("type1");
        HttpSession session1 = request.getSession();
        session1.setAttribute("type1",type1);
        System.out.println(type1);
        response.sendRedirect("admin/yhdisplay.jsp");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
