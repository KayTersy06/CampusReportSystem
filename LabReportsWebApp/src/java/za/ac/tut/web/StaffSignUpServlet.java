/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.web;

import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.MaintenanceFacadeLocal;
import za.ac.tut.model.bl.StudentFacadeLocal;
import za.ac.tut.model.ejb.bl.StudentManagerSBLocal;
import za.ac.tut.model.entity.Maintenance;

/**
 *
 * @author LUMGILE
 */
public class StaffSignUpServlet extends HttpServlet {
  @EJB MaintenanceFacadeLocal mfl;
  
  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

            Long maintanenceID = Long.parseLong(request.getParameter("id"));
            String fullName = request.getParameter("names");
            String password = request.getParameter("password");
            
            Maintenance staffMember = new Maintenance(maintanenceID,fullName,password);
             mfl.create(staffMember);
        
        RequestDispatcher disp = request.getRequestDispatcher("staff_login.html");
        disp.forward(request, response);
    }

}
