package com.project.controller;


import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project.model.User;
import com.project.service.RegisterService;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class RegistrationController {

   /* @RequestMapping(value="/",method = RequestMethod.GET)
    public ModelAndView getForm(){
        ModelAndView model=new ModelAndView("hometry");
        return model;
    }*/


    @RequestMapping(value="/register",method= RequestMethod.POST)
    public ModelAndView register(@ModelAttribute User user,@RequestParam CommonsMultipartFile image,HttpServletRequest request,HttpServletResponse response){

        byte[] photo=null;
        if(!image.isEmpty())
            photo=image.getBytes();
        RegisterService register= new RegisterService();
        register.addUser(user,photo);
        ModelAndView model=new ModelAndView("afterRegister");
        return model;
    }
}
