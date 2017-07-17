package com.project.controller;

import com.project.model.User;
import com.project.service.LoginService;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class LoginController {

    /*@RequestMapping(value="/",method = RequestMethod.GET)
    public ModelAndView getForm(){
        ModelAndView model=new ModelAndView("hometry");
        return model;
    }*/


    @ModelAttribute
    public void addString(Model model){

        model.addAttribute("headerMessage","LinkSharing");

    }
    @RequestMapping(value="/login",method= RequestMethod.POST)
    public ModelAndView login(@ModelAttribute User user){

        boolean flag=false;
        LoginService login= new LoginService();
        flag=login.validateUser(user.getUname(),user.getPassword());
        if(flag==false)
        {
            ModelAndView model_fail=new ModelAndView("index");
            return model_fail;
        }

        ModelAndView model_success=new ModelAndView("afterRegister");
        return model_success;


    }
}

