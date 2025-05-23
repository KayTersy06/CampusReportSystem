package za.ac.tut.model.bl;

import za.ac.tut.model.bl.AbstractFacade;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.ac.tut.model.entity.Lab;

/**
 *
 * @author kayte
 */
@Stateless
public class LabFacade extends AbstractFacade<Lab> implements LabFacadeLocal {

    @PersistenceContext(unitName = "LabReportsEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public LabFacade() {
        super(Lab.class);
    }
    
}
