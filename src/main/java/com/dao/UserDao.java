/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author MeGa
 */
public class UserDao {

    private Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }

    public boolean addUser(User u) {
        boolean f = false;
        try {
            String insert = "insert into user(name,email,password,qualificaton,role) values(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(insert);
            ps.setString(1, u.getName());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getPassword());
            ps.setString(4, u.getQualification());
            ps.setString(5, "user");

            Integer i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error : " + e.getMessage());
        }
        return f;
    }

    public User loginUser(String email, String password) {
        User user = null;
        try {
            String login = "select * from user where email=? and password=?";
            PreparedStatement ps = con.prepareStatement(login);
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet set = ps.executeQuery();
            while (set.next()) {
                user = new User();
                user.setId(set.getInt("id"));
                user.setEmail(set.getString("email"));
                user.setPassword(set.getString("password"));
                user.setQualification(set.getString("qualificaton"));
                user.setRole(set.getString("role"));
                user.setName(set.getString("name"));
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error : " + e.getMessage());
        }
        return user;
    }

    public boolean updateUser(User u) {
        boolean f = false;
        try {
            String insert = "update user set name=?, email=?,password=?,qualificaton=? where id =?";
            PreparedStatement ps = con.prepareStatement(insert);
            ps.setString(1, u.getName());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getPassword());
            ps.setString(4, u.getQualification());
            ps.setInt(5, u.getId());

            Integer i = ps.executeUpdate();
            if (i == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error : " + e.getMessage());
        }
        return f;
    }
}
