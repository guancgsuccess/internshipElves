package com.internshipElves.controller;

import com.internshipElves.entity.ComCreateTeam;
import com.internshipElves.entity.Company;
import com.internshipElves.service.ComCreateTeamService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@RequestMapping("/comCreateTeam")
@Controller
public class ComCreateTeamController {

    @Autowired
    private ComCreateTeamService comCreateTeamService;

    /**
     *   添加创始团队信息
     * @param comCreateTeam   创始团队
     * @param request  当前用户id
     * @return  返回 添加行数
     */
    @PostMapping("/founder")
    @ResponseBody
    public String registerTeam(ComCreateTeam comCreateTeam, HttpServletRequest  request){
      //  ModelAndView mav= new ModelAndView("index06");
      Company company =(Company)request.getSession().getAttribute("company");
          comCreateTeam.setComId(company.getComId());
           Integer  rows=  comCreateTeamService.saveCreateTeam(comCreateTeam);
        System.out.println("rows   ="+ rows);
        return   rows.toString();
    }



}
