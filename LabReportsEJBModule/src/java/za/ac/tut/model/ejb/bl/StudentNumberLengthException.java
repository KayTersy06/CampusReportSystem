package za.ac.tut.model.ejb.bl;

import javax.ejb.EJBException;

/**
 *
 * @author kayte
 */
public class StudentNumberLengthException extends EJBException{
    public StudentNumberLengthException(String message) {
        super(message);
    }
}
