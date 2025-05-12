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
        
        // Dummy lab location data (can be replaced with database logic)
        List<String> labLocations = new ArrayList<>();
        labLocations.add("Lab A - First Floor");
        labLocations.add("Lab B - Second Floor");
        labLocations.add("Lab C - Third Floor");

        // Set lab locations in the request scope and forward to JSP
        request.setAttribute("locations", labLocations);
        request.getRequestDispatcher("labLocationsOutcome.jsp").forward(request, response);
    }
}
