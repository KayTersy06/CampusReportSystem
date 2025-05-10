package za.ac.tut.model.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
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

    @Override
    public Maintenance login(Long id, String password) {
        Query query = em.createQuery("SELECT m FROM Maintenance m WHERE m.id = :staffNo AND m.password = :pswd");
        query.setParameter("staffNo", id);
        query.setParameter("pswd", password);
        Maintenance maintenance = (Maintenance)query.getSingleResult();
        return maintenance;  
    }
    
}
