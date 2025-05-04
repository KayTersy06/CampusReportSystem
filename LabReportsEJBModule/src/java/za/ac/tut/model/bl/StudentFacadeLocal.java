package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.model.entity.Student;

/**
 *
 * @author kayte
 */
@Local
public interface StudentFacadeLocal {

    void create(Student student);
    void edit(Student student);
    void remove(Student student);
    Student find(Object id);
    Student login(Long id, String password);
    List<Student> findAll();
    List<Student> findRange(int[] range);
    int count();
}
