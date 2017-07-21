package com.project.service;

import com.project.model.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

public class LogoutService {

    public void logout(HttpServletRequest request){
        User user=(User)request.getSession().getAttribute("userSession");
        try{
            HttpSession session=request.getSession(false);
            if(session!=null) {
                user.setActive(false);
                session.invalidate();
            }
        }catch (Exception e){
            System.out.println(e);
        }
    }

}
