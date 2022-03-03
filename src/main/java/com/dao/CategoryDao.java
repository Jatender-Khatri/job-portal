/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.model.Category;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author MeGa
 */
public class CategoryDao {

    private Connection con;

    public CategoryDao(Connection con) {
        this.con = con;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        try {
            String query = "select * from category";
            PreparedStatement p = con.prepareStatement(query);
            ResultSet set = p.executeQuery();

            while (set.next()) {
                Category c = new Category();
                c.setId(set.getInt("id"));
                c.setName(set.getString("cName"));

                list.add(c);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error : " + e.getMessage());
        }
        return list;
    }
}
