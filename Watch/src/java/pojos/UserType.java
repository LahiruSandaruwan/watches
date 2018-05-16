package pojos;
// Generated Apr 20, 2018 2:27:28 PM by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * UserType generated by hbm2java
 */
public class UserType  implements java.io.Serializable {


     private Integer idUserType;
     private String type;
     private Set users = new HashSet(0);

    public UserType() {
    }

    public UserType(String type, Set users) {
       this.type = type;
       this.users = users;
    }
   
    public Integer getIdUserType() {
        return this.idUserType;
    }
    
    public void setIdUserType(Integer idUserType) {
        this.idUserType = idUserType;
    }
    public String getType() {
        return this.type;
    }
    
    public void setType(String type) {
        this.type = type;
    }
    public Set getUsers() {
        return this.users;
    }
    
    public void setUsers(Set users) {
        this.users = users;
    }




}


