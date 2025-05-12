package za.ac.tut.model.bl;

import java.util.List;
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
    @Override
    public void create(Report report) {
        em.persist(report);
    }

    @Override
    public void edit(Report report) {
        em.merge(report);
    }

    @Override
    public void remove(Report report) {
        em.remove(em.merge(report));
    }

    @Override
    public Report find(Object id) {
        return em.find(Report.class, id);
    }

    @Override
    public List<Report> findAll() {
        return em.createQuery("SELECT r FROM Report r", Report.class).getResultList();
    }

    @Override
    public List<Report> findRange(int[] range) {
        return em.createQuery("SELECT r FROM Report r", Report.class)
                 .setMaxResults(range[1] - range[0])
                 .setFirstResult(range[0])
                 .getResultList();
    }

    @Override
    public int count() {
        return ((Long) em.createQuery("SELECT COUNT(r) FROM Report r").getSingleResult()).intValue();
    }

    @Override
    public List<Report> findReportsByCategory(String category) {
    return em.createQuery("SELECT r FROM Report r WHERE r.category = :category", Report.class)
             .setParameter("category", category)
             .getResultList();    }
    
       public List<Report> findReportsByStudentNum(Long studentNum) {
        return em.createQuery("SELECT r FROM Report r WHERE r.RepoterStudentNum = :studentNum", Report.class)
                 .setParameter("studentNum", studentNum)
                 .getResultList();
    }
}
