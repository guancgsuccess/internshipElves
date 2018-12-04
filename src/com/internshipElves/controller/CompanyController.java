package com.internshipElves.controller;


import com.internshipElves.entity.ComLogin;
import com.internshipElves.entity.Company;
import com.internshipElves.service.ComLoginService;
import com.internshipElves.service.CompanyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@RequestMapping("/company")
@Controller
public class CompanyController {

    @Autowired
    private CompanyService companyService;
    @Autowired
    private ComLoginService comLoginService;

    /**
     *  企业验证注册邮箱格式、 邮箱注册
     * @param  comEmail
     * @param  comPwd
     * @return
     */
    @RequestMapping("/addByEmailAndPwd")

    public ModelAndView  registerByEmailAndPwd(String comEmail,String comPwd,HttpSession session){

        ModelAndView  mav= new ModelAndView();
        String emailRegex = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
        System.out.println(comEmail.matches(emailRegex));
        if (comEmail.matches(emailRegex)){
            companyService.registerByEmailAndPwd(comEmail,comPwd);
            Company company = companyService.loginByEmailAndPwd(comEmail, comPwd);
            session.setAttribute ( "company",company );
            mav.setViewName("index01");
        }else {
            mav.addObject("errorMsg","邮箱格式不正确");
            mav.setViewName("register2");
        }
        return  mav;
    }

    /**
     *  退出登录
     * @param request
     * @return
     */
    @RequestMapping("/loginOut")
    public ModelAndView loginOut(HttpServletRequest request) {
        request.getSession().removeAttribute("company");
        RedirectView view = new RedirectView("/index");
        ModelAndView mav = new ModelAndView();
        mav.setView(view);
        return mav;
    }

    /**
     *  企业登录
     * @param comName
     * @param comPwd
     * @param request
     * @return
     */
    @RequestMapping("/login")
    public  ModelAndView  login(String comName,String comPwd, HttpServletRequest request){
        System.out.println("登录名  ："+ comName+","+"密码 :" +comPwd);
        String emailRegex = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
        Company company =new Company();
        if (comName.matches(emailRegex)) {
            company = companyService.loginByEmailAndPwd(comName, comPwd);
        }else {
            System.out.println("邮箱不正确");
        }

        ModelAndView mav = new ModelAndView();
        if (company  ==null) {
            mav.addObject("errorMsy", "邮箱密码错误");
            mav.setViewName("login");
        }else {
            request.getSession().setAttribute("company",company);

            ComLogin comLogin = new ComLogin();
            comLogin.setComId(company.getComId());
            comLogin.setComLoginEmail(company.getComEmail());
            comLogin.setComLoginPwd(company.getComPwd());
            comLogin.setComLoginTime( new Date());
            comLogin.setComLoginStatus(1);

            comLoginService.insert(comLogin);
            HttpSession session = request.getSession ();
            session.setAttribute ( "company",company );


            mav.setViewName("myhome");
        }
        return mav;
    }
}





