package com.project.service;

import com.project.dao.UserDao;
import com.project.model.User;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    UserDao userDao=new UserDao();

    public boolean emailCheck(String email){
        return (userDao.authenticateEmail(email));
    }

    public boolean changePassword(String email,String password){

        boolean status=emailCheck(email);
        if (status==true)
            return (userDao.changePassword(email,password));
        else
            return false;
    }
}
