package za.ac.tut.model.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author kayte
 */
@Entity
@Table(name = "REPORTS_TBL")
public class Report implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "REPORT_ID")
    private Long id;
    private String description;
    private String lab;
    private String status;
    private Long RepoterStudentNum ;
    
    @Temporal(TemporalType.TIMESTAMP)
    private Date creationDate;
    

    public Report() {
    }

    public Report(Long id, String description, String lab, String status, Long RepoterStudentNum, Date creationDate) {
        this.id = id;
        this.description = description;
        this.lab = lab;
        this.status = status;
        this.RepoterStudentNum = RepoterStudentNum;
        this.creationDate = creationDate;
    }

    public Long getRepoterStudentNum() {
        return RepoterStudentNum;
    }

    public void setRepoterStudentNum(Long RepoterStudentNum) {
        this.RepoterStudentNum = RepoterStudentNum;
    }


    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLab() {
        return lab;
    }

    public void setLab(String lab) {
        this.lab = lab;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(Date creationDate) {
        this.creationDate = creationDate;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Report)) {
            return false;
        }
        Report other = (Report) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "za.ac.tut.model.entity.Report[ id=" + id + " ]";
    }
    
}
