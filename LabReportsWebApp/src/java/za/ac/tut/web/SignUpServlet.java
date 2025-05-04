package za.ac.tut.web;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.StudentFacadeLocal;
import za.ac.tut.model.ejb.bl.StudentManagerSB;
import za.ac.tut.model.ejb.bl.StudentManagerSBLocal;
import za.ac.tut.model.entity.Student;

/**
 *
 * @author kayte
 */
public class SignUpServlet extends HttpServlet {
    @EJB StudentFacadeLocal sfl;
    @EJB StudentManagerSBLocal sml;
    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String studNoStr = request.getParameter("id");
        Long id = Long.parseLong(studNoStr);
        String names = request.getParameter("names");
        String surname = request.getParameter("surname");
        String passwordStr = request.getParameter("password");
        
        //String hashedPassword = sml.hashPassword(passwordStr, studNoStr);
        
        Student student = createStudent(id, names, surname, passwordStr);
        sfl.create(student);
        
        RequestDispatcher disp = request.getRequestDispatcher("login.html");
        disp.forward(request, response);
    }

    private Student createStudent(Long id, String name, String surname, String hashedPassword) {
        Student s = new Student();
        s.setId(id);
        s.setName(name);
        s.setSurname(surname);
        s.setPassword(hashedPassword);
        
        return s;
    }
}
