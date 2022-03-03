/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author MeGa
 */
public class ConnectionProvider {

    private static Connection con;

    public static Connection getConnection() {
        try {
            if (con == null) {
                // Driver class load
                Class.forName("com.mysql.jdbc.Driver");
                // Create Connection
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jobportal", "root", "111111");
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error : " + e.getMessage());
        }

        return con;
    }
}
