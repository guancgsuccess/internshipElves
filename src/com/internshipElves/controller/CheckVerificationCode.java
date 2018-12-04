package com.internshipElves.controller;

import com.internshipElves.util.RegisterUtil;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.IOException;

@RequestMapping("/register")
@Controller
public class CheckVerificationCode {

    @RequestMapping("/checkTelCode")
    public void checkVerificationCode(String clientTelephone,HttpSession session) throws IOException {
        System.out.println("手机号:"+clientTelephone);
        //为了减少短信的使用数目，暂时用假数据
//        RegisterUtil.getRequest2(clientTelephone);
//        String verificationCode= RegisterUtil.codevalue.substring(13);
        String verificationCode = RegisterUtil.codevalue;
        session.setAttribute("verificationCode",verificationCode);
        Long registerTime=System.currentTimeMillis();
        session.setAttribute("setCodeTime",registerTime);
    }

}
