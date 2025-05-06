package za.ac.tut.model.ejb.bl;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.ejb.Stateless;

/**
 *
 * @author kayte
 */
@Stateless
public class StudentManagerSB implements StudentManagerSBLocal {
    @Override
    public Boolean checkStudentNumber(String studNo) {
        boolean isValid = false;
        if(studNo.length()==9) {
            isValid = true;     
        }
        return isValid;
    }

    @Override
    public Boolean validatePassword(String password, String studNo) throws StudentNumberLengthException {
        boolean isValidPswd = false;
        int isDigit = 0, isCharacter = 0, isUpper = 0, isLower = 0;
        if(checkStudentNumber(studNo)) {
            if(password.length() >= 8) {
                for(int i = 0; i<password.length(); i++) {
                    if(Character.isDigit(i)) {
                        isDigit++;
                    } else if(Character.isUpperCase(i)) {
                        isUpper++;
                    } else if(Character.isLowerCase(i)) {
                        isLower++;
                    } else {
                        isCharacter++;
                    }
                }
                if((isDigit>=2) && (isUpper>=1) && (isLower>=1) && (isCharacter>=1)) {
                    isValidPswd = true;
                    //throw password validation exception if not
                }
            }
        }  else {
            throw new StudentNumberLengthException("The student number should be 9 characters long.");
        }
        return isValidPswd;
    }

    @Override
    public String hashPassword(String password, String studNo) {
        String hashPassword = "";
        if(validatePassword(password, studNo)) {
            try {
                MessageDigest md = MessageDigest.getInstance("SHA-256");
                byte[] hashedBytes = md.digest(password.getBytes());
                
                StringBuilder sb = new StringBuilder();
                for(byte b: hashedBytes) {
                    sb.append(String.format("%02x", b));
                }
                
                hashPassword = sb.toString();
                
            } catch (NoSuchAlgorithmException ex) {
                Logger.getLogger(StudentManagerSB.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
        return hashPassword;
    }
}
