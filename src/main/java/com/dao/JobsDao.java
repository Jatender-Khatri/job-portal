/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.model.Jobs;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author MeGa
 */
public class JobsDao {

    private Connection con;

    public JobsDao(Connection con) {
        this.con = con;
    }

    public boolean addJobs(Jobs j) {
        boolean f = false;
        try {
            String insert = "insert into jobs(title, description, category, status, location) values(?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(insert);
            ps.setString(1, j.getTitle());
            ps.setString(2, j.getDescription());
            ps.setString(3, j.getCategory());
            ps.setString(4, j.getStatus());
            ps.setString(5, j.getLocation());

            Integer roll = ps.executeUpdate();
            if (roll == 1) {
                f = true;
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
            e.printStackTrace();
        }
        return f;
    }

    public List<Jobs> getAllJobs() {
        List<Jobs> list = new ArrayList<>();
        try {
            String sql = "select * from jobs order by id desc";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet set = ps.executeQuery();
            while (set.next()) {
                Jobs j = new Jobs();
                j.setCategory(set.getString("category"));
                j.setDescription(set.getString("description"));
                j.setId(set.getInt("id"));
                j.setLocation(set.getString("location"));
                j.setPdate(set.getTimestamp("pdate") + "");
                j.setStatus(set.getString("status"));
                j.setTitle(set.getString("title"));
                list.add(j);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error : " + e.getMessage());
        }
        return list;
    }

    public Jobs getJobById(Integer id) {
        Jobs j = new Jobs();
        try {
            String sql = "select * from jobs where id = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, id);
            ResultSet set = ps.executeQuery();
            while (set.next()) {

                j.setCategory(set.getString("category"));
                j.setDescription(set.getString("description"));
                j.setId(set.getInt("id"));
                j.setLocation(set.getString("location"));
                j.setPdate(set.getTimestamp("pdate") + "");
                j.setStatus(set.getString("status"));
                j.setTitle(set.getString("title"));

            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error : " + e.getMessage());
        }
        return j;
    }
    public boolean updateJob(Jobs j)
    {
         boolean f = false;
        try {
            String insert = "update jobs set title=?, description=?, category=?, status=?, location=? where id = ?";
            PreparedStatement ps = con.prepareStatement(insert);
            ps.setString(1, j.getTitle());
            ps.setString(2, j.getDescription());
            ps.setString(3, j.getCategory());
            ps.setString(4, j.getStatus());
            ps.setString(5, j.getLocation());
            ps.setInt(6, j.getId());
            Integer roll = ps.executeUpdate();
            if (roll == 1) {
                f = true;
            }
        } catch (Exception e) {
            System.out.println("Error : " + e.getMessage());
            e.printStackTrace();
        }
        return f;
    }
    public boolean deleteJobs(Integer id)
    {
        boolean f = false;
        try {
            String delete = "delete from jobs where id =?";
            PreparedStatement ps = con.prepareStatement(delete);
            ps.setInt(1, id);
            Integer roll = ps.executeUpdate();
            if(roll==1)
            {
                f = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("Error : " + e.getMessage());
        }
        return f;
    }
}
