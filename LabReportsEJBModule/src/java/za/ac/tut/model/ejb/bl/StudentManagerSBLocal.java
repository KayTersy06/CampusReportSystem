package za.ac.tut.model.ejb.bl;

import javax.ejb.Local;

/**
 *
 * @author kayte
 */
@Local
public interface StudentManagerSBLocal {

    Boolean checkStudentNumber(String password) ;

    Boolean validatePassword(String password, String studNo) throws StudentNumberLengthException;

    String hashPassword(String password, String studNo);
    
}
