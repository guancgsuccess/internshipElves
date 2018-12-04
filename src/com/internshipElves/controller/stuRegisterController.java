package com.internshipElves.controller;

import com.internshipElves.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@RequestMapping("/stuRegister")
@Controller
public class stuRegisterController {

    @Autowired
    private StudentService studentService;

    /**
     * 注册验证
     * @param stuPhone 学生端注册手机号
     * @param stuPwd 学生端注册密码
     * @param stuIdentifyingCode 学生端短信验证码
     * @param session session对象（存放生成短信验证码）
     * @return 返回json格式的对象，“0”表示用户注册成功，“1”表示用户手机号码已存在，“2”表示用户短信验证码错误
     */
    @PostMapping("/register")
    @ResponseBody
    public String stuRegister(String stuPhone, String stuPwd, String stuIdentifyingCode, HttpSession session){

        System.out.println("stuPhone="+stuPhone+" stuPwd="+stuPwd+" stuIdentifyingCod="+stuIdentifyingCode);
        System.out.println("verificationCode="+session.getAttribute("verificationCode"));
        if(stuIdentifyingCode.equals(session.getAttribute("verificationCode"))){
            String stuTel = studentService.isRegisterTel(stuPhone);
            if(stuTel == null || stuTel == ""){
                int rows = studentService.registerByPhoneAndPwd(stuPhone,stuPwd);
                System.out.println("rows="+rows);
                return "0";
            }else{
                return "1";
            }
        }
        return "2";
    }
}
