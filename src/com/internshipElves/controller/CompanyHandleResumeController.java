package com.internshipElves.controller;


import com.internshipElves.entity.*;
import com.internshipElves.service.ComMessageService;
import com.internshipElves.service.ComReleaseJobService;
import com.internshipElves.service.DeliverResumeService;
import com.internshipElves.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/company")
public class CompanyHandleResumeController {
    @Autowired
    private DeliverResumeService deliverResumeService;

    @Autowired
    private ComReleaseJobService comReleaseJobService;

    @Autowired
    private ComMessageService comMessageService;
    @Autowired
    private StudentService studentService;


    @PostMapping("loadResume")
    public List<DeliveryAndResume> loadResume(Integer deliverResumeStatus, HttpServletRequest request) {
        List<DeliveryAndResume> list = new ArrayList<> (  );
        Company company = (Company)request.getSession().getAttribute("company");
         Integer comId = company.getComId();
        List<DeliverResume> deliverResumeList = deliverResumeService.queryByComIdAndStatus ( comId,deliverResumeStatus );
        for(DeliverResume deliverResume:deliverResumeList){

             Integer stuId = deliverResume.getStuId ();

            Integer  releaseId= Integer.parseInt ( deliverResume.getDeliverPrepareA () );
            Student student = studentService.queryByStuId ( stuId );
            ComReleaseJob comReleaseJob = comReleaseJobService.queryByReleaseId ( releaseId );

            DeliveryAndResume deliveryAndResume = new DeliveryAndResume();
            deliveryAndResume.setStuName ( student.getStuName () );
            deliveryAndResume.setStuGender ( student.getStuGender ()==1?"男":"女" );
            deliveryAndResume.setStuDegree ( student.getStuDegree () );
            deliveryAndResume.setStuAddr ( student.getStuAddrCity () );
            deliveryAndResume.setStuSchool ( student.getStuSchool () );
            deliveryAndResume.setStuTel ( student.getStuTel () );
            deliveryAndResume.setStuEmail ( student.getStuEmail () );
            deliveryAndResume.setStuProfile ( student.getStuProfile () );
            deliveryAndResume.setDeliverResumeId ( deliverResume.getDeliverResumeId () );

            deliveryAndResume.setJobName ( comReleaseJob.getComReleaseJobName () );
            deliveryAndResume.setDeliverResumeTime ( deliverResume.getDeliverResumeTime () );

            list.add ( deliveryAndResume );

        }






        return list;
    }

@PostMapping("updateDResume")
    public void updateDResume(Integer deliverResumeStatus,Integer deliverResumeId){


        deliverResumeService.updateStatusById (deliverResumeStatus, deliverResumeId );

}
}
