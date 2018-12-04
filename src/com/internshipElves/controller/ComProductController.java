package com.internshipElves.controller;

import com.internshipElves.entity.ComProduct;
import com.internshipElves.entity.Company;
import com.internshipElves.service.ComProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/comProduct")
public class ComProductController {

    @Autowired
    private ComProductService comProductService;

    /**
     *   添加公司产品信息
     * @param comProduct   公司产品
     * @param request   获取session对象
     * @return
     */
    @PostMapping("/index02")
    @ResponseBody
    public String  registerProduct(ComProduct comProduct, HttpServletRequest request){
     //   ModelAndView mav= new ModelAndView("/myhome");

        Company company =(Company)request.getSession().getAttribute("company");
                  comProduct.setComId(company.getComId());
        Integer  rows =comProductService.insertProduct(comProduct);
        System.out.println("返回添加行数" + rows);
        return   rows.toString();
    }




}
