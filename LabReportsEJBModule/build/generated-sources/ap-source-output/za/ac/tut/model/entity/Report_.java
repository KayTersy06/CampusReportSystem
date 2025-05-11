package za.ac.tut.model.entity;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2025-05-11T14:11:10")
@StaticMetamodel(Report.class)
public class Report_ { 

    public static volatile SingularAttribute<Report, String> description;
    public static volatile SingularAttribute<Report, Long> RepoterStudentNum;
    public static volatile SingularAttribute<Report, Long> id;
    public static volatile SingularAttribute<Report, String> lab;
    public static volatile SingularAttribute<Report, Date> creationDate;
    public static volatile SingularAttribute<Report, String> status;

}