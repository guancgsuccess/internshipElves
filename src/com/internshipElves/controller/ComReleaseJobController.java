package com.internshipElves.controller;

import com.internshipElves.entity.*;
import com.internshipElves.service.ComReleaseJobService;
import com.internshipElves.service.DeliverResumeService;
import com.internshipElves.service.ResumeService;
import com.internshipElves.util.DateUtil;
import com.sun.deploy.net.HttpRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/releaseJob")
public class ComReleaseJobController {
    private int id;
    @Autowired
    private ComReleaseJobService comReleaseJobService;
    @Autowired
    private DeliverResumeService deliverRusumeService;
    @Autowired
    private ResumeService resumeService;

    @RequestMapping("queryall")
    //查询企业发布简历的信息
    public String queryAll(HttpServletRequest request) {
        List<ComReleaseJob> list = comReleaseJobService.queryAll();
        for (ComReleaseJob c : list) {
            request.getSession().setAttribute("c", c);
        }
        return "test";
    }

    //添加企业发布简历的记录
    @RequestMapping("insert")
    public String insert(ComReleaseJob comReleaseJob) {
        comReleaseJob.setComId(1);
        int row = comReleaseJobService.insert(comReleaseJob);
        return "test";
    }

    //根据id查询企业发布的简历信息
    @RequestMapping("queryByComReleaseJobId/id/{id}")
    public String queryByComReleaseJobId(@PathVariable String id, HttpServletRequest request) {
        // String id1= request.getParameter("id");
        int id2 = Integer.parseInt(id);
        ComReleaseJob comReleaseJob = comReleaseJobService.queryByComReleaseJobId(id2);
        String dateTime = DateUtil.date2String(comReleaseJob.getComReleaseJobTime(),"yyyy-MM-dd HH:mm");
        request.getSession().setAttribute("c", comReleaseJob);
        request.getSession().setAttribute("dateTime", dateTime);
        return "employInformation";
    }

    //投递简历判单该用户是否已经登录，若登录则添加记录到deliverResume表
//    @RequestMapping("resume")
//    public void login(DeliverResume deliverResume, HttpServletRequest request) {
//        Student s = (Student) request.getSession().getAttribute("s");
//        Resume resume1 = resumeService.queryByStuId(s.getStuId());
//
//        deliverResume.setDeliverResumeStatus(1);
//        deliverResume.setDeliverResumeTime(new Date());
//        deliverResume.setStuId(s.getStuId());
//        ComReleaseJob comReleaseJob = (ComReleaseJob) request.getSession().getAttribute("c");
//        deliverResume.setComId(comReleaseJob.getComId());
//        deliverResume.setResumeId(resume1.getResumeId());
//        Integer id = comReleaseJob.getComReleaseJobId();
//        String id1 = id.toString();
//        deliverResume.setDeliverPrepareA(id1);
//        DeliverResume deliverResume1 = deliverRusumeService.queryByPreparaA(deliverResume.getDeliverPrepareA());
//        deliverRusumeService.insert(deliverResume);
//
//    }

    @ResponseBody
    @RequestMapping("haveResume")
    public String login1(DeliverResume deliverResume, HttpServletRequest request) {
        Student s = (Student) request.getSession().getAttribute("s");

        if (s == null) {
            return "1";
        }
        Resume resume1 = resumeService.queryByStuId(s.getStuId());
        if (resume1 == null) {
            return "2";
        }
        deliverResume.setDeliverResumeStatus(1);
        deliverResume.setDeliverResumeTime(new Date());
        deliverResume.setStuId(s.getStuId());
        ComReleaseJob comReleaseJob = (ComReleaseJob) request.getSession().getAttribute("c");
        deliverResume.setComId(comReleaseJob.getComId());
        deliverResume.setResumeId(resume1.getResumeId());
        Integer id = comReleaseJob.getComReleaseJobId();
        String id1 = id.toString();
        deliverResume.setDeliverPrepareA(id1);
        DeliverResume deliverResume1 = deliverRusumeService.queryByPreparaA(deliverResume.getDeliverPrepareA(), deliverResume.getStuId());

        if (deliverResume1 == null) {
            deliverRusumeService.insert(deliverResume);
            return "3";
        } else {
            return "4";
        }


    }


    @RequestMapping("deleteJob")
    public String   deleteReleaseJob(HttpServletRequest request, ComReleaseJob comReleaseJob){

        Integer  rows = comReleaseJobService.deleteByComReleaseId(comReleaseJob.getComId());
        return  rows.toString();

    }

    /**
     *      查询 公司发布有效职位
     * @param
     * @param request     获得 session 对象
     * @return
     */
    @RequestMapping("getComReleaseJob")
    @ResponseBody
    public List<ComReleaseJob> getComReleaseJob( HttpServletRequest request,String comReleaseJobStatus){
        Company  company  = (Company)request.getSession().getAttribute("company");
        Integer status  = Integer.parseInt(comReleaseJobStatus);
        List<ComReleaseJob> comReleaseJobs = new ArrayList<>();
        comReleaseJobs =  comReleaseJobService.queryById(company.getComId(),status);

        return   comReleaseJobs;
    }

    @RequestMapping("lgoutComReleaseJob")
    @ResponseBody
    public Integer lgoutComReleaseJob(Integer comReleaseJobId ,Integer comReleaseJobStatus ){


        return   comReleaseJobService.updateById(comReleaseJobId,comReleaseJobStatus);
    }

}
