<<<<<<< HEAD:CampusReportSystem-main/LabReportsWebApp/src/java/za/ac/tut/web/ProgressStatusServlet.java

package za.ac.tut.web;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
=======
package za.ac.tut.web;

import java.io.IOException;
>>>>>>> 77cf3a8d259b4edb4868c2bd9ebcee976c3a205b:LabReportsWebApp/src/java/za/ac/tut/web/ProgressStatusServlet.java
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

<<<<<<< HEAD:CampusReportSystem-main/LabReportsWebApp/src/java/za/ac/tut/web/ProgressStatusServlet.java
@WebServlet("/progressStatusServlet")
=======
@WebServlet("/ProgressStatusServlet")
>>>>>>> 77cf3a8d259b4edb4868c2bd9ebcee976c3a205b:LabReportsWebApp/src/java/za/ac/tut/web/ProgressStatusServlet.java
public class ProgressStatusServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        
<<<<<<< HEAD:CampusReportSystem-main/LabReportsWebApp/src/java/za/ac/tut/web/ProgressStatusServlet.java
        List<String> statuses = Arrays.asList(
            "Pending",
            "In Progress",
            "Awaiting Parts",
            "Resolved",
            "Closed"
        );

        request.setAttribute("statuses", statuses);
        request.getRequestDispatcher("progressStatusesOutcome.jsp").forward(request, response);
=======
        String status = request.getParameter("status");

       
        request.setAttribute("selectedStatus", status);
        request.getRequestDispatcher("statusResult.jsp").forward(request, response);
>>>>>>> 77cf3a8d259b4edb4868c2bd9ebcee976c3a205b:LabReportsWebApp/src/java/za/ac/tut/web/ProgressStatusServlet.java
    }
}
