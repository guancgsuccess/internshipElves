package com.internshipElves.service.impl;

import com.internshipElves.dao.ComReleaseJobDAO;
import com.internshipElves.entity.ComReleaseJob;
import com.internshipElves.entity.HotJob;
import com.internshipElves.service.ComReleaseJobService;
import com.internshipElves.util.PageModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("comReleaseJobService")
public class ComReleaseJobServiceImpl implements ComReleaseJobService {

    @Autowired
    private ComReleaseJobDAO comReleaseJobDAO;

    /**
     * 返回热门职业的集合（前6位）
     * @return 热门职业的集合
     */
    @Override
    public List<HotJob> getHotJob() {
        List<HotJob> hotJobs = comReleaseJobDAO.hotJob();
        System.out.println("hotJobsService="+hotJobs);
        return hotJobs;
    }

    /**
     * 返回最新职业的集和（前6位）
     * @return
     */
    @Override
    public List<HotJob> getNewJob() {
        List<HotJob> newJobs = comReleaseJobDAO.newJob();
        System.out.println("newJobs="+newJobs);
        return newJobs;
    }
    //查询企业发布简历的所有信息
    @Override
    public List<ComReleaseJob> queryAll() {
        List<ComReleaseJob> list = comReleaseJobDAO.queryAll();
        return list;
    }
    //添加企业发布的简历记录
    @Override
    public int insert(ComReleaseJob record) {
        int row = comReleaseJobDAO.insert(record);
        return  row;
    }
    //根据id查询企业发布的简历信息

    @Override
    public ComReleaseJob queryByComReleaseJobId(Integer id) {
        ComReleaseJob comReleaseJob = comReleaseJobDAO.selectByPrimaryKey(id);
        return  comReleaseJob;
    }


    @Override
    public List<ComReleaseJob> queryByJobName(String JobName) {
        return comReleaseJobDAO.queryByJobName ( JobName );
    }


    //分页
    @Override
    public Integer queryCount() {
        return comReleaseJobDAO.queryCount();
    }
    @Override
    public PageModel<ComReleaseJob> queryJobByPage(PageModel<ComReleaseJob> page) {
        List<ComReleaseJob> comReleaseJobList =   comReleaseJobDAO.queryJobByPage(page);
        page.setModelList(comReleaseJobList);
        return  page;

    }
    //按职位分页
    @Override
    public Integer queryCountByName(String comReleaseJobName,String comReleaseJobCity,String comReleaseJobSalaryLow,String comReleaseJobSalaryHigh,String comReleaseJobExp,String comReleaseJobRequir,
                                    String comReleaseJobProp) {
        return comReleaseJobDAO.queryCountByName ( comReleaseJobName ,comReleaseJobCity,comReleaseJobSalaryLow,comReleaseJobSalaryHigh,comReleaseJobExp,comReleaseJobRequir,comReleaseJobProp);
    }

    @Override
    public PageModel<ComReleaseJob> queryJobByPageAndName(PageModel<ComReleaseJob> page, String comReleaseJobName,String comReleaseJobCity,String comReleaseJobSalaryLow,String comReleaseJobSalaryHigh,String comReleaseJobExp,String comReleaseJobRequir,
                                                          String comReleaseJobProp) {
        List<ComReleaseJob> comReleaseJobList =   comReleaseJobDAO.queryJobByNameAndPage(page,comReleaseJobName,comReleaseJobCity,comReleaseJobSalaryLow,comReleaseJobSalaryHigh,comReleaseJobExp,comReleaseJobRequir,comReleaseJobProp);
        page.setModelList ( comReleaseJobList );
        return page;
    }

    @Override
    public ComReleaseJob queryByReleaseId(Integer comReleaseId) {
        return comReleaseJobDAO.queryByPrimaryKey ( comReleaseId );
    }

    /**
     *    根据公司 id   查询 发布简历的部分信息
     * @param comId
     * @return
     */
    @Override
    public List<ComReleaseJob> queryById(Integer comId,Integer comReleaseJobStatus) {
        return  comReleaseJobDAO.queryByKey(comId,comReleaseJobStatus);
    }

    @Override
    public Integer updateById(Integer comReleaseJobId , Integer  comReleaseJobStatus) {
        return comReleaseJobDAO.updateById(comReleaseJobId,comReleaseJobStatus);
    }

    /**
     *  根据发布职位信息id 删除当条信息
     * @param comReleaseId  公司发布职位信息
     * @return
     */
    @Override
    public Integer deleteByComReleaseId(Integer comReleaseId) {
        return comReleaseJobDAO.deleteByPrimaryKey(comReleaseId);
    }


}
