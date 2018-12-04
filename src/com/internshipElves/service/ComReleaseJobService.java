package com.internshipElves.service;

import com.internshipElves.entity.ComReleaseJob;
import com.internshipElves.entity.DeliverResume;
import com.internshipElves.entity.HotJob;
import com.internshipElves.util.PageModel;

import java.util.List;

public interface ComReleaseJobService {

    /**
     * 返回热门职业的集合(按照薪水取其前6位）
     * @return 热门职业的集合
     */
   public List<HotJob> getHotJob();

    /**
     * 返回最新职业的集合（取其前6位）
     * @return 最新职业的集合
     */
    public List<HotJob> getNewJob();

    //查询企业发布职位的所有信息
    public List<ComReleaseJob> queryAll();

    //添加企业发布的职位记录
    public int insert(ComReleaseJob record);
    //根据id查询企业发布的职位信息
    public ComReleaseJob queryByComReleaseJobId(Integer id);



    List<ComReleaseJob> queryByJobName(String JobName);


    //分页查询
    Integer queryCount();
    PageModel<ComReleaseJob> queryJobByPage(PageModel<ComReleaseJob> page);


    //按职位分页查询
    Integer queryCountByName(String comReleaseJobName,String comReleaseJobCity,String comReleaseJobSalaryLow,String comReleaseJobSalaryHigh,String comReleaseJobExp,String comReleaseJobRequir,
                             String comReleaseJobProp);
    PageModel<ComReleaseJob> queryJobByPageAndName(PageModel<ComReleaseJob> page,String comReleaseJobName,String comReleaseJobCity,
                                                   String comReleaseJobSalaryLow,String comReleaseJobSalaryHigh,String comReleaseJobExp,String comReleaseJobRequir,
                                                   String comReleaseJobProp);


    //根据主键com_release_id查询
    ComReleaseJob queryByReleaseId(Integer comReleaseId);

  /**
   *  根据公司发布职位信息id  删除当条职位信息
   * @param comReleaseId  公司发布职位信息
   * @return   受影响行数
   */
  Integer deleteByComReleaseId(Integer comReleaseId);

  /**
   * 根据公司发布职位id   查询 发布简历的部分信息
   * @param comId
   * @return
   */
  List<ComReleaseJob>  queryById(Integer  comId,Integer comReleaseJobStatus);


 //根据id修改
 Integer updateById(Integer comReleaseJobId , Integer  comReleaseJobStatus);




}
