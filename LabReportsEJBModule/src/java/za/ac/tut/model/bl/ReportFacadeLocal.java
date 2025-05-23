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
    List<Report> findReportsByCategory(String category);
    List<Report> findReportsByStudentNum(Long studentNum);
    List<Report> findAll();
    
    List<Report> findRange(int[] range);

    int count();
    
}
