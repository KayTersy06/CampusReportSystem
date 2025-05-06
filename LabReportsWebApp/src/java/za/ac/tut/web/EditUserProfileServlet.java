package za.ac.tut.web;

import java.io.IOException;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import za.ac.tut.model.bl.StudentFacadeLocal;
import za.ac.tut.model.entity.Student;

/**
 *
 * @author kayte
 */
public class EditUserProfileServlet extends HttpServlet {
    @EJB StudentFacadeLocal sfl;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        Long id = Long.parseLong(request.getParameter("id"));
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String password = request.getParameter("password");
        
        Student student = editStudent(id, name, surname, password);
        sfl.edit(student);
        
        RequestDispatcher disp = request.getRequestDispatcher("profile.jsp");
        disp.forward(request, response);
    }

    private Student editStudent(Long id, String name, String surname, String password) {
        Student student = new Student(id, name, surname, password);
        return student;
    }
}
