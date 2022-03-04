/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.model.UserComment;
import java.sql.Connection;
import java.sql.PreparedStatement;

/**
 *
 * @author MeGa
 */
public class UserCommentDao {

    private Connection con;

    public UserCommentDao(Connection con) {
        this.con = con;
    }

    public boolean insertUserComment(UserComment u) {
        boolean f = false;
        try {
            String query = "insert into users_problem_message(username, email, message) values(?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, u.getUsername());
            ps.setString(2, u.getEmail());
            ps.setString(3, u.getComment());
            Integer roll = ps.executeUpdate();

            if (roll == 1) {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error : " + e.getMessage());
        }
        return f;
    }
}
