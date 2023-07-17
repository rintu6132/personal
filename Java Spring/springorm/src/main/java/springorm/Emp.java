package springorm;

//import jakarta.persistence.Entity;
//import jakarta.persistence.Id;
//import jakarta.persistence.Table;
//import jakarta.persistence.Column;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity(name = "emp")
@Table(name = "employee")
public class Emp {
    @Id
    @Column(name = "id")
    private int eId;
    @Column(name = "name")
    private String eName;
    @Column(name = "address")
    private String eAddress;

    public int geteId() {
        return eId;
    }

    public void seteId(int eId) {
        this.eId = eId;
    }

    public String geteName() {
        return eName;
    }

    public void seteName(String eName) {
        this.eName = eName;
    }

    public String geteAddress() {
        return eAddress;
    }

    public void seteAddress(String eAddress) {
        this.eAddress = eAddress;
    }

    public Emp(int eId, String eName, String eAddress) {
        this.eId = eId;
        this.eName = eName;
        this.eAddress = eAddress;
    }

    public Emp() {
    }
}
