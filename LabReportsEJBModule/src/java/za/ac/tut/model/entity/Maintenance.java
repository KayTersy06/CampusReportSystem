package za.ac.tut.model.entity;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 *
 * @author kayte
 */
@Entity
@Table(name = "MAINTENANCEPERSONEL_TBL")
public class Maintenance implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Column(name = "MAINTENANCEID")
    private Long id;
    @Column(name = "FULLNAME", nullable = false, length = 50)
    private String names;

    public Maintenance() {
    }

    public Maintenance(Long id, String names) {
        this.id = id;
        this.names = names;
    }

    public String getNames() {
        return names;
    }

    public void setNames(String names) {
        this.names = names;
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
        if (!(object instanceof Maintenance)) {
            return false;
        }
        Maintenance other = (Maintenance) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "za.ac.tut.model.entity.Maintenance[ id=" + id + " ]";
    }
    
}
