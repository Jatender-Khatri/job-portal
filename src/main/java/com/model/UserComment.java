/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

/**
 *
 * @author MeGa
 */
public class UserComment {

    private Integer id;
    private String username;
    private String comment;
    private String email;

    public UserComment() {
    }

    public UserComment(Integer id, String username, String comment, String email) {
        this.id = id;
        this.username = username;
        this.comment = comment;
        this.email = email;
    }

    public UserComment(String username, String comment, String email) {
        this.username = username;
        this.comment = comment;
        this.email = email;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "UserComment{" + "id=" + id + ", username=" + username + ", comment=" + comment + ", email=" + email + '}';
    }

}
