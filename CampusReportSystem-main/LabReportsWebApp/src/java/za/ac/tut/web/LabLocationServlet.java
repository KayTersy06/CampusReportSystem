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
<<<<<<< HEAD:CampusReportSystem-main/LabReportsWebApp/src/java/za/ac/tut/web/LabLocationServlet.java
        
        // Dummy lab location data (can be replaced with database logic)
        List<String> labLocations = new ArrayList<>();
        labLocations.add("Lab A - First Floor");
        labLocations.add("Lab B - Second Floor");
        labLocations.add("Lab C - Third Floor");

        // Set lab locations in the request scope and forward to JSP
        request.setAttribute("locations", labLocations);
        request.getRequestDispatcher("labLocationsOutcome.jsp").forward(request, response);
=======
        String enteredLab = request.getParameter("labQuery");

        
        request.setAttribute("lab", enteredLab);
        request.getRequestDispatcher("labSearchResult.jsp").forward(request, response);
>>>>>>> 77cf3a8d259b4edb4868c2bd9ebcee976c3a205b:LabReportsWebApp/src/java/za/ac/tut/web/LabLocationServlet.java
    }
}
