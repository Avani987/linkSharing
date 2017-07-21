package com.project.controller;

import com.project.model.User;
import com.project.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class forgotPasswordController {
    @RequestMapping(value = "/forgot",method = RequestMethod.GET)
    public ModelAndView changePassword(){
        ModelAndView modelAndView=new ModelAndView("forgotPassword");
        return modelAndView;
    }

    @RequestMapping(value = "/verifyEmail",method = RequestMethod.POST)
    public ModelAndView checkEmail(@ModelAttribute User user){
        String email= user.getEmail();
        ModelAndView validEmail=new ModelAndView("changePassword");
        ModelAndView invalidEmail=new ModelAndView("errorPassword");
        UserService userService=new UserService();
        boolean status=userService.emailCheck(email);

        if(status==true)
            return validEmail;
        else
            return invalidEmail;
    }

    @RequestMapping(value ="/passwordChange",method = RequestMethod.POST)
    public ModelAndView changePassword(@ModelAttribute User user){
        String email=user.getEmail();
        String password=user.getPassword();
        ModelAndView passwordchanged=new ModelAndView("passwordChanged");
        ModelAndView emailError=new ModelAndView("errorPassword");
        UserService userService=new UserService();
        boolean status=userService.changePassword(email,password);

        if(status==true)
            return passwordchanged;
        else
            return emailError;
    }
}