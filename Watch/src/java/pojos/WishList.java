package pojos;
// Generated Apr 20, 2018 2:27:28 PM by Hibernate Tools 4.3.1



/**
 * WishList generated by hbm2java
 */
public class WishList  implements java.io.Serializable {


     private Integer idWishList;
     private Stock stock;
     private User user;

    public WishList() {
    }

    public WishList(Stock stock, User user) {
       this.stock = stock;
       this.user = user;
    }
   
    public Integer getIdWishList() {
        return this.idWishList;
    }
    
    public void setIdWishList(Integer idWishList) {
        this.idWishList = idWishList;
    }
    public Stock getStock() {
        return this.stock;
    }
    
    public void setStock(Stock stock) {
        this.stock = stock;
    }
    public User getUser() {
        return this.user;
    }
    
    public void setUser(User user) {
        this.user = user;
    }




}

