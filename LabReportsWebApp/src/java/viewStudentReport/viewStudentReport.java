/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package viewStudentReport;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.model.bl.ReportFacadeLocal;
import za.ac.tut.model.entity.Report;
import za.ac.tut.model.entity.Student;

/**
 *
 * @author USER
 */
public class viewStudentReport extends HttpServlet {

   @EJB
   private ReportFacadeLocal rfl;
   
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
        
        HttpSession session = request.getSession();
        
        Student stud = (Student) session.getAttribute("student");
        Long studId = stud.getId();
        
        
        
        List<Report> resp = rfl.FindStudentReps(studId);
        request.setAttribute("resp", resp);
        
        RequestDispatcher resMan = request.getRequestDispatcher("viewReportByStudent.jsp");
        resMan.forward(request, response);
        
        
        
        
        
    }

    
}
