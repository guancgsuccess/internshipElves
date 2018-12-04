package com.internshipElves.controller;

import com.internshipElves.entity.ComMessage;
import com.internshipElves.entity.ComReleaseJob;
import com.internshipElves.entity.Company;
import com.internshipElves.service.ComMessageService;
import com.internshipElves.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.jws.WebParam;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

@RestController
@RequestMapping("comMessage")
public class ComMessageController {
    @Autowired
    ComMessageService comMessageService;



    //根据名称查询公司
    @RequestMapping("queryByName/name/{name}")
    public ModelAndView queryByName(@PathVariable String name){
        ModelAndView mav = new ModelAndView();
        ComMessage comMessage = comMessageService.queryByName(name);
        mav.addObject("c",comMessage);
        mav.setViewName("myhome");
        return mav;
    }




    //查询所有的公司列表
    @RequestMapping("all")
    public List<ComMessage> queryAll(ComMessage comMessage){
        List<ComMessage> listMessage = comMessageService.queryAll(comMessage.getComCity(),comMessage.getComDeplo(),comMessage.getComField());
        return listMessage;
    }


    //分页查询所有公司列表
    @RequestMapping("byPage")
    public PageModel<ComMessage> queryByPage(ComMessage comMessage ,Integer currentPageCode,HttpServletRequest request){

        if(comMessage.getComCity().equals("全国")){
            comMessage.setComCity("");
        }
        Integer totalRecord = comMessageService.queryAllCountByCondition(comMessage);
        PageModel pageModel = new PageModel<ComMessage>();
        if(currentPageCode==null ){
            pageModel.setCurrentPageCode(1);
        }else{
            pageModel.setCurrentPageCode(currentPageCode);
        }

        int totalPage = totalRecord % pageModel.getPageSize() == 0 ? totalRecord / pageModel.getPageSize() : totalRecord / pageModel.getPageSize() + 1;

        if(totalPage==0){
            pageModel.setTotalPages(totalPage+1);
        }else{
            pageModel.setTotalPages(totalPage);
        }


        Integer startRecord = (pageModel.getCurrentPageCode()-1) * pageModel.getPageSize();
        Integer endRecord = pageModel.getCurrentPageCode() * pageModel.getPageSize();
        pageModel.setStartRecord(startRecord);
        pageModel.setEndRecord(endRecord);

        List<ComMessage> listMessage = comMessageService.queryByPage(startRecord,pageModel.getPageSize(),comMessage.getComCity(),comMessage.getComDeplo(),comMessage.getComField());
        pageModel.setModelList(listMessage);

        return pageModel;
    }



}
