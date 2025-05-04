package za.ac.tut.model.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import za.ac.tut.model.entity.Student;

/**
 *
 * @author kayte
 */
@Stateless
public class StudentFacade extends AbstractFacade<Student> implements StudentFacadeLocal {

    @PersistenceContext(unitName = "LabReportsEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public StudentFacade() {
        super(Student.class);
    }

    @Override
    public Student login(Long id, String password) {
        Query query = em.createQuery("SELECT s FROM Student s WHERE s.id = :studNum AND s.password = :pswd");
        query.setParameter("studNum", id);
        query.setParameter("pswd", password);
        Student student = (Student)query.getSingleResult();
        return student;
    }
    
}
