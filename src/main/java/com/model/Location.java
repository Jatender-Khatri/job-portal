/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.model;

/**
 *
 * @author MeGa
 */
public class Location {

    private Integer id;
    private String lName;

    public Location() {
    }

    public Location(Integer id, String lName) {
        this.id = id;
        this.lName = lName;
    }

    public Location(String lName) {
        this.lName = lName;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getlName() {
        return lName;
    }

    public void setlName(String lName) {
        this.lName = lName;
    }

    @Override
    public String toString() {
        return "Location{" + "id=" + id + ", lName=" + lName + '}';
    }

}
