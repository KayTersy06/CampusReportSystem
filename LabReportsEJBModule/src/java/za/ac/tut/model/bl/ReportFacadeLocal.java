package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.model.entity.Report;

/**
 *
 * @author kayte
 */
@Local
public interface ReportFacadeLocal {

    void create(Report report);

    void edit(Report report);

    void remove(Report report);

    Report find(Object id);

    List<Report> findAll();

    List<Report> findRange(int[] range);

    int count();
    
}
