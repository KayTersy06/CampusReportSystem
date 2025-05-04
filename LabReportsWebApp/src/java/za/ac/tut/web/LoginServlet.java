package za.ac.tut.web;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import za.ac.tut.model.bl.StudentFacadeLocal;
import za.ac.tut.model.entity.Student;

/**
 *
 * @author kayte
 */
public class LoginServlet extends HttpServlet {
    @EJB StudentFacadeLocal sfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(true);
        Long id = Long.parseLong(request.getParameter("id"));
        String password = request.getParameter("password");
        
        Student student = sfl.login(id, password);
        Long sessID = student.getId();
        String name = student.getName();
        String surname = student.getSurname();
        
        session.setAttribute("sessID", sessID);
        session.setAttribute("name", name);
        session.setAttribute("surname", surname);
        
        RequestDispatcher disp = request.getRequestDispatcher("user_dashboard.jsp");
        disp.forward(request, response);
    }
}
