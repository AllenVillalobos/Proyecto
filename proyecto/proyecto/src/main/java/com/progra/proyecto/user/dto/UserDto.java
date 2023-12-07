//paquete donde esta la clase
package com.progra.proyecto.user.dto;

import java.util.Date;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "userDB") 
public class UserDto {
  
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Id
    private int userid;
    private String last_name;
    private String name;
    private String email;
    private Date old;
    private String password;
    
    public int getUserid() {
        return userid;
    }
    public void setUserid(int userid) {
        this.userid = userid;
    }
    public String getlast_name() {
        return last_name;
    }
    public void setlast_name(String last_name) {
        this.last_name = last_name;
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
    public Date getOld() {
        return old;
    }
    public void setOld(Date old) {
        this.old = old;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }

   
}
