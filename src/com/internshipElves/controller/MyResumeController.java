package com.internshipElves.controller;

import com.internshipElves.entity.ProExp;
import com.internshipElves.entity.Resume;
import com.internshipElves.entity.Student;
import com.internshipElves.service.ProExpService;
import com.internshipElves.service.ResumeService;
import com.internshipElves.service.StudentService;
import com.internshipElves.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;


@RestController
@RequestMapping("/student")
public class MyResumeController {


    @Autowired
    private StudentService studentService;
    @Autowired
    private ResumeService resumeService;
    @Autowired
    private ProExpService proExpService;

    @RequestMapping("myResume")
    public ModelAndView previewResume(HttpServletRequest request) {
        ModelAndView mav = new ModelAndView();

        Student student = studentService.queryByStuId((Integer) request.getSession().getAttribute("stuId"));

        Resume resume = resumeService.queryByStuId((Integer) request.getSession().getAttribute("stuId"));
        ProExp proExp = proExpService.queryByResumeId(resume.getResumeId());

        Date date= student.getStuReadDate ();
        Date date2=student.getStuGrad ();
        Date date1 = student.getStuBirth ();
        Date date3 = student.getStuUpdateTime();
        String readDate="";
        String gradDate="";
        String updateDate="";
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
        if(date3!=null){
            updateDate = DateUtil.date2String(date3, "yyyy-MM-dd HH:mm");
        }

        mav.addObject("student", student);
        mav.addObject("readDate", readDate);
        mav.addObject("gradDate", gradDate);
        mav.addObject("updateDate", updateDate);
        mav.addObject("resume", resume);
        mav.addObject("age", age);
        mav.addObject("proExp", proExp);
        mav.setViewName("myResume");
        return mav;
    }
//修改学生基本信息
    @GetMapping("editStu")
    public Integer  editStu(HttpServletRequest request,Student student) {
       Integer row = studentService.updateByStuId ( (Integer)request.getSession().getAttribute("stuId") ,student );

      return row;
    }
    //修改期望工作
    @GetMapping("editResume")
    public Integer  editResume(HttpServletRequest request,Resume  resume) {

    Integer row = resumeService.updateByStuId ( (Integer)request.getSession().getAttribute("stuId") ,resume );

        return row;
    }
    //修改项目经验
    @GetMapping("editProExp")
    public Integer editProExp(HttpServletRequest request,ProExp proExp){
      Integer stuId =  (Integer)request.getSession().getAttribute("stuId");
        Resume resume = resumeService.queryByStuId ( stuId );

        return proExpService.updateByResumeId ( resume.getResumeId (),proExp );
    }
    //修改教育经历

    @GetMapping("editEducation")
    public Integer editEducation(HttpServletRequest request,Student student){
        Integer stuId =  (Integer)request.getSession().getAttribute("stuId");

        return studentService.updateEducationByStuId (stuId,student );
    }

//修改自我描述

    @GetMapping("editDescription")
    public Integer editDescription(HttpServletRequest request,Resume resume){
        Integer stuId =  (Integer)request.getSession().getAttribute("stuId");

        return resumeService.updateAByStuId ( stuId,resume );
    }


    /**
     * 判断是否登录
     * @return
     */
    @GetMapping("/isLogin")
    public ModelAndView isLogin(HttpServletRequest request) {
        HttpSession session = request.getSession();
        ModelAndView mav = new ModelAndView();
        if (session.getAttribute("s") == null) {
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
            mav = this.previewResume(request);

        }
        return mav;
    }
}