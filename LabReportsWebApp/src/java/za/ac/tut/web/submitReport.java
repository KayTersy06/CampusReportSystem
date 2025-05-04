package za.ac.tut.web;

import java.io.IOException;
import java.util.Date;
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
 * @author USER
 */
public class submitReport extends HttpServlet {

    @EJB
    private ReportFacadeLocal rfl;
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        String description = request.getParameter("description");
        Long repID = Long.parseLong(request.getParameter("repID"));
        String lab = request.getParameter("lab");
        
        Report rep = new Report();
        rep.setId(repID);
        rep.setCreationDate(new Date());
        rep.setDescription(description);
        rep.setLab(lab);
        rep.setStatus("not Fixed");
        
        request.setAttribute("rep", rep);
        
        RequestDispatcher resMan = request.getRequestDispatcher("reportAdded.jsp");
        resMan.forward(request, response);
       
        
    }

}
