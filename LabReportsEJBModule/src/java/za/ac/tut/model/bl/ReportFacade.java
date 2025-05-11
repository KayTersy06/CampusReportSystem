package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
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

@Override
public List<Report> FindStudentReps(Long studentNumber) {
    Query query = em.createQuery("SELECT r FROM Report r WHERE r.RepoterStudentNum = :studentNumber");
    query.setParameter("studentNumber", studentNumber);
    return query.getResultList();
}


    
}
