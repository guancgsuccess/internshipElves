package com.internshipElves.controller;

import com.internshipElves.entity.ProExp;
import com.internshipElves.entity.Resume;
import com.internshipElves.entity.Student;
import com.internshipElves.service.ProExpService;
import com.internshipElves.service.ResumeService;
import com.internshipElves.service.StudentService;
import com.internshipElves.util.DateUtil;
import groovy.text.Template;
import org.apache.commons.lang.StringUtils;



import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.*;
import java.util.*;

@RestController
@RequestMapping("/resume")
public class PreviewResumeController {
    @Autowired
    private StudentService studentService;
    @Autowired
    private ResumeService resumeService;
    @Autowired
    private ProExpService proExpService;

    @RequestMapping("preview")
    public ModelAndView previewResume(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView (  );

        Student student = studentService.queryByStuId ( (Integer)request.getSession().getAttribute("stuId") );

        Resume resume= resumeService.queryByStuId ( (Integer)request.getSession().getAttribute("stuId") );
        ProExp proExp = proExpService.queryByResumeId ( resume.getResumeId () );

        Date date= student.getStuReadDate ();
        Date date2=student.getStuGrad ();
        Date date1 = student.getStuBirth ();
        String readDate="";
        String gradDate="";
        int age =0;
        if(date1!=null){
            age= DateUtil.computeBir ( date1,new Date (  ) );
        }

        if(date!=null){
            readDate =DateUtil.date2String ( date,"yyyy" );
        }

        if(date2!=null){
             gradDate=DateUtil.date2String ( date2,"yyyy" );
        }


         mav.addObject ( "student",student );
         mav.addObject ( "readDate" ,readDate);
         mav.addObject ( "gradDate" ,gradDate);
         mav.addObject ( "resume",resume );
         mav.addObject ( "age",age );
         mav.addObject ( "proExp",proExp );
        mav.setViewName ( "preview" );
        return mav;
    }



}
