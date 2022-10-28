/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author PC
 */
public class ProductDAO {

    Connection con = null;          // connect to SQL server
    PreparedStatement ps = null;    // move query from Netbeen to SQl
    ResultSet rs = null;            // save result query

    public List<Product> getListProduct() {
        List<Product> list = new ArrayList<>();
        try {
            String query = "select * from Product;"; // your query to excute in SQL
            con = new DBContext().getConnection();   // open connection to SQL
            ps = con.prepareStatement(query);        // move query from Netbeen to SQl
            rs = ps.executeQuery();                  // the same with click to "excute" btn;

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6)));
            }
            return list;
        } catch (Exception e) {
            e.getMessage();
        }
        return list;
    }

    public List<Product> getListProductByCategoryID(String categoryID) {
        List<Product> list = new ArrayList<>();
        try {
            String query = "select * from Product\n"
                    + "where catelogy_id = ?;";                // your query to excute in SQL
            con = new DBContext().getConnection();   // open connection to SQL
            ps = con.prepareStatement(query);        // move query from Netbeen to SQl
            ps.setString(1, categoryID);             // set categoryID get from servelet to ?
            rs = ps.executeQuery();                  // the same with click to "excute" btn;

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6)));
            }
            return list;
        } catch (Exception e) {
            e.getMessage();
        }
        return list;
    }

    public Product getListProductProductID(String productID) {
        try {
            String query = "select * from Product\n"
                    + "where product_id = ?;";                // your query to excute in SQL
            con = new DBContext().getConnection();   // open connection to SQL
            ps = con.prepareStatement(query);        // move query from Netbeen to SQl
            ps.setString(1, productID);             // set categoryID get from servelet to ?
            rs = ps.executeQuery();                  // the same with click to "excute" btn;

            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
            e.getMessage();
        }
        return null;
    }

    public List<Product> searchProductByTitle(String txtSearch) {
        List<Product> list = new ArrayList<>();
        try {
            String query = "select * from product where "
                    + "product_tittle like ?;";      // your query to excute in SQL
            con = new DBContext().getConnection();   // open connection to SQL
            ps = con.prepareStatement(query);        // move query from Netbeen to SQl
            ps.setString(1, "%" + txtSearch + "%");  // set categoryID get from servelet to ?
            rs = ps.executeQuery();                  // the same with click to "excute" btn;

            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5),
                        rs.getString(6)));
            }
            return list;
        } catch (Exception e) {
            e.getMessage();
        }
        return list;
    }

    public static void main(String[] args) {
        ProductDAO bdao = new ProductDAO();
        List<Product> list = new ArrayList<>();
        list = bdao.searchProductByTitle("&");
        System.out.println("/*=======Database NowsiGon/Product=========*/");
        for (Product p : list) {
            System.out.println("ID: " + p.getID() 
                    + "; Name:" + p.getTitle() 
                    + "; Img: " + p.getImage() 
                    + "; Price: " + p.getPrice() 
                    + "; Percent: " + p.getSalePercent()
                    + "; Decript: " + p.getDecript());
        }        
    }
}
