package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.model.entity.Maintenance;

/**
 *
 * @author kayte
 */
@Local
public interface MaintenanceFacadeLocal {

    void create(Maintenance maintenance);

    void edit(Maintenance maintenance);

    void remove(Maintenance maintenance);

    Maintenance find(Object id);

    List<Maintenance> findAll();

    List<Maintenance> findRange(int[] range);

    int count();
    
}
