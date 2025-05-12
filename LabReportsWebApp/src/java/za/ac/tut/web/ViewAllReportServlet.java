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
import za.ac.tut.model.entity.Report;
import za.ac.tut.model.bl.ReportFacadeLocal;

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
        List<Report> reports = reportFacade.findAll();
        
        // Set attributes and forward to output page
        request.setAttribute("reports", reports);
        request.getRequestDispatcher("viewAllReportsOutput.jsp").forward(request, response);
    }

    

}
