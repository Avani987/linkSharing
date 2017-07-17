package com.project.service;

import com.project.dao.UserDao;
import com.project.model.User;

public class LoginService {

    UserDao userdao=new UserDao();
    User user=null;
    public boolean validateUser(String username, String password){
        user=userdao.validateUser(username,password);
        if(user!=null){
            return true;
        }
        return false;
    }

}
