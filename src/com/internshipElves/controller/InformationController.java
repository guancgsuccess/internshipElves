package com.internshipElves.controller;

import com.internshipElves.entity.ProExp;
import com.internshipElves.entity.Resume;
import com.internshipElves.entity.Student;
import com.internshipElves.service.ProExpService;
import com.internshipElves.service.ResumeService;
import com.internshipElves.service.StudentService;
import com.internshipElves.util.EncipherConst;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("information")
public class InformationController {
    @Autowired
    private ProExpService proExpService;
    @Autowired
    private ResumeService resumeService;
    @Autowired
    private StudentService studentService;




    //判断是否有简历
    @RequestMapping("insert4")
    public ModelAndView insert4(Student student,HttpServletRequest request){
        Student s = (Student)request.getSession().getAttribute("s");
        ModelAndView mav = new ModelAndView();
        Resume resume = resumeService.queryByStuId(s.getStuId());
        if(resume ==null){

            mav.setViewName("personInformation1");
            return mav;
        }else{
            mav.addObject("tip1","您已") ;
            mav.setViewName("personCenter");
        }
        return mav;
    }


    //添加个人信息的记录
    @RequestMapping("insert1")
    public ModelAndView insert2(Student student,HttpServletRequest request){
        Student s = (Student)request.getSession().getAttribute("s");
        ModelAndView mav = new ModelAndView();
        Resume resume = resumeService.queryByStuId(s.getStuId());
        if(resume ==null){
            student.setStuTel(s.getStuTel());
            student.setStuId(s.getStuId());
            student.setStuPwd(s.getStuPwd());
            request.getSession().setAttribute("student1",student);
            int row = studentService.upDate(student);
            mav.setViewName("personInformation2");
            return mav;
        }else{
            mav.addObject("tip","简历只能制作一份哦") ;
            mav.setViewName("personCenter");
        }
        return mav;
    }

    //添加项目经验
    @RequestMapping("insert2")
    public String insert(ProExp record){
        int row = proExpService.insert(record);
        return "personInformation3";
    }


    //添加求职意向的记录
    @RequestMapping("insert3")
    public  String insert1(Resume resume, HttpServletRequest request){
        Student s = (Student)request.getSession().getAttribute("student1");
        resume.setStuId(s.getStuId());
        int row = resumeService.insert(resume);
        return "personCenter";
    }
    //注册的时候对密码进行加密
    @RequestMapping("register")
    public String insert3(Student student){
        String strPasswd = student.getStuPwd();
        String strEncodePasswd = new String("");
        int i;
        int n;
        char code;
        String des = new String();
        String strKey = new String();
        if((strPasswd == null) || strPasswd.length() == 0){
            strEncodePasswd = "";
            return strEncodePasswd;
        }
        strKey = EncipherConst.m_strKey1 + EncipherConst.m_strKey2 + EncipherConst.m_strKey3 + EncipherConst.m_strKey4 + EncipherConst.m_strKey5 + EncipherConst.m_strKey6;
        while(strPasswd.length() < 8){
            strPasswd = strPasswd + (char)1;
        }

        des = "";
        for(n = 0; n <= strPasswd.length() - 1; n++){
            while(true){
                code = (char)Math.rint(Math.random() * 100);
                while((code > 0) && (((code ^ strPasswd.charAt(n)) < 0) || ((code ^ strPasswd.charAt(n)) > 90))){
                    code = (char)((int)code - 1);
                }

                char mid = 0;
                int flag;
                flag = code ^ strPasswd.charAt(n);
                if(flag > 93){
                    mid = 0;
                } else{
                    mid = strKey.charAt(flag); //Asc(Mid(strKey, (code Xor Asc(Mid(strPasswd, n, 1))) + 1, 1))
                }
                if((code > 35) & (code < 122) & (code != 124) & (code != 39) & (code != 44) & (mid != 124) & (mid != 39) & (mid != 44)){
                    break;
                }
                //确保生成的字符是可见字符并且在SQL语句中有效
            }

            char temp = 0;
            temp = strKey.charAt(code ^ strPasswd.charAt(n));
            des = des + (char)code + temp;
        }

        strEncodePasswd = des;

        student.setStuPwd(strEncodePasswd);
        // int row = studentService.insert(student);
        return "test";
    }
    //登录的时候对密码进行解密
    @RequestMapping("login")
    public String insert4(Student student){
        String varCode = student.getStuPwd();
        int n;

        String des = new String();

        String strKey = new String();

        if((varCode == null) || (varCode.length() == 0)){

            return "";

        }

        strKey = EncipherConst.m_strKey1 + EncipherConst.m_strKey2 + EncipherConst.m_strKey3 + EncipherConst.m_strKey4 + EncipherConst.m_strKey5 + EncipherConst.m_strKey6;

        if(varCode.length() % 2 == 1){

            varCode = varCode + "?";

        }

        des = "";

        for(n = 0; n <= varCode.length() / 2 - 1; n++){

            char b;

            b = varCode.charAt(n * 2);

            int a;

            a = (int)strKey.indexOf(varCode.charAt(n * 2 + 1));

            des = des + (char)((int)b ^ a);

        }

        n = des.indexOf(1);

        if(n > 0){

            return des.substring(0, n);

        } else{
            return des;
        }

    }



}

