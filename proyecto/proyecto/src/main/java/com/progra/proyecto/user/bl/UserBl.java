package com.progra.proyecto.user.bl;

import java.util.List;


import com.progra.proyecto.user.da.UserRepository;
import com.progra.proyecto.user.dto.UserDto;
public class UserBl{

    private UserRepository userRep;

    public UserBl(UserRepository userRep) {
        this.userRep = userRep;
    }


    public List<UserDto> list() {
        return userRep.findAll();
    }

    public UserDto get(Long userid) {
        return userRep.findById(userid).orElse(null);
    }
    public UserDto getemail(String email) {
        return userRep.findByEmail(email).orElse(null);
    }

    public UserDto login(String email, String pasword) {
        return userRep.findByEmailAndPassword(email, pasword).orElse(null);
    }


    public UserDto add(UserDto user) {
        return userRep.save(user);
    }

    public void delete(Long user_id){
        userRep.deleteById(user_id);
    }


}