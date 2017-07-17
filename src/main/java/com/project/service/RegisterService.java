package com.project.service;

import com.project.dao.UserDao;
import com.project.model.User;

public class RegisterService {

    UserDao userdao= new UserDao();

    public void addUser(User user){

        userdao.addUser(user);
    }
}
