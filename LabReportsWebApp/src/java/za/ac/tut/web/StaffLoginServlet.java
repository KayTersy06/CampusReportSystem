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
import javax.servlet.http.HttpSession;
import za.ac.tut.model.bl.MaintenanceFacadeLocal;
import za.ac.tut.model.entity.Maintenance;

/**
 *
 * @author LUMGILE
 */
public class StaffLoginServlet extends HttpServlet {

    @EJB MaintenanceFacadeLocal mfl;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        HttpSession session = request.getSession(true);
        Long id = Long.parseLong(request.getParameter("id"));
        String password = request.getParameter("password");
        
        Maintenance main = mfl.login(id, password);
        Long mainId = main.getId();
        String names = main.getNames();
        
        session.setAttribute("mainId", mainId);
        session.setAttribute("names", names);
        session.setAttribute("password", password);
        
           
        RequestDispatcher disp = request.getRequestDispatcher("staff_dashboard.jsp");
        disp.forward(request, response);
    }
}
