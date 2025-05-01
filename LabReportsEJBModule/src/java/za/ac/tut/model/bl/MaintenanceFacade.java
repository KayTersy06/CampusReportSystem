package za.ac.tut.model.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.ac.tut.model.entity.Maintenance;

/**
 *
 * @author kayte
 */
@Stateless
public class MaintenanceFacade extends AbstractFacade<Maintenance> implements MaintenanceFacadeLocal {

    @PersistenceContext(unitName = "LabReportsEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public MaintenanceFacade() {
        super(Maintenance.class);
    }
    
}
