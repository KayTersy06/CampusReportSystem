package za.ac.tut.web;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.entity.Report;
import za.ac.tut.model.bl.ReportFacadeLocal;


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
        try {
            Long id = Long.parseLong(request.getParameter("id"));
            Report report = reportFacade.find(id);
            
            if (report != null) {
                request.setAttribute("report", report);
                request.getRequestDispatcher("update_report.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Report not found");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("error", "Error: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            Long id = Long.parseLong(request.getParameter("id"));
            String lab = request.getParameter("lab");
            String description = request.getParameter("description");
            String status = request.getParameter("status");
            
            Report report = reportFacade.find(id);
            
            if (report != null) {
                report.setLab(lab);
                report.setDescription(description);
                report.setStatus(status);
                reportFacade.edit(report);
                
                request.setAttribute("updateStatus", "Report updated successfully");
                request.getRequestDispatcher("update_report_outcome.jsp").forward(request, response);
            } else {
                request.setAttribute("error", "Report not found");
                request.getRequestDispatcher("error.jsp").forward(request, response);
            }
        } catch (Exception e) {
            request.setAttribute("error", "Update failed: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }
    

}
