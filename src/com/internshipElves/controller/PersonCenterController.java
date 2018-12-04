package com.internshipElves.controller;

import com.internshipElves.entity.DeliverResume;
import com.internshipElves.entity.Resume;
import com.internshipElves.entity.Student;
import com.internshipElves.service.ResumeService;
import com.internshipElves.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
@RequestMapping("personCenter")
public class PersonCenterController {
    @Autowired
    private StudentService studentService;
    @Autowired
    private ResumeService resumeService;

    //判断是否登录，是则从首页个人中心跳到personCenter.jsp
    @RequestMapping("isLogin")
    public ModelAndView login(HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView mav = new ModelAndView();
        if (session.getAttribute("stuId") == null) {
            mav.setViewName("login");
            return mav;
        }
        Student s = (Student) request.getSession().getAttribute("s");
        Resume resume = resumeService.queryByStuId(s.getStuId());
        if (resume == null) {
            mav.addObject("tip", "您还没有简历哦");
            mav.setViewName("personCenter");
            return mav;
        } else {
            mav.addObject("s", studentService.queryById((Integer) session.getAttribute("stuId")));
            mav.setViewName("myResume");
        }
        return mav;

    }


    @RequestMapping("loginIn")
    public ModelAndView loginIn(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();
        HttpSession session = request.getSession();

        if (session.getAttribute("stuId") == null) {
            mav.setViewName("login");
            return mav;
        }else {
            mav.setViewName("personCenter");
        }

        return mav;
    }
}