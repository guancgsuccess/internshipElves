package com.internshipElves.controller;

import com.internshipElves.entity.Student;
import com.internshipElves.entity.StudentLogin;
import com.internshipElves.service.StudentLoginService;
import com.internshipElves.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@RequestMapping("/stuLogin")
@Controller("stuLoginController")
public class StuLoginController {

    @Autowired
    private StudentLoginService studentLoginService;

    @Autowired
    private StudentService studentService;

    /**
     * 处理登录验证
     *
     * @param stuPhoneMail 手机号或邮箱
     * @param stuPwd       密码
     * @param imgCode      图片验证码
     * @return "0"表示传入的不是手机号和邮箱的正确格式，“1”表示用户验证码错误,"2"表示用户名和密码错误，"3"表示请求登录成功
     */
    @ResponseBody
    @PostMapping("/login")
    public String validateLogon(String stuPhoneMail, String stuPwd, String imgCode, HttpServletRequest request) {

        System.out.println("stuName=" + stuPhoneMail + "stuPwd=" + stuPwd + "imgCode=" + imgCode);
        //验证是否是邮箱
        String emailRegex = "^\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
        //验证是否是手机号
        String telnoRegex = "^[1][34578]\\d{9}$";
        //学生对象
        Student student = null;

        //图形验证码的验证（不区分大小写）
        if (imgCode.equalsIgnoreCase(request.getSession().getAttribute("validation_code").toString())) {

            //判断是手机号码还是邮箱
            if (stuPhoneMail.matches(telnoRegex)) {
                student = studentLoginService.LoginByPhoneAndPwd(stuPhoneMail, stuPwd);
            } else if (stuPhoneMail.matches(emailRegex))
                student = studentLoginService.LoginByEmailAndPwd(stuPhoneMail, stuPwd);
            else
                return "0";
            if (student == null)
                return "2";
            else {
                //在session中存储用户信息，便于后面的需求
                request.getSession().setAttribute("stuId", student.getStuId());
                request.getSession().setAttribute("stuName", student.getStuName());
                request.getSession().setAttribute("stuPhoneMail", stuPhoneMail);
                request.getSession ().setAttribute ( "s",student);

                //把登录信息添加登录表
                StudentLogin login = new StudentLogin();
                login.setStuId(student.getStuId());
                if (stuPhoneMail.matches(telnoRegex)) {
                    login.setStuLoginTel(stuPhoneMail);
                } else {
                    login.setStuLoginEmail(stuPhoneMail);
                }
                login.setStuLoginPwd(stuPwd);
                login.setStuLoginTime(new Date(System.currentTimeMillis()));
                login.setStuLoginStatus(1);
                studentLoginService.insetLogin(login);

                return "3";
            }
        }
        return "1";
    }

    /**
     * 登录退出
     * @param session session对象
     * @return 首页
     */
    @RequestMapping("/logout")
    public ModelAndView logout(HttpSession session) {
        ModelAndView mav = new ModelAndView();
        session.removeAttribute("stuId");
        session.removeAttribute("stuName");
        session.removeAttribute("stuPhoneMail");
        mav.setViewName("index");
        return mav;
    }

    /**
     * 找回密码
     * @param getPassTel 学生端手机号
     * @param getPassVeri 学生端短信验证码
     * @param session session对象
     * @return json数据,"0"表示手机号已注册，“1”手机号未注册，“2”短信验证码输入错误
     */
    @PostMapping("/getPass")
    @ResponseBody
    public String getPass(String getPassTel,String getPassVeri,HttpSession session){
        System.out.println("getPassTel="+getPassTel+" getPassVeri="+getPassVeri);
        String stuPhone = studentService.isRegisterTel(getPassTel);
        if(getPassVeri.equals(session.getAttribute("verificationCode"))){
            if(stuPhone != null && stuPhone != ""){
                session.setAttribute("getPassTel",getPassTel);
                return "0";
            }else{
                return "1";
            }
        }
        return "2";
    }

    /**
     * 重置密码
     * @param passport 新密码
     * @param session session对象
     * @return json数据，“0"没有执行上一步的手机号和短信验证码的验证，“1”重置失败，“2”重置成功
     */
    @PostMapping("/reg")
    @ResponseBody
    public String reg(String passport,HttpSession session){
        String stuTel = (String)session.getAttribute("getPassTel");
        if(stuTel == null || stuTel == ""){
            return "0";
        }else {
            Integer rows = studentService.passwordPort(passport,stuTel);
            System.out.println("rows ="+rows);
            if(rows == 0){
                return "1";
            }else{
                session.removeAttribute("getPassTel");
                return "2";
            }
        }
    }
}
