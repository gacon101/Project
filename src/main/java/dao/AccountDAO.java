/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import context.DBContext;
import entity.Customer;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import entity.Account;

/**
 *
 * @author PC
 */
public class AccountDAO {

    Connection con = null;          // connect to SQL server
    PreparedStatement ps = null;    // move query from Netbeen to SQl
    ResultSet rs = null;            // save result query

    public Account loginAccount(String phone, String password) {
        String query = "select * from Account where account_phone = ? and account_password = ?;";
        try {
            // your query to excute in SQL
            con = new DBContext().getConnection(); // open connection to SQL
            ps = con.prepareStatement(query);      // move query from Netbeen to SQl
            ps.setString(1, phone); // set phone to the first ?
            ps.setString(2, password);  // set phone to the second ?

            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1)
                        , rs.getString(2)
                        , rs.getString(3)
                        , rs.getInt(4));
            }
        } catch (Exception e) {
            e.getMessage();
        }
        return null;
    }
    
//    public static void main(String[] args) {
//        AccountDAO adao = new AccountDAO();
//        Account a = adao.loginAccount("0352016906", "Kce160367@");
//        
//        if(a == null) {
//            System.out.println("A is null");
//        }else {
//            System.out.println(a.toString());
//        }   
//                
//    }
}
