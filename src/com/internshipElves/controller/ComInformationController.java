package com.internshipElves.controller;


import com.internshipElves.entity.*;
import com.internshipElves.service.ComCreateTeamService;
import com.internshipElves.service.ComIntroduceService;
import com.internshipElves.service.ComMessageService;
import com.internshipElves.service.ComProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;


@RestController
@RequestMapping("/ComInformation")
     public class ComInformationController {

    @Autowired
    private ComMessageService comMessageService;
    @Autowired
    private ComProductService  comProductService;
    @Autowired
    private ComIntroduceService comIntroduceService;
    @Autowired
    private ComCreateTeamService comCreateTeamService;


    /**
     *  查询公司页面公司名称信息
     * @param request  获取session对象
     * @return
     */
    @RequestMapping("ComInformationMessage")

    public ComMessage getAllMessage(HttpServletRequest request){

        Company  company =  (Company) request.getSession().getAttribute("company");
        //当前基本信息
        ComMessage comMessage = comMessageService.queryComMessage( company.getComId());
        System.out.println("comMessage  公司名称信息="+comMessage);

        return comMessage;
    }


    /**
     *  查询公司页面公司地址网址等信息
     * @param request  获取session对象
     * @return
     */
    @RequestMapping("ComInformationMessage2")
    public ComMessage getAllMessage2(HttpServletRequest request){

        Company  company =  (Company) request.getSession().getAttribute("company");

        //当前基本信息
        ComMessage comMessage = comMessageService.queryComMessage( company.getComId());
        System.out.println("comMessage 公司地址网址等信息 ="+comMessage);

        return comMessage;
    }
    /**
     * 修改公司页面公司地址网址等信息
     * @param request
     * @param
     * @param
     * @return
     */
    @PostMapping("saveComMessage2")
    public  ComMessage  saveComMessage2(HttpServletRequest request,ComMessage comMessage){
        Company  company =  (Company) request.getSession().getAttribute("company");
        System.out.println(comMessage.getComName()+"----------------------");
        comMessage.setComId(company.getComId());
        comMessageService.updateByComId2(comMessage);
        ComMessage  comMessage2=   comMessageService.queryComMessage(company.getComId());

        return comMessage2;
    }

    /**
     *  查询公司   阶段信息
     * @param request  获取session对象
     * @return
     */
    @RequestMapping("ComInformationMessage3")
    public  ComMessage getAllMessage3(HttpServletRequest request){

        Company company= (Company)request.getSession().getAttribute("company");
        ComMessage comMessage =comMessageService.queryComMessage(company.getComId()) ;
        System.out.println("comMessage 阶段信息 ="+comMessage);
        return  comMessage;
    }

    /**
     *    修改公司   目前阶段
     * @param request  获取session对象
     * @param comMessage
     * @return
     */
    @PostMapping("saveComMessage3")
    public   ComMessage  saveComMessage3(HttpServletRequest request,ComMessage  comMessage){
        Company  company  =  (Company)request.getSession().getAttribute("company");
        System.out.println(comMessage.getComName()+"*********************");
        comMessage.setComId(company.getComId());
        comMessageService.updateByComId3(comMessage);
        ComMessage comMessage3 = comMessageService.queryComMessage(company.getComId());
        return  comMessage3;
    }

    /**
     *   查询公司产品信息
     * @param request   获取session对象
     * @param comProduct  公司产品
     * @return
     */
    @RequestMapping("saveComProduct")
    public ComProduct saveComProduct(HttpServletRequest request,ComProduct comProduct){
        Company company =(Company)request.getSession().getAttribute("company");

        ComProduct  comProduct1 = comProductService.queryComProduct(company.getComId());
        System.out.println("..........."+comProduct1);
        return  comProduct1;
    }
    /**
     *  查询公司信息
     * @param comIntroduce   公司信息
     * @param request   获取session对象
     * @return
     */
    @RequestMapping("saveComIntroduce")
    public ComIntroduce saveComIntroduce(ComIntroduce comIntroduce, HttpServletRequest request){
        Company  company  = (Company) request.getSession().getAttribute("company");
        ComIntroduce  comIntroduce1 =comIntroduceService.queryComIntroduce(company.getComId());
        System.out.println(" 公司介绍 comIntroduce1  = "+comIntroduce1);
        return  comIntroduce1;
    }

    /**
     *  查询创始人信息
     * @param comCreateTeam
     * @param request
     * @return
     */
    @RequestMapping("saveComCreateTeam")
    public ComCreateTeam saveComCreateTeam(ComCreateTeam comCreateTeam,HttpServletRequest request){

        Company company = (Company) request.getSession().getAttribute("company");
        ComCreateTeam comCreateTeam1 =comCreateTeamService.queryComCreateTeam(company.getComId());
        System.out.println("公司创始人信息 comCreateTeam ="+comCreateTeam1 );
        return  comCreateTeam1;
    }
}
