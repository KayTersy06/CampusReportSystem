package za.ac.tut.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ProgressStatusServlet")
public class ProgressStatusServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
        String status = request.getParameter("status");

       
        request.setAttribute("selectedStatus", status);
        request.getRequestDispatcher("statusResult.jsp").forward(request, response);
    }
}
