package za.ac.tut.web;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.ReportFacadeLocal;
import za.ac.tut.model.entity.Report;


/**
 *
 * @author ndzal
 */
public class UpdateReportServlet extends HttpServlet {

    @EJB
    private ReportFacadeLocal reportFacade;
@Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      Long reportId = Long.parseLong(request.getParameter("reportId"));
        String newStatus = request.getParameter("status");
        
        // Find the report and update its status
        Report report = reportFacade.find(reportId);
        String message;
        
        if (report != null) {
            String oldStatus = report.getStatus();
            report.setStatus(newStatus);
            reportFacade.edit(report);
            
            message = "Status updated successfully!<br>"
                    + "Report ID: " + reportId + "<br>"
                    + "Old Status: " + oldStatus + "<br>"
                    + "New Status: " + newStatus;
        } else {
            message = "Report with ID " + reportId + " not found!";
        }
        
        // Set attributes and forward to output page
        request.setAttribute("message", message);
        request.getRequestDispatcher("update_report_outcome.jsp").forward(request, response);
    }
    

}
