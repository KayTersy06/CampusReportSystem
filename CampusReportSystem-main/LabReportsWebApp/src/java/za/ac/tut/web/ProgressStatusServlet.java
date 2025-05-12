
package za.ac.tut.web;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/progressStatusServlet")
public class ProgressStatusServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        List<String> statuses = Arrays.asList(
            "Pending",
            "In Progress",
            "Awaiting Parts",
            "Resolved",
            "Closed"
        );

        request.setAttribute("statuses", statuses);
        request.getRequestDispatcher("progressStatusesOutcome.jsp").forward(request, response);
    }
}
