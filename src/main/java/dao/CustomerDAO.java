/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import entity.Customer;

/**
 *
 * @author PC
 */
public class CustomerDAO {

    Connection con = null;          // connect to SQL server
    PreparedStatement ps = null;    // move query from Netbeen to SQl
    ResultSet rs = null;            // save result query

    public List<Customer> getListCustomer() {
        List<Customer> list = new ArrayList<>();
        try {
            String query = "select * from Customer;";       // your query to excute in SQL
            con = new DBContext().getConnection();          // open connection to SQL
            ps = con.prepareStatement(query);               // move query from Netbeen to SQl
            rs = ps.executeQuery();                         // the same with click to "excute" btn;

            while (rs.next()) {
                list.add(new Customer(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getInt(6)));
            }
            return list;    
        } catch (Exception e) {
            e.getMessage();
        }
        return list;
    }

    public static void main(String[] args) {
        CustomerDAO cdao = new CustomerDAO();
        List<Customer> list = cdao.getListCustomer();

        for (Customer c : list) {
            System.out.println(
                    "ID: " + c.getID()
                    + "Name: " + c.getName()
                    + "Email: " + c.getEmail()
                    + "Phone: " + c.getPhone()
                    + "Address: " + c.getAddress()
                    + "Account ID: " + c.getAccountID()
            );
        }
    }
}
