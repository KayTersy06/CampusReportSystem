/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package za.ac.tut.model.bl;

import java.util.List;
import javax.ejb.Local;
import za.ac.tut.model.entity.Lab;

/**
 *
 * @author USER
 */
@Local
public interface LabFacadeLocal {

    void create(Lab lab);

    void edit(Lab lab);

    void remove(Lab lab);

    Lab find(Object id);

    List<Lab> findAll();

    List<Lab> findRange(int[] range);

    int count();
    
}
