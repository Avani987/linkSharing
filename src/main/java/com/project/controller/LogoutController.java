package com.project.controller;

import com.project.service.LogoutService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
public class LogoutController {

    LogoutService logoutService=new LogoutService();
    @RequestMapping(value = "/logout",method = RequestMethod.GET)
    public ModelAndView logout(HttpServletRequest request){
        ModelAndView modelAndView=new ModelAndView("index");
        logoutService.logout(request);
        return  modelAndView;
    }
}
