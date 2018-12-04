package com.internshipElves.controller;

import com.internshipElves.entity.*;
import com.internshipElves.service.ComMessageService;
import com.internshipElves.service.ComReleaseJobService;

import com.internshipElves.service.DeliverResumeService;
import com.internshipElves.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import java.util.*;

@RestController
@RequestMapping("/resume")
public class DeliverResumeController {
    @Autowired
    private DeliverResumeService deliverResumeService;

    @Autowired
    private ComReleaseJobService comReleaseJobService;

    @Autowired
    private ComMessageService comMessageService;

    @Autowired
    private StudentService studentService;

    /**
     * 简历记录
     * @param deliverResumeStatus
     * @param request
     * @return
     */
    @PostMapping("delivery")
    public List<DeliveryAndResume> deliveryResume(Integer deliverResumeStatus, HttpServletRequest request) {
        List<DeliveryAndResume> list = new ArrayList<> (  );
        //根据stuId查询简历状态的集合
        List<DeliverResume> deliverResumeList = deliverResumeService.queryByStuIdAndStatus ( (Integer)request.getSession().getAttribute("stuId"),deliverResumeStatus );
        for(DeliverResume deliverResume:deliverResumeList){
            Integer comId = deliverResume.getComId ();
            Integer  releaseId= Integer.parseInt ( deliverResume.getDeliverPrepareA () );
            ComMessage comMessage = comMessageService.queryByComId ( comId );
            ComReleaseJob comReleaseJob = comReleaseJobService.queryByReleaseId ( releaseId );
            DeliveryAndResume deliveryAndResume = new DeliveryAndResume ();
            deliveryAndResume.setComName ( comMessage.getComName () );
            deliveryAndResume.setComCity ( comReleaseJob.getComReleaseJobCity () );
            deliveryAndResume.setComSalaryLow ( comReleaseJob.getComReleaseJobSalaryLow () );
            deliveryAndResume.setComSalaryHigh (  comReleaseJob.getComReleaseJobSalaryHigh ());

            Integer status = deliverResume.getDeliverResumeStatus ();
            switch (status){
                case 1:deliveryAndResume.setDeliverResumeStatus ( "投递成功" );break;
                case 2:deliveryAndResume.setDeliverResumeStatus ( "被查看" );break;
                case 3:deliveryAndResume.setDeliverResumeStatus ( "通过初筛");break;
                case 4:deliveryAndResume.setDeliverResumeStatus ( "通知面试");break;
                case 5:deliveryAndResume.setDeliverResumeStatus ( "不合适");break;
                default:deliveryAndResume.setDeliverResumeStatus ( "投递失败");break;
            }
            deliveryAndResume.setDeliverResumeTime ( deliverResume.getDeliverResumeTime () );
            deliveryAndResume.setJobName ( comReleaseJob.getComReleaseJobName () );
            list.add ( deliveryAndResume );
        }
        return list;
    }

}
