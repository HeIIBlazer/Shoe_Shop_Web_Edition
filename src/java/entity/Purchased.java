package entity;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;


@Entity
public class Purchased implements Serializable  {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private float moneys;
    @Temporal(TemporalType.TIMESTAMP)
    private Date PurchasedDate;

    
    @Override
    public String toString() {
        return "Purchased{" + "id=" + id + ", moneys=" + moneys + ", PurchasedDate=" + PurchasedDate + '}';
    }


    public float getMoneys() {
        return moneys;
    }

    public void setMoneys(float moneys) {
        this.moneys = moneys;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getPurchasedDate() {
        return PurchasedDate;
    }

    public void setPurchasedDate(Date PurchasedDate) {
        this.PurchasedDate = PurchasedDate;
    }
    

    }
    
    

