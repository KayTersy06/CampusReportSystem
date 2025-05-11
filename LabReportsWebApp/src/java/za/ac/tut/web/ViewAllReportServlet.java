/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.util.List;
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
public class ViewAllReportServlet extends HttpServlet {

    
@EJB
    private ReportFacadeLocal reportFacade;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            // Get all reports from the database
            List<Report> reports = reportFacade.findAll();
            
            // Set the reports as a request attribute
            request.setAttribute("reports", reports);
            
            // Forward to the view JSP
            request.getRequestDispatcher("view_all_report_outcome.jsp").forward(request, response);
        } catch (Exception e) {
            // Handle any errors
            request.setAttribute("error", "Error retrieving reports: " + e.getMessage());
            request.getRequestDispatcher("error.jsp").forward(request, response);
        }
    }

    

}
