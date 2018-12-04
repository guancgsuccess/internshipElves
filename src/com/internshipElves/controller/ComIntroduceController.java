package com.internshipElves.controller;

import com.internshipElves.entity.ComIntroduce;
import com.internshipElves.entity.Company;
import com.internshipElves.service.ComIntroduceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/comIntroduce")
public class ComIntroduceController {

    @Autowired
    private ComIntroduceService   comIntroduceService;

    /**
     * 添加公司 介绍信息
     * @param comIntroduce   公司介绍信息
     * @param request    获取session对象
     * @return
     */
    @PostMapping("/index03")
    @ResponseBody
    public String  registerIntroduce(ComIntroduce comIntroduce  , HttpServletRequest  request){

        Company company  =  (Company)request.getSession().getAttribute("company");
        comIntroduce.setComId(company.getComId());
        Integer  rows  =comIntroduceService.insertComIntroduce(comIntroduce);

        return   rows.toString();
    }


}
