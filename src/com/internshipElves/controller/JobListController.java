package com.internshipElves.controller;


import com.internshipElves.entity.ComCreateTeam;
import com.internshipElves.entity.ComMessage;
import com.internshipElves.entity.ComReleaseJob;
import com.internshipElves.entity.Job;
import com.internshipElves.service.ComCreateTeamService;
import com.internshipElves.service.ComMessageService;
import com.internshipElves.service.ComReleaseJobService;
import com.internshipElves.util.DateUtil;
import com.internshipElves.util.PageModel;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.*;

@RestController
@RequestMapping("/student")
public class JobListController {

    @Autowired
    private ComReleaseJobService comReleaseJobService;
    @Autowired
    private ComMessageService comMessageService;
    @Autowired
    private ComCreateTeamService comCreateTeamService;

    /**
     * 查询所有的职位信息
     * @param pagecode
     * @param comReleaseJob
     * @param request
     * @return
     */
    @GetMapping("searchJobByJobName")
    public PageModel<Job> selectAllJobByName(Integer pagecode, ComReleaseJob comReleaseJob,HttpServletRequest request) {
        PageModel<ComReleaseJob> page = new PageModel<ComReleaseJob> ();

        ComReleaseJob comReleaseJob1 = (ComReleaseJob)request.getSession ().getAttribute ( "comReleaseJob" );

        if(comReleaseJob1 != null){
            comReleaseJob.setComReleaseJobName (   comReleaseJob1.getComReleaseJobName ( ) );
            request.getSession ().removeAttribute ( "comReleaseJob" );
        }


        if (pagecode == null) {//首页
            page.setCurrentPageCode ( 1 );
        } else {
            page.setCurrentPageCode ( pagecode );
        }

        if (comReleaseJob.getComReleaseJobCity().equals ( "全国" ))
            comReleaseJob.setComReleaseJobCity("") ;
        if (comReleaseJob.getComReleaseJobName().equals ( "name" ))
            comReleaseJob.setComReleaseJobName("");
        if (comReleaseJob.getComReleaseJobSalaryLow()==-1)
            comReleaseJob.setComReleaseJobSalaryLow(0);
        if (comReleaseJob.getComReleaseJobSalaryHigh()==-1)
            comReleaseJob.setComReleaseJobSalaryHigh(1000);
        if (comReleaseJob.getComReleaseJobExp().equals ( "exp" )||comReleaseJob.getComReleaseJobExp().equals ( "不限" ))
            comReleaseJob.setComReleaseJobExp ("") ;
        if (comReleaseJob.getComReleaseJobRequir().equals ( "dg" )||comReleaseJob.getComReleaseJobRequir().equals ( "不限" ))
            comReleaseJob.setComReleaseJobRequir("");
        if (comReleaseJob.getComReleaseJobProp().equals ( "jp" ))
            comReleaseJob.setComReleaseJobProp ("");


        page.setTotalRecord ( comReleaseJobService.queryCountByName ( comReleaseJob.getComReleaseJobName(),
                comReleaseJob.getComReleaseJobCity() ,
                comReleaseJob.getComReleaseJobSalaryLow().toString () ,
                comReleaseJob.getComReleaseJobSalaryHigh().toString (),
                comReleaseJob.getComReleaseJobExp(),comReleaseJob.getComReleaseJobRequir(),
                comReleaseJob.getComReleaseJobProp() ));

        page.setTotalPages ( page.getTotalRecord () % page.getPageSize () == 0 ? page.getTotalRecord () / page.getPageSize () : page.getTotalRecord () / page.getPageSize () + 1 );
        page.setStartRecord ( (page.getCurrentPageCode () - 1) * page.getPageSize () );
        page = comReleaseJobService.queryJobByPageAndName ( page, comReleaseJob.getComReleaseJobName(),
                comReleaseJob.getComReleaseJobCity() ,
                comReleaseJob.getComReleaseJobSalaryLow().toString () ,
                comReleaseJob.getComReleaseJobSalaryHigh().toString (),
                comReleaseJob.getComReleaseJobExp(),comReleaseJob.getComReleaseJobRequir(),
                comReleaseJob.getComReleaseJobProp() );

        PageModel<Job> pageModel = new PageModel<> ();


        List<ComReleaseJob> comReleaseJobList = page.getModelList ();
        List<Job> list = new ArrayList<> ();
        for (ComReleaseJob comReleaseJob2 : comReleaseJobList) {
            ComMessage comMessage = comMessageService.queryByComId ( comReleaseJob2.getComId () );
            ComCreateTeam comCreateTeam = comCreateTeamService.queryByComId ( comReleaseJob2.getComId () );
            Job job = new Job ();
            job.setComReleaseJobId(comReleaseJob2.getComReleaseJobId());
            job.setComReleaseJobType ( comReleaseJob2.getComReleaseJobType () );
            job.setComReleaseJobName ( comReleaseJob2.getComReleaseJobName () );
            job.setComReleaseJobProp ( comReleaseJob2.getComReleaseJobProp () );
            job.setComReleaseJobSalaryLow ( comReleaseJob2.getComReleaseJobSalaryLow () );
            job.setComReleaseJobSalaryHigh ( comReleaseJob2.getComReleaseJobSalaryHigh () );
            job.setComReleaseJobCity ( comReleaseJob2.getComReleaseJobCity () );
            job.setComReleaseJobExp ( comReleaseJob2.getComReleaseJobExp () );
            job.setComReleaseJobRequir ( comReleaseJob2.getComReleaseJobRequir () );
            job.setComReleaseJobTemp ( comReleaseJob2.getComReleaseJobTemp () );
            job.setComReleaseJobTime ( comReleaseJob2.getComReleaseJobTime () );
            job.setComName ( comMessage.getComName () );
            job.setComField ( comMessage.getComField () );
            job.setComScale ( comMessage.getComScale () );
            job.setComDeplo ( comMessage.getComDeplo () );
            job.setComFounderName ( comCreateTeam.getComFounderName () );
            list.add ( job );
        }
        pageModel.setTotalRecord ( page.getTotalRecord () );
        pageModel.setTotalPages ( page.getTotalRecord () % page.getPageSize () == 0 ? page.getTotalRecord () / page.getPageSize () : page.getTotalRecord () / page.getPageSize () + 1 );
        pageModel.setStartRecord ( (page.getCurrentPageCode () - 1) * page.getPageSize () );
        pageModel.setCurrentPageCode ( page.getCurrentPageCode () );
        pageModel.setModelList ( list );

        return pageModel;


    }

    /**
     *  分页查询所有职位信息
     * @param page
     * @param comReleaseJob
     * @param request
     * @return
     */
   @GetMapping("searchJobByJobName/page/{page}")
    public PageModel<Job> selectAllJobByName2(@PathVariable Integer page,ComReleaseJob comReleaseJob,HttpServletRequest request) {

        return    selectAllJobByName(page,comReleaseJob ,request);
    }

    /**
     * 首页向list页面带参数跳转
     * @param comReleaseJob
     * @param request
     */
    @GetMapping("returnToList")
    public void returnToList(ComReleaseJob comReleaseJob,HttpServletRequest request) {

        HttpSession session = request.getSession ();
        session.setAttribute ( "comReleaseJob",comReleaseJob );


    }

}
