
package entity;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Model implements Serializable {
    @Id @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String shoeName;
    private String shoeMaker;
    @OneToOne
    private Picture picture = new Picture();
    private float shoePrice;
    private float shoeSize;
    private float amount;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getShoeName() {
        return shoeName;
    }

    public void setShoeName(String shoeName) {
        this.shoeName = shoeName;
    }

    public String getShoeMaker() {
        return shoeMaker;
    }

    public void setShoeMaker(String shoeMaker) {
        this.shoeMaker = shoeMaker;
    }

    public Picture getPicture() {
        return picture;
    }

    public void setPicture(Picture picture) {
        this.picture = picture;
    }

    public float getShoePrice() {
        return shoePrice;
    }

    public void setShoePrice(float shoePrice) {
        this.shoePrice = shoePrice;
    }

    public float getShoeSize() {
        return shoeSize;
    }

    public void setShoeSize(float shoeSize) {
        this.shoeSize = shoeSize;
    }

    public float getAmount() {
        return amount;
    }

    public void setAmount(float amount) {
        this.amount = amount;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 47 * hash + Objects.hashCode(this.id);
        hash = 47 * hash + Objects.hashCode(this.shoeName);
        hash = 47 * hash + Objects.hashCode(this.shoeMaker);
        hash = 47 * hash + Objects.hashCode(this.picture);
        hash = 47 * hash + Float.floatToIntBits(this.shoePrice);
        hash = 47 * hash + Float.floatToIntBits(this.shoeSize);
        hash = 47 * hash + Float.floatToIntBits(this.amount);
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Model other = (Model) obj;
        if (Float.floatToIntBits(this.shoePrice) != Float.floatToIntBits(other.shoePrice)) {
            return false;
        }
        if (Float.floatToIntBits(this.shoeSize) != Float.floatToIntBits(other.shoeSize)) {
            return false;
        }
        if (Float.floatToIntBits(this.amount) != Float.floatToIntBits(other.amount)) {
            return false;
        }
        if (!Objects.equals(this.shoeName, other.shoeName)) {
            return false;
        }
        if (!Objects.equals(this.shoeMaker, other.shoeMaker)) {
            return false;
        }
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        if (!Objects.equals(this.picture, other.picture)) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Model{" + "id=" + id + 
                ", shoeName=" + shoeName + 
                ", shoeMaker=" + shoeMaker + 
                ", picture=" + picture + 
                ", shoePrice=" + shoePrice + 
                ", shoeSize=" + shoeSize + 
                ", amount=" + amount + '}';
    }


    }



    
    





