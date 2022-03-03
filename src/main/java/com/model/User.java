/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

/**
 *
 * @author MeGa
 */
public class User {

    private Integer id;
    private String name;
    private String email;
    private String password;
    private String qualification;
    private String role;

    public User() {
    }

    public User(Integer id, String name, String email, String password, String qualification, String role) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.qualification = qualification;
        this.role = role;
    }

    public User(String name, String email, String password, String qualification, String role) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.qualification = qualification;
        this.role = role;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getQualification() {
        return qualification;
    }

    public void setQualification(String qualification) {
        this.qualification = qualification;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    @Override
    public String toString() {
        return "User{" + "id=" + id + ", name=" + name + ", email=" + email + ", password=" + password + ", qualification=" + qualification + ", role=" + role + '}';
    }

}
