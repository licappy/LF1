import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "exampleServlet",urlPatterns = "/exampleServlet")
public class exampleServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ans1 = request.getParameter("1");
        String ans2 = request.getParameter("2");
        String ans3 = request.getParameter("3");
        String ans4 = request.getParameter("4");
        int k = 0;//答题正确数
        if(ans1.equalsIgnoreCase("1")){
            k++;
        }
        if(ans2.equalsIgnoreCase("3")){
            k++;
        }
        if(ans3.equalsIgnoreCase("2")){
            k++;
        }
        if(ans4.equalsIgnoreCase("2")){
            k++;
        }
        int score = k*25;
        HttpSession session = request.getSession();
        session.setAttribute("result",score);
        RequestDispatcher rd = request.getRequestDispatcher("addScoreServlet");
        rd.forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
