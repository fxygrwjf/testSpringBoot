package com.baizhi.entity;

import java.io.Serializable;
import java.util.Date;

public class Admin implements Serializable {
    private String id;
    private String username;
    private String password;
    private Date registDate;
    private Integer status;

    public Admin() {
    }

    @Override
    public String toString() {
        return "Admin{" +
                "id='" + id + '\'' +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", registDate=" + registDate +
                ", status=" + status +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Date getRegistDate() {
        return registDate;
    }

    public void setRegistDate(Date registDate) {
        this.registDate = registDate;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Admin(String id, String username, String password, Date registDate, Integer status) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.registDate = registDate;
        this.status = status;
    }
}
