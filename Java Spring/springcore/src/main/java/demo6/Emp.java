package demo6;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;

public class Emp {
    @Autowired
    @Qualifier("address")
    private Address address;

    public Address getAddress() {
        return address;
    }
//    @Autowired
    public void setAddress(Address address) {
        this.address = address;
    }
//    @Autowired
    public Emp(Address address) {
        this.address = address;
    }

    public Emp() {
    }

    @Override
    public String toString() {
        return "Emp{" +
                "address=" + address +
                '}';
    }
}
