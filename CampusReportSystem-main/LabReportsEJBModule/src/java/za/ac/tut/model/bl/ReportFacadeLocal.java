/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
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
<<<<<<< HEAD:CampusReportSystem-main/LabReportsEJBModule/src/java/za/ac/tut/model/bl/ReportFacadeLocal.java
=======
    List<Report> findReportsByCategory(String category);
>>>>>>> 77cf3a8d259b4edb4868c2bd9ebcee976c3a205b:LabReportsEJBModule/src/java/za/ac/tut/model/bl/ReportFacadeLocal.java

    List<Report> findAll();
    
    List<Report> findRange(int[] range);

    int count();
    
}
