package com.project.controller;

import com.project.model.User;
import com.project.service.LoginService;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@SessionAttributes("userSession")
public class LoginController {

    /*@RequestMapping(value="/",method = RequestMethod.GET)
    public ModelAndView getForm(){
        ModelAndView model=new ModelAndView("hometry");
        return model;
    }*/

    @RequestMapping(value="/login",method= RequestMethod.POST)
    public ModelAndView login(@ModelAttribute User user, HttpServletRequest request){

        boolean flag=false;
        LoginService login= new LoginService();
        flag=login.validateUser(user.getUname(),user.getPassword(),request);
        if(flag==false)
        {
            ModelAndView model_fail=new ModelAndView("index");
            return model_fail;
        }

        ModelAndView model_success=new ModelAndView("dashboard");
        User userSession=(User)request.getSession().getAttribute("userSession");
        model_success.addObject("username",userSession.getUname());
        model_success.addObject("firstname",userSession.getFname());
        model_success.addObject("lastname",userSession.getLname());
        return model_success;


    }
}

