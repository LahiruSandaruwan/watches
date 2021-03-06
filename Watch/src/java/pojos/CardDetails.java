package pojos;
// Generated Apr 20, 2018 2:27:28 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * CardDetails generated by hbm2java
 */
public class CardDetails  implements java.io.Serializable {


     private Integer idCardDetails;
     private User user;
     private String name;
     private String type;
     private String number;
     private String csv;
     private String expDate;
     private Set checkouts = new HashSet(0);

    public CardDetails() {
    }

	
    public CardDetails(User user) {
        this.user = user;
    }
    public CardDetails(User user, String name, String type, String number, String csv, String expDate, Set checkouts) {
       this.user = user;
       this.name = name;
       this.type = type;
       this.number = number;
       this.csv = csv;
       this.expDate = expDate;
       this.checkouts = checkouts;
    }
   
    public Integer getIdCardDetails() {
        return this.idCardDetails;
    }
    
    public void setIdCardDetails(Integer idCardDetails) {
        this.idCardDetails = idCardDetails;
    }
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }
    public String getName() {
        return this.name;
    }
    
    public void setName(String name) {
        this.name = name;
    }
    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    public String getNumber() {
        return this.number;
    }
    
    public void setNumber(String number) {
        this.number = number;
    }
    public String getCsv() {
        return this.csv;
    }
    
    public void setCsv(String csv) {
        this.csv = csv;
    }
    public String getExpDate() {
        return this.expDate;
    }
    
    public void setExpDate(String expDate) {
        this.expDate = expDate;
    }
    public Set getCheckouts() {
        return this.checkouts;
    }
    
    public void setCheckouts(Set checkouts) {
        this.checkouts = checkouts;
    }




}


