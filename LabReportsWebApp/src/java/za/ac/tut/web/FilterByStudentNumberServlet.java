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
public class FilterByStudentNumberServlet extends HttpServlet {
@EJB

ReportFacadeLocal rfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
            // Retrieve the student number from the request
        String studentNumParam = request.getParameter("studentNum");
        Long studentNum = null;
        try {
            studentNum = Long.parseLong(studentNumParam);
        } catch (NumberFormatException e) {
            // Handle the case where the student number is not a valid number
            request.setAttribute("errorMessage", "Invalid student number format.");
            request.getRequestDispatcher("filter_report_by_studentnum.jsp").forward(request, response);
            return;
        }

         // Use the ReportService to find reports by student number
        List<Report> reports = rfl.findReportsByStudentNum(studentNum);
        // Set the reports as a request attribute
        request.setAttribute("reports", reports);
        request.setAttribute("studentNum", studentNum);
        // Forward to the results JSP page
        request.getRequestDispatcher("filter_report_by_studentnumber_results.jsp").forward(request, response);
    }
    
}
