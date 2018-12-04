package com.internshipElves.controller;

import com.internshipElves.entity.HotJob;
import com.internshipElves.service.ComReleaseJobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import javax.servlet.http.HttpSession;
import java.util.List;

@RequestMapping("/homePage")
@Controller("handleHomePage")

public class HandleHomePage {

    @Autowired
    private ComReleaseJobService comReleaseJobService;

    /**
     * 返回热门职业（按薪水排序前12位）
     * @return json的数据 热门职业的集合
     */
    @GetMapping("/hotJobs")
    @ResponseBody
    public List<HotJob> lookupHotJobs(HttpSession session){
        List<HotJob> hotJobs = comReleaseJobService.getHotJob();
        System.out.println("hotJobs="+hotJobs);
        if(hotJobs != null){
            return hotJobs;
        }
        return null;
    }

    /**
     * 返回最新职业的集合（按时间顺序排序）
     * @param session
     * @return json数据
     */
    @GetMapping("/newJobs")
    @ResponseBody
    public List<HotJob> lookupNewJobs(HttpSession session){
        List<HotJob> newJobs = comReleaseJobService.getNewJob();
        System.out.println("newJobs="+newJobs);
        return newJobs;
    }
}
