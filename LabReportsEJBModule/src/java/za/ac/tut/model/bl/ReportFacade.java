package za.ac.tut.model.bl;

import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import za.ac.tut.model.entity.Report;

/**
 *
 * @author kayte
 */
@Stateless
public class ReportFacade extends AbstractFacade<Report> implements ReportFacadeLocal {

    @PersistenceContext(unitName = "LabReportsEJBModulePU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public ReportFacade() {
        super(Report.class);
    }
    
}
