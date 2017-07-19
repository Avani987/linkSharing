package com.project.model;

import org.springframework.orm.hibernate3.support.BlobByteArrayType;

import java.io.Serializable;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.persistence.*;

@Entity
@Table(name="User")
public class User implements Serializable {

    @Id @GeneratedValue
    private Long id;
    private String fname;
    private String lname;
    private String uname;
    private String email;
    private String password;
    Boolean admin;
    Boolean active;
    @Temporal(TemporalType.DATE)
    Date dateCreated;
    //byte[] photo;

    public Boolean getActive() {
        return active;
    }

    public void setActive(Boolean active) {
        this.active = active;
    }

    //DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");

    public User(String fname, String lname, String uname, String email, String password) {
        this.fname = fname;
        this.lname = lname;
        this.uname = uname;
        this.email = email;
        this.password = password;
        this.admin = false;
        this.active = false;
        this.dateCreated = /*dateFormat.format(date)*/new Date() ;
    }


    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
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


    public User() {
    }



}
