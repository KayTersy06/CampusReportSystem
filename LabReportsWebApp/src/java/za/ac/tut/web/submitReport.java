package za.ac.tut.web;

import java.io.IOException;
import java.util.Date;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.model.bl.LabFacadeLocal;
import za.ac.tut.model.bl.ReportFacadeLocal;
import za.ac.tut.model.entity.Lab;
import za.ac.tut.model.entity.Report;

/**
 *
 * @author USER
 */
public class submitReport extends HttpServlet {

    @EJB
    private ReportFacadeLocal rfl;
    @EJB
    private LabFacadeLocal lfl;
    
   @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        HttpSession session = request.getSession();
        String description = request.getParameter("description");
        Long repID = Long.parseLong(request.getParameter("repID"));
        String lab = request.getParameter("lab");
        
        
        
        Long studId = (Long) session.getAttribute("sessID");
        Report rep = new Report();
        rep.setId(repID);
        rep.setCreationDate(new Date());
        rep.setDescription(description);
        rep.setLab(lab);
        rep.setRepoterStudentNum(studId);
        rep.setStatus("not Fixed");
        
        rfl.create(rep);
        
        
        Lab labObject = new Lab();
        labObject.setName(lab);
        labObject.setDate(new Date());
        labObject.setRep(rep);
        
        lfl.create(labObject);
        
        
        
        
        request.setAttribute("rep", rep);
        
        RequestDispatcher resMan = request.getRequestDispatcher("reportAdded.jsp");
        resMan.forward(request, response);
       
        
    }

}
