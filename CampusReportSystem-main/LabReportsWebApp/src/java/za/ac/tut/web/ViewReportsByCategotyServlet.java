/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.ReportFacadeLocal;
import za.ac.tut.model.entity.Report;

/**
 *
 * @author LUMGILE
 */
public class ViewReportsByCategotyServlet extends HttpServlet {

    @EJB
    private ReportFacadeLocal reportFacade;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // 1. Get category from request
        String category = request.getParameter("category");

        // 2. Get list of reports from EJB
        List<Report> reports = reportFacade.findReportsByCategory(category);

        // 3. Set attributes and forward to JSP
        request.setAttribute("category", category);
        request.setAttribute("reports", reports);

        RequestDispatcher dispatcher = request.getRequestDispatcher("view_reports_by_category_outcome.jsp");
        dispatcher.forward(request, response);
    }
}
