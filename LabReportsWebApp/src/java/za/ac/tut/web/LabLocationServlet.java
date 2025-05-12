package za.ac.tut.web;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/LabLocationServlet")
public class LabLocationServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String enteredLab = request.getParameter("labQuery");

        
        request.setAttribute("lab", enteredLab);
        request.getRequestDispatcher("labSearchResult.jsp").forward(request, response);
    }
}
