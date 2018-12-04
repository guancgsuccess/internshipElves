package com.internshipElves.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

@RequestMapping("/comLogin")
@Controller("comLoginController")
public class ComLoginController {

    @GetMapping("/logout")
    public ModelAndView comLogOut(HttpSession session){
        ModelAndView mav = new ModelAndView();
        session.removeAttribute("company");
        mav.setViewName("comLogin");
        return mav;
    }
}
