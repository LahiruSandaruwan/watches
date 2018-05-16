package pojos;
// Generated Apr 20, 2018 2:27:28 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * HomeTown generated by hbm2java
 */
public class HomeTown  implements java.io.Serializable {


     private Integer idHomeTown;
     private String name;
     private Set shippingCosts = new HashSet(0);
     private Set shippingAddresses = new HashSet(0);

    public HomeTown() {
    }

    public HomeTown(String name, Set shippingCosts, Set shippingAddresses) {
       this.name = name;
       this.shippingCosts = shippingCosts;
       this.shippingAddresses = shippingAddresses;
    }
   
    public Integer getIdHomeTown() {
        return this.idHomeTown;
    }
    
    public void setIdHomeTown(Integer idHomeTown) {
        this.idHomeTown = idHomeTown;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public Set getShippingCosts() {
        return this.shippingCosts;
    }
    
    public void setShippingCosts(Set shippingCosts) {
        this.shippingCosts = shippingCosts;
    }
    public Set getShippingAddresses() {
        return this.shippingAddresses;
    }
    
    public void setShippingAddresses(Set shippingAddresses) {
        this.shippingAddresses = shippingAddresses;
    }




}


