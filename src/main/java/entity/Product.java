/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

/**
 *
 * @author PC
 */
public class Product {

    private int ID;
    private String title;
    private String image;
    private int price;
    private int salePercent;
    private String decript;
    private int quality;

    public Product() {
    }

    public Product(int ID, String title, String image, int price, int salePercent, String decript, int quality) {
        this.ID = ID;
        this.title = title;
        this.image = image;
        this.price = price;
        this.salePercent = salePercent;
        this.decript = decript;
        this.quality = quality;
    }

    public Product(int ID, String title, String image, int price) {
        this.ID = ID;
        this.title = title;
        this.image = image;
        this.price = price;
    }

    public Product(int ID, String title, String image, int price, int salePercent, String decript) {
        this.ID = ID;
        this.title = title;
        this.image = image;
        this.price = price;
        this.salePercent = salePercent;
        this.decript = decript;
    }
    
    

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getSalePercent() {
        return salePercent;
    }

    public void setSalePercent(int salePercent) {
        this.salePercent = salePercent;
    }

    public String getDecript() {
        return decript;
    }

    public void setDecript(String decript) {
        this.decript = decript;
    }

    public int getQuality() {
        return quality;
    }

    public void setQuality(int quality) {
        this.quality = quality;
    }

    @Override
    public String toString() {
        return "Product{" + "ID=" + ID + ", title=" + title + ", image=" + image + ", price="
                + price + ", salePercent=" + salePercent + ", decript=" + decript + ", quality=" + quality + '}';
    }
}
