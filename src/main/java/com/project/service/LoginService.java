package com.project.service;

import com.project.dao.UserDao;
import com.project.model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LoginService {

    UserDao userdao=new UserDao();
    User user=null;
    public boolean validateUser(String username, String password, HttpServletRequest request){
        user=userdao.validateUser(username,password);
        if(user!=null){

            //newUser=userDao.findUser(username);
            HttpSession session=request.getSession();
            session.setAttribute("userSession",user);
            return true;

        }
        return false;
    }

}
