/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.model.Location;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author MeGa
 */
public class LocationDao {

    private Connection con;

    public LocationDao(Connection con) {
        this.con = con;
    }

    public List<Location> getAllLocation() {
        List<Location> list = new ArrayList<>();
        try {
            String query = "select * from location";
            PreparedStatement p = con.prepareStatement(query);
            ResultSet set = p.executeQuery();

            while (set.next()) {
                Location l = new Location();
                l.setId(set.getInt("id"));
                l.setlName(set.getString("lName"));

                list.add(l);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error : " + e.getMessage());
        }
        return list;
    }
}
